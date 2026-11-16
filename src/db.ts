/** Acceso a D1 con una caché en memoria por isolate (el catálogo cambia poco). */

export interface Env {
	DB: D1Database;
	MEDIA: R2Bucket;
	ASSETS: Fetcher;
	SITE_URL: string;
	ADMIN_PASSWORD: string;
	ADMIN_SECRET: string;
}

export interface Categoria {
	id: number;
	nombre: string; // ej. "Avicola"
	slug: string; // categoria_url, ej. "aves"
	animal: string; // nombre visible, ej. "Aves"
	descripcion: string | null; // texto SEO (meta description y subtítulo del catálogo), editable en el panel
}

export interface Producto {
	id: number;
	nombre: string;
	slug: string;
	sku: string | null;
	presentacion: string | null;
	foto: string | null; // ruta relativa en R2, ej. productos/xxx.webp
	categorias: Categoria[];
	resumen: string; // primera parte de la ficha (texto plano) para tarjetas, meta y buscador
	actualizado: string | null;
}

export interface Ficha {
	codigo: string;
	titulos: string;
	descs: string;
	withtables: string;
	tables: string | null;
}

export interface Catalogo {
	categorias: Categoria[];
	productos: Producto[];
}

/** Orden de especies en el diseño (home, aside, footer). Las no listadas van al final. */
export const ORDEN_CATEGORIAS = [
	'aves',
	'caballos',
	'perros-y-gatos',
	'cerdos',
	'vacas',
	'ovejas-y-cabras',
	'abejas',
	'peces',
	'higiene'
];

let cache: { valor: Catalogo; expira: number } | null = null;
const TTL_MS = 60_000;

/** Borra la caché de este isolate tras un cambio desde el panel (los demás expiran en 60 s). */
export function invalidarCache(): void {
	cache = null;
}

export async function getCatalogo(env: Env): Promise<Catalogo> {
	if (cache && cache.expira > Date.now()) return cache.valor;

	const [cats, prods, fotos, rel, fichas] = await env.DB.batch([
		env.DB.prepare(
			`SELECT categoria_id id, categoria_nombre nombre, categoria_url slug, categoria_animal animal, categoria_descripcion descripcion
			 FROM categorias WHERE categoria_estado = 'habilitada'`
		),
		env.DB.prepare(
			`SELECT producto_id id, producto_nombre nombre, producto_url slug, producto_sku sku,
			        producto_presentacion_envases presentacion, updated_at actualizado
			 FROM productos WHERE producto_estado = 'habilitado' AND producto_url IS NOT NULL
			 ORDER BY producto_nombre`
		),
		env.DB.prepare(`SELECT producto_id, imagen FROM productos_fotos ORDER BY orden`),
		env.DB.prepare(`SELECT producto_id, categoria_id FROM productos_categorias`),
		env.DB.prepare(`SELECT codigo, substr(descs, 1, 700) descs FROM ficha`)
	]);

	const categorias = ordenarCategorias(cats.results as unknown as Categoria[]);
	const porId = new Map(categorias.map((c) => [c.id, c]));

	const fotoDe = new Map<number, string>();
	for (const f of fotos.results as { producto_id: number; imagen: string }[]) {
		if (!fotoDe.has(f.producto_id)) fotoDe.set(f.producto_id, f.imagen);
	}
	const catsDe = new Map<number, Categoria[]>();
	for (const r of rel.results as { producto_id: number; categoria_id: number }[]) {
		const c = porId.get(r.categoria_id);
		if (!c) continue;
		if (!catsDe.has(r.producto_id)) catsDe.set(r.producto_id, []);
		catsDe.get(r.producto_id)!.push(c);
	}
	const resumenDe = new Map<string, string>();
	for (const f of fichas.results as { codigo: string; descs: string }[]) {
		resumenDe.set(normalizarCodigo(f.codigo), textoPlano(f.descs.split('|')[0]));
	}

	const productos: Producto[] = (prods.results as unknown as Omit<Producto, 'foto' | 'categorias' | 'resumen'>[]).map(
		(p) => ({
			...p,
			nombre: nombreBonito(p.nombre),
			foto: fotoDe.get(p.id) ?? null,
			categorias: ordenarCategorias(catsDe.get(p.id) ?? []),
			resumen: (p.sku && resumenDe.get(normalizarCodigo(p.sku))) || ''
		})
	);

	cache = { valor: { categorias, productos }, expira: Date.now() + TTL_MS };
	return cache.valor;
}

export async function getFicha(env: Env, sku: string | null): Promise<Ficha | null> {
	if (!sku) return null;
	const f = await env.DB.prepare(`SELECT codigo, titulos, descs, withtables, tables FROM ficha WHERE codigo = ?`)
		.bind(sku.trim())
		.first<Ficha>();
	if (f) return f;
	// Tolerar diferencias de espacios en el código (ej. "QP - 213" vs "QP-213")
	const todas = await env.DB.prepare(`SELECT codigo, titulos, descs, withtables, tables FROM ficha`).all<Ficha>();
	const n = normalizarCodigo(sku);
	return todas.results.find((x) => normalizarCodigo(x.codigo) === n) ?? null;
}

export function ordenarCategorias<T extends { slug: string }>(cats: T[]): T[] {
	const pos = (s: string) => {
		const i = ORDEN_CATEGORIAS.indexOf(s);
		return i < 0 ? 999 : i;
	};
	return [...cats].sort((a, b) => pos(a.slug) - pos(b.slug) || a.slug.localeCompare(b.slug));
}

export function normalizarCodigo(c: string): string {
	return c.replace(/\s+/g, '').toUpperCase();
}

export function textoPlano(html: string): string {
	return html
		.replace(/<br\s*\/?>/gi, ' ')
		.replace(/<[^>]+>/g, '')
		.replace(/&nbsp;/g, ' ')
		.replace(/&amp;/g, '&')
		.replace(/\s+/g, ' ')
		.trim();
}

/** Normaliza para búsquedas: sin acentos, minúsculas (igual que el JS del diseño). */
export function normalizar(v: string): string {
	return v
		.normalize('NFD')
		.replace(/[̀-ͯ]/g, '')
		.toLowerCase()
		.trim();
}

const PALABRAS_MINUSCULAS = new Set(['de', 'del', 'la', 'el', 'y', 'con', 'para', 'en', 'al', 'los', 'las']);
/** Siglas que se conservan en mayúsculas; además, cualquier palabra con dígitos (B12, D3, P4) y las de una letra (L, B). */
const SIGLAS = new Set(['QP', 'ADE', 'HCL', 'USP', 'EC', 'DL', 'BHT', 'BHA', 'UI', 'NPN', 'ATP']);

/** "RED EGGS PLUS" -> "Red Eggs Plus"; conserva siglas (QP, ADE, B12) y conectores en minúscula. */
export function nombreBonito(nombre: string): string {
	return nombre
		.trim()
		.replace(/\s+/g, ' ')
		.split(' ')
		.map((palabra, i) => {
			const may = palabra.toUpperCase();
			if (SIGLAS.has(may) || /\d/.test(palabra) || /^[A-Z]$/.test(palabra) || /^[^A-Za-zÀ-ÿ]+$/.test(palabra)) return palabra;
			const minus = palabra.toLowerCase();
			if (i > 0 && PALABRAS_MINUSCULAS.has(minus)) return minus;
			return minus.charAt(0).toUpperCase() + minus.slice(1);
		})
		.join(' ');
}
