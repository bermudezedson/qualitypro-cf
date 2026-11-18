/** Panel de administración: productos (datos, categorías, fotos, ficha técnica) y categorías. */
import { Hono } from 'hono';
import type { Env } from '../db';
import { invalidarCache, normalizarCodigo } from '../db';
import { parsearFicha, type Seccion } from '../ficha';
import { cerrarSesion, crearSesion, requiereSesion, sesionValida, validarPassword } from './auth';
import { CLAVES, getAjuste, porDefecto, setAjuste, type Archivo } from '../archivos';
import { AJUSTES_CORREO, AUTORESPUESTA_DEFECTO, CORREO_DEFECTO, REMITENTE_DEFECTO } from '../formularios';
import {
	layoutAdmin,
	vistaCategorias,
	vistaFormCategoria,
	vistaFormProducto,
	vistaArchivos,
	vistaInicio,
	vistaLead,
	vistaLeads,
	vistaLogin,
	vistaProductos,
	type Aviso,
	type FilaCategoria,
	type FilaLead,
	type FilaProducto
} from './views';

export const admin = new Hono<{ Bindings: Env }>();

admin.use('*', async (c, next) => {
	c.header('Cache-Control', 'no-store');
	c.header('X-Robots-Tag', 'noindex');
	await next();
});

// ---------------------------------------------------------------- sesión
admin.get('/login', async (c) => {
	if (await sesionValida(c)) return c.redirect('/admin');
	return c.html(vistaLogin(null, c.req.query('next') ?? '/admin'));
});
admin.post('/login', async (c) => {
	const body = await c.req.parseBody();
	const next = typeof body.next === 'string' && body.next.startsWith('/admin') ? body.next : '/admin';
	if (await validarPassword(c.env, String(body.password ?? ''))) {
		await crearSesion(c);
		return c.redirect(next);
	}
	return c.html(vistaLogin('Contraseña incorrecta.', next), 401);
});
admin.post('/logout', (c) => {
	cerrarSesion(c);
	return c.redirect('/admin/login');
});

admin.use('*', requiereSesion);

// ---------------------------------------------------------------- utilidades
function aviso(c: { req: { query: (k: string) => string | undefined } }): Aviso | null {
	const ok = c.req.query('ok');
	const error = c.req.query('error');
	if (ok) return { tipo: 'ok', texto: ok };
	if (error) return { tipo: 'error', texto: error };
	return null;
}
const conAviso = (ruta: string, tipo: 'ok' | 'error', texto: string) => `${ruta}${ruta.includes('?') ? '&' : '?'}${tipo}=${encodeURIComponent(texto)}`;

function slugify(s: string): string {
	return s
		.normalize('NFD')
		.replace(/[̀-ͯ]/g, '')
		.toLowerCase()
		.replace(/[^a-z0-9]+/g, '-')
		.replace(/^-+|-+$/g, '')
		.slice(0, 150);
}

async function slugUnico(env: Env, tabla: 'productos' | 'categorias', columna: string, base: string, idActual?: number, idCol = 'producto_id'): Promise<string> {
	let slug = base || 'item';
	for (let i = 2; i < 100; i++) {
		const fila = await env.DB.prepare(`SELECT ${idCol} id FROM ${tabla} WHERE ${columna} = ?`).bind(slug).first<{ id: number }>();
		if (!fila || fila.id === idActual) return slug;
		slug = `${base}-${i}`;
	}
	return `${base}-${Date.now()}`;
}

async function usuarioPorDefecto(env: Env): Promise<number> {
	const u = await env.DB.prepare('SELECT MIN(id) id FROM users').first<{ id: number | null }>();
	return u?.id ?? 1;
}

const ESTADOS_PRODUCTO = ['habilitado', 'deshabilitado', 'eliminado'];
const ESTADOS_CATEGORIA = ['habilitada', 'deshabilitada', 'eliminada'];

function str(v: unknown, max = 255): string {
	return String(v ?? '')
		.trim()
		.slice(0, max);
}
function lista(v: unknown): string[] {
	return Array.isArray(v) ? v.map(String) : v === undefined || v === null || v === '' ? [] : [String(v)];
}

/** Secciones del formulario -> formato de la tabla `ficha` (titulos|…, descs|…, withtables|…, tables JSON). */
function serializarFicha(titulos: string[], htmls: string[], tablas: string[]) {
	const t: string[] = [];
	const d: string[] = [];
	const w: string[] = [];
	const tb: string[][] = [];
	titulos.forEach((titulo, i) => {
		const tit = str(titulo, 80).toUpperCase().replace(/\|/g, '/');
		const html = String(htmls[i] ?? '')
			.replace(/\|/g, '/')
			.trim();
		const filas = String(tablas[i] ?? '')
			.split(/\r?\n/)
			.map((l) => l.trim())
			.filter(Boolean)
			.map((l) => {
				const [a, ...b] = l.split('|');
				return `${a.trim()}|${b.join('/').trim()}`;
			});
		if (!tit || (!html.replace(/<[^>]+>|&nbsp;|\s/g, '') && !filas.length)) return;
		t.push(tit);
		d.push(html);
		w.push(filas.length ? 'true' : 'false');
		tb.push(filas);
	});
	return { titulos: t.join('|'), descs: d.join('|'), withtables: w.join('|'), tables: JSON.stringify(tb), vacia: t.length === 0 };
}

async function fichaPorSku(env: Env, sku: string | null): Promise<{ id: number; codigo: string; secciones: Seccion[] } | null> {
	if (!sku) return null;
	const todas = await env.DB.prepare('SELECT id, codigo, titulos, descs, withtables, tables FROM ficha').all<{
		id: number;
		codigo: string;
		titulos: string;
		descs: string;
		withtables: string;
		tables: string | null;
	}>();
	const n = normalizarCodigo(sku);
	const f = todas.results.find((x) => normalizarCodigo(x.codigo) === n);
	return f ? { id: f.id, codigo: f.codigo, secciones: parsearFicha(f) } : null;
}

// ---------------------------------------------------------------- inicio
admin.get('/', async (c) => {
	const n = await c.env.DB.prepare(
		`SELECT (SELECT COUNT(*) FROM productos WHERE producto_estado <> 'eliminado') productos,
		        (SELECT COUNT(*) FROM productos WHERE producto_estado = 'habilitado') habilitados,
		        (SELECT COUNT(*) FROM productos p WHERE producto_estado <> 'eliminado' AND EXISTS (SELECT 1 FROM productos_fotos f WHERE f.producto_id = p.producto_id)) conFoto,
		        (SELECT COUNT(*) FROM productos p WHERE producto_estado <> 'eliminado' AND EXISTS (SELECT 1 FROM ficha f WHERE REPLACE(UPPER(f.codigo),' ','') = REPLACE(UPPER(p.producto_sku),' ',''))) conFicha,
		        (SELECT COUNT(*) FROM categorias WHERE categoria_estado = 'habilitada') categorias,
		        (SELECT COUNT(*) FROM leads WHERE estado = 'nuevo') leadsNuevos`
	).first<{ productos: number; habilitados: number; conFoto: number; conFicha: number; categorias: number; leadsNuevos: number }>();
	return c.html(layoutAdmin('Inicio', vistaInicio(n!), { activo: 'inicio', aviso: aviso(c) }));
});

// ---------------------------------------------------------------- productos
admin.get('/productos', async (c) => {
	const q = str(c.req.query('q'), 80);
	const estado = str(c.req.query('estado'), 20);
	const foto = str(c.req.query('foto'), 3);
	const ficha = str(c.req.query('ficha'), 3);
	const cond: string[] = [];
	const args: unknown[] = [];
	if (q) {
		cond.push('(nombre LIKE ? OR sku LIKE ? OR slug LIKE ?)');
		args.push(`%${q}%`, `%${q}%`, `%${q}%`);
	}
	if (ESTADOS_PRODUCTO.includes(estado)) {
		cond.push('estado = ?');
		args.push(estado);
	} else cond.push("estado <> 'eliminado'");
	if (foto === 'con') cond.push('foto IS NOT NULL');
	if (foto === 'sin') cond.push('foto IS NULL');
	if (ficha === 'con') cond.push('tieneFicha = 1');
	if (ficha === 'sin') cond.push('tieneFicha = 0');
	const sql = `SELECT * FROM (
		SELECT p.producto_id id, p.producto_nombre nombre, p.producto_url slug, p.producto_sku sku, p.producto_estado estado,
		  (SELECT imagen FROM productos_fotos f WHERE f.producto_id = p.producto_id ORDER BY orden LIMIT 1) foto,
		  (SELECT GROUP_CONCAT(c.categoria_animal, ', ') FROM productos_categorias pc JOIN categorias c ON c.categoria_id = pc.categoria_id WHERE pc.producto_id = p.producto_id) categorias,
		  EXISTS (SELECT 1 FROM ficha f WHERE REPLACE(UPPER(f.codigo),' ','') = REPLACE(UPPER(p.producto_sku),' ','')) tieneFicha
		FROM productos p) ${cond.length ? 'WHERE ' + cond.join(' AND ') : ''} ORDER BY nombre LIMIT 500`;
	const r = await c.env.DB.prepare(sql)
		.bind(...args)
		.all<Omit<FilaProducto, 'tieneFicha'> & { tieneFicha: number }>();
	const filas: FilaProducto[] = r.results.map((x) => ({ ...x, categorias: x.categorias ?? '', tieneFicha: !!x.tieneFicha }));
	return c.html(layoutAdmin('Productos', vistaProductos(filas, { q, estado, foto, ficha }, filas.length), { activo: 'productos', aviso: aviso(c) }));
});

async function categoriasAdmin(env: Env) {
	const r = await env.DB.prepare(
		`SELECT categoria_id id, categoria_nombre nombre, categoria_animal animal FROM categorias WHERE categoria_estado <> 'eliminada' ORDER BY categoria_animal`
	).all<{ id: number; nombre: string; animal: string }>();
	return r.results;
}

admin.get('/productos/nuevo', async (c) =>
	c.html(
		layoutAdmin(
			'Nuevo producto',
			vistaFormProducto(
				{ nombre: '', slug: '', sku: '', presentacion: '', estado: 'habilitado', categoriasIds: [], fotos: [], secciones: [], codigoFicha: null },
				await categoriasAdmin(c.env)
			),
			{ activo: 'productos' }
		)
	)
);

async function leerFormProducto(c: { req: { parseBody: (o?: { all: boolean }) => Promise<Record<string, unknown>> } }) {
	const b = await c.req.parseBody({ all: true });
	return {
		nombre: str(b.nombre),
		slug: slugify(str(b.slug, 150)) || slugify(str(b.nombre)),
		sku: str(b.sku, 100) || null,
		presentacion: str(b.presentacion) || null,
		estado: ESTADOS_PRODUCTO.includes(str(b.estado)) ? str(b.estado) : 'habilitado',
		categorias: lista(b.categorias)
			.map(Number)
			.filter((n) => Number.isInteger(n) && n > 0),
		ficha: serializarFicha(lista(b.ficha_titulo), lista(b.ficha_html), lista(b.ficha_tabla)),
		fichaEnviada: lista(b.ficha_titulo).length > 0
	};
}

async function guardarCategoriasProducto(env: Env, productoId: number, ids: number[]) {
	const stmts = [env.DB.prepare('DELETE FROM productos_categorias WHERE producto_id = ?').bind(productoId)];
	for (const id of ids) {
		stmts.push(
			env.DB.prepare(
				`INSERT INTO productos_categorias (producto_id, categoria_id, created_at, updated_at)
				 SELECT ?, categoria_id, datetime('now'), datetime('now') FROM categorias WHERE categoria_id = ?`
			).bind(productoId, id)
		);
	}
	await env.DB.batch(stmts);
}

async function guardarFicha(env: Env, nombre: string, sku: string | null, ficha: ReturnType<typeof serializarFicha>) {
	if (!sku) return;
	const existente = await fichaPorSku(env, sku);
	if (ficha.vacia) {
		if (existente) await env.DB.prepare('DELETE FROM ficha WHERE id = ?').bind(existente.id).run();
		return;
	}
	if (existente) {
		await env.DB.prepare('UPDATE ficha SET nombre = ?, codigo = ?, titulos = ?, descs = ?, withtables = ?, tables = ? WHERE id = ?')
			.bind(nombre, sku, ficha.titulos, ficha.descs, ficha.withtables, ficha.tables, existente.id)
			.run();
	} else {
		await env.DB.prepare('INSERT INTO ficha (nombre, codigo, titulos, descs, withtables, tables, estilo) VALUES (?, ?, ?, ?, ?, ?, NULL)')
			.bind(nombre, sku, ficha.titulos, ficha.descs, ficha.withtables, ficha.tables)
			.run();
	}
}

admin.post('/productos/nuevo', async (c) => {
	const f = await leerFormProducto(c);
	if (!f.nombre) return c.redirect(conAviso('/admin/productos/nuevo', 'error', 'El nombre es obligatorio.'));
	const slug = await slugUnico(c.env, 'productos', 'producto_url', f.slug);
	const r = await c.env.DB.prepare(
		`INSERT INTO productos (usuario_id, producto_nombre, producto_url, producto_sku, producto_presentacion_envases, producto_estado, created_at, updated_at)
		 VALUES (?, ?, ?, ?, ?, ?, datetime('now'), datetime('now'))`
	)
		.bind(await usuarioPorDefecto(c.env), f.nombre, slug, f.sku, f.presentacion, f.estado)
		.run();
	const id = Number(r.meta.last_row_id);
	await guardarCategoriasProducto(c.env, id, f.categorias);
	if (f.fichaEnviada) await guardarFicha(c.env, f.nombre, f.sku, f.ficha);
	invalidarCache();
	return c.redirect(conAviso(`/admin/productos/${id}`, 'ok', 'Producto creado. Ahora puedes subir fotos.'));
});

async function cargarProducto(env: Env, id: number) {
	const p = await env.DB.prepare(
		`SELECT producto_id id, producto_nombre nombre, producto_url slug, producto_sku sku, producto_presentacion_envases presentacion, producto_estado estado
		 FROM productos WHERE producto_id = ?`
	)
		.bind(id)
		.first<{ id: number; nombre: string; slug: string; sku: string | null; presentacion: string | null; estado: string }>();
	if (!p) return null;
	const [cats, fotos] = await env.DB.batch([
		env.DB.prepare('SELECT categoria_id FROM productos_categorias WHERE producto_id = ?').bind(id),
		env.DB.prepare('SELECT id, imagen, orden FROM productos_fotos WHERE producto_id = ? ORDER BY orden, id').bind(id)
	]);
	const ficha = await fichaPorSku(env, p.sku);
	return {
		...p,
		categoriasIds: (cats.results as { categoria_id: number }[]).map((x) => x.categoria_id),
		fotos: fotos.results as { id: number; imagen: string; orden: number }[],
		secciones: ficha?.secciones ?? [],
		codigoFicha: ficha?.codigo ?? null
	};
}

admin.get('/productos/:id', async (c) => {
	const p = await cargarProducto(c.env, Number(c.req.param('id')));
	if (!p) return c.notFound();
	return c.html(layoutAdmin(p.nombre, vistaFormProducto(p, await categoriasAdmin(c.env)), { activo: 'productos', aviso: aviso(c) }));
});

admin.post('/productos/:id', async (c) => {
	const id = Number(c.req.param('id'));
	const actual = await c.env.DB.prepare('SELECT producto_id FROM productos WHERE producto_id = ?').bind(id).first();
	if (!actual) return c.notFound();
	const f = await leerFormProducto(c);
	if (!f.nombre) return c.redirect(conAviso(`/admin/productos/${id}`, 'error', 'El nombre es obligatorio.'));
	const slug = await slugUnico(c.env, 'productos', 'producto_url', f.slug, id);
	await c.env.DB.prepare(
		`UPDATE productos SET producto_nombre = ?, producto_url = ?, producto_sku = ?, producto_presentacion_envases = ?, producto_estado = ?, updated_at = datetime('now')
		 WHERE producto_id = ?`
	)
		.bind(f.nombre, slug, f.sku, f.presentacion, f.estado, id)
		.run();
	await guardarCategoriasProducto(c.env, id, f.categorias);
	if (f.fichaEnviada) await guardarFicha(c.env, f.nombre, f.sku, f.ficha);
	invalidarCache();
	return c.redirect(conAviso(`/admin/productos/${id}`, 'ok', 'Cambios guardados.'));
});

admin.post('/productos/:id/eliminar', async (c) => {
	const id = Number(c.req.param('id'));
	await c.env.DB.prepare("UPDATE productos SET producto_estado = 'eliminado', updated_at = datetime('now') WHERE producto_id = ?").bind(id).run();
	invalidarCache();
	return c.redirect(conAviso('/admin/productos', 'ok', 'Producto marcado como eliminado.'));
});

// ---- fotos (R2)
const MAX_FOTO = 5 * 1024 * 1024;
const EXT: Record<string, string> = { 'image/jpeg': 'jpg', 'image/png': 'png', 'image/webp': 'webp' };

admin.post('/productos/:id/fotos', async (c) => {
	const id = Number(c.req.param('id'));
	const p = await c.env.DB.prepare('SELECT producto_url slug FROM productos WHERE producto_id = ?').bind(id).first<{ slug: string }>();
	if (!p) return c.notFound();
	const body = await c.req.parseBody({ all: true });
	const archivos = (Array.isArray(body.fotos) ? body.fotos : [body.fotos]).filter((x): x is File => x instanceof File && x.size > 0);
	if (!archivos.length) return c.redirect(conAviso(`/admin/productos/${id}`, 'error', 'No se recibió ninguna imagen.'));
	const max = await c.env.DB.prepare('SELECT COALESCE(MAX(orden), 0) m FROM productos_fotos WHERE producto_id = ?').bind(id).first<{ m: number }>();
	let orden = (max?.m ?? 0) + 1;
	let subidas = 0;
	for (const archivo of archivos) {
		const ext = EXT[archivo.type];
		if (!ext || archivo.size > MAX_FOTO) continue;
		const clave = `productos/${p.slug}-${Date.now().toString(36)}${subidas ? '-' + subidas : ''}.${ext}`;
		await c.env.MEDIA.put(clave, archivo.stream(), { httpMetadata: { contentType: archivo.type, cacheControl: 'public, max-age=31536000' } });
		await c.env.DB.prepare("INSERT INTO productos_fotos (producto_id, imagen, orden, created_at, updated_at) VALUES (?, ?, ?, datetime('now'), datetime('now'))")
			.bind(id, clave, orden++)
			.run();
		subidas++;
	}
	invalidarCache();
	return c.redirect(
		conAviso(`/admin/productos/${id}`, subidas ? 'ok' : 'error', subidas ? `${subidas} foto(s) subida(s).` : 'Formato no permitido o archivo mayor a 5 MB.')
	);
});

admin.post('/productos/:id/fotos/:fid/eliminar', async (c) => {
	const id = Number(c.req.param('id'));
	const fid = Number(c.req.param('fid'));
	const f = await c.env.DB.prepare('SELECT imagen FROM productos_fotos WHERE id = ? AND producto_id = ?').bind(fid, id).first<{ imagen: string }>();
	if (f) {
		await c.env.DB.prepare('DELETE FROM productos_fotos WHERE id = ?').bind(fid).run();
		const otros = await c.env.DB.prepare('SELECT COUNT(*) n FROM productos_fotos WHERE imagen = ?').bind(f.imagen).first<{ n: number }>();
		if (!otros?.n) await c.env.MEDIA.delete(f.imagen);
		invalidarCache();
	}
	return c.redirect(conAviso(`/admin/productos/${id}`, 'ok', 'Foto eliminada.'));
});

admin.post('/productos/:id/fotos/:fid/subir', async (c) => {
	const id = Number(c.req.param('id'));
	const fid = Number(c.req.param('fid'));
	const fotos = (await c.env.DB.prepare('SELECT id FROM productos_fotos WHERE producto_id = ? ORDER BY orden, id').bind(id).all<{ id: number }>()).results;
	const i = fotos.findIndex((x) => x.id === fid);
	if (i > 0) [fotos[i - 1], fotos[i]] = [fotos[i], fotos[i - 1]];
	await c.env.DB.batch(fotos.map((x, k) => c.env.DB.prepare('UPDATE productos_fotos SET orden = ? WHERE id = ?').bind(k + 1, x.id)));
	invalidarCache();
	return c.redirect(`/admin/productos/${id}`);
});

// ---------------------------------------------------------------- categorías
admin.get('/categorias', async (c) => {
	const r = await c.env.DB.prepare(
		`SELECT c.categoria_id id, c.categoria_nombre nombre, c.categoria_url slug, c.categoria_animal animal, c.categoria_estado estado,
		  (SELECT COUNT(*) FROM productos_categorias pc JOIN productos p ON p.producto_id = pc.producto_id WHERE pc.categoria_id = c.categoria_id AND p.producto_estado = 'habilitado') productos
		 FROM categorias c WHERE c.categoria_estado <> 'eliminada' ORDER BY c.categoria_animal`
	).all<FilaCategoria>();
	return c.html(layoutAdmin('Categorías', vistaCategorias(r.results), { activo: 'categorias', aviso: aviso(c) }));
});

admin.get('/categorias/nueva', (c) =>
	c.html(layoutAdmin('Nueva categoría', vistaFormCategoria({ nombre: '', slug: '', animal: '', descripcion: '', estado: 'habilitada' }), { activo: 'categorias' }))
);

async function leerFormCategoria(c: { req: { parseBody: () => Promise<Record<string, unknown>> } }) {
	const b = await c.req.parseBody();
	return {
		animal: str(b.animal, 100),
		nombre: str(b.nombre),
		slug: slugify(str(b.slug, 150)) || slugify(str(b.animal, 100)),
		descripcion: str(b.descripcion, 5000) || null,
		estado: ESTADOS_CATEGORIA.includes(str(b.estado)) ? str(b.estado) : 'habilitada'
	};
}

admin.post('/categorias/nueva', async (c) => {
	const f = await leerFormCategoria(c);
	if (!f.animal || !f.nombre) return c.redirect(conAviso('/admin/categorias/nueva', 'error', 'Nombre visible y nombre de línea son obligatorios.'));
	const slug = await slugUnico(c.env, 'categorias', 'categoria_url', f.slug, undefined, 'categoria_id');
	await c.env.DB.prepare(
		`INSERT INTO categorias (usuario_id, categoria_nombre, categoria_url, categoria_animal, categoria_descripcion, categoria_estado, created_at, updated_at)
		 VALUES (?, ?, ?, ?, ?, ?, datetime('now'), datetime('now'))`
	)
		.bind(await usuarioPorDefecto(c.env), f.nombre, slug, f.animal, f.descripcion, f.estado)
		.run();
	invalidarCache();
	return c.redirect(conAviso('/admin/categorias', 'ok', 'Categoría creada.'));
});

admin.get('/categorias/:id', async (c) => {
	const cat = await c.env.DB.prepare(
		'SELECT categoria_id id, categoria_nombre nombre, categoria_url slug, categoria_animal animal, categoria_descripcion descripcion, categoria_estado estado FROM categorias WHERE categoria_id = ?'
	)
		.bind(Number(c.req.param('id')))
		.first<{ id: number; nombre: string; slug: string; animal: string; descripcion: string | null; estado: string }>();
	if (!cat) return c.notFound();
	return c.html(layoutAdmin(cat.animal, vistaFormCategoria(cat), { activo: 'categorias', aviso: aviso(c) }));
});

admin.post('/categorias/:id', async (c) => {
	const id = Number(c.req.param('id'));
	const f = await leerFormCategoria(c);
	if (!f.animal || !f.nombre) return c.redirect(conAviso(`/admin/categorias/${id}`, 'error', 'Nombre visible y nombre de línea son obligatorios.'));
	const slug = await slugUnico(c.env, 'categorias', 'categoria_url', f.slug, id, 'categoria_id');
	await c.env.DB.prepare(
		`UPDATE categorias SET categoria_nombre = ?, categoria_url = ?, categoria_animal = ?, categoria_descripcion = ?, categoria_estado = ?, updated_at = datetime('now') WHERE categoria_id = ?`
	)
		.bind(f.nombre, slug, f.animal, f.descripcion, f.estado, id)
		.run();
	invalidarCache();
	return c.redirect(conAviso(`/admin/categorias/${id}`, 'ok', 'Cambios guardados.'));
});

// ---------------------------------------------------------------- archivos SEO (robots.txt, llms.txt)
async function archivosEditables(env: Env) {
	const out = [];
	for (const nombre of CLAVES) {
		const propio = await getAjuste(env, nombre);
		out.push({ nombre, contenido: propio ?? (await porDefecto(env, nombre)), personalizado: propio !== null, url: `/${nombre}` });
	}
	return out;
}
admin.get('/archivos', async (c) => c.html(layoutAdmin('Archivos SEO', vistaArchivos(await archivosEditables(c.env)), { activo: 'archivos', aviso: aviso(c) })));
admin.post('/archivos', async (c) => {
	const b = await c.req.parseBody();
	const nombre = String(b.archivo ?? '') as Archivo;
	if (!(CLAVES as readonly string[]).includes(nombre)) return c.notFound();
	if (b.accion === 'restaurar') {
		await setAjuste(c.env, nombre, null);
		return c.redirect(conAviso('/admin/archivos', 'ok', `${nombre} restaurado al valor por defecto.`));
	}
	const contenido = String(b.contenido ?? '').replace(/\r\n/g, '\n').trim();
	if (!contenido) return c.redirect(conAviso('/admin/archivos', 'error', 'El contenido no puede quedar vacío; usa "Restaurar valor por defecto".'));
	if (contenido.length > 200_000) return c.redirect(conAviso('/admin/archivos', 'error', 'El contenido supera los 200 000 caracteres.'));
	await setAjuste(c.env, nombre, contenido);
	return c.redirect(conAviso('/admin/archivos', 'ok', `${nombre} guardado.`));
});

// ---------------------------------------------------------------- contactos (leads)
async function consultarLeads(env: Env, f: { tipo: string; estado: string; q: string }, limite = 500) {
	const cond: string[] = [];
	const args: unknown[] = [];
	if (f.tipo === 'contacto' || f.tipo === 'distribuidor') { cond.push('tipo = ?'); args.push(f.tipo); }
	if (['nuevo', 'atendido', 'descartado'].includes(f.estado)) { cond.push('estado = ?'); args.push(f.estado); }
	if (f.q) { cond.push('(nombre LIKE ? OR email LIKE ? OR empresa LIKE ? OR mensaje LIKE ?)'); args.push(`%${f.q}%`, `%${f.q}%`, `%${f.q}%`, `%${f.q}%`); }
	const sql = `SELECT id, tipo, nombre, email, telefono, empresa, rut, giro, comuna, sitio_web, mensaje, origen, ip, user_agent, estado, correo_enviado, correo_error, created_at FROM leads ${cond.length ? 'WHERE ' + cond.join(' AND ') : ''} ORDER BY created_at DESC LIMIT ${limite}`;
	return (await env.DB.prepare(sql).bind(...args).all<FilaLead & { rut: string | null; giro: string | null; sitio_web: string | null; origen: string | null; ip: string | null; user_agent: string | null }>()).results;
}
const filtrosLeads = (c: { req: { query: (k: string) => string | undefined } }) => ({ tipo: str(c.req.query('tipo'), 20), estado: str(c.req.query('estado'), 20), q: str(c.req.query('q'), 80) });

admin.get('/leads', async (c) => {
	const f = filtrosLeads(c);
	const filas = await consultarLeads(c.env, f);
	const correos = {
		contacto: (await getAjuste(c.env, AJUSTES_CORREO.contacto)) || CORREO_DEFECTO,
		distribuidor: (await getAjuste(c.env, AJUSTES_CORREO.distribuidor)) || CORREO_DEFECTO,
		remitente: (await getAjuste(c.env, AJUSTES_CORREO.remitente)) || REMITENTE_DEFECTO,
		resend: !!c.env.RESEND_API_KEY,
		turnstile: !!c.env.TURNSTILE_SECRET,
		auto: {
			activa: (await getAjuste(c.env, AJUSTES_CORREO.autorespuesta)) !== '0',
			contactoAsunto: (await getAjuste(c.env, AJUSTES_CORREO.autoContactoAsunto)) || AUTORESPUESTA_DEFECTO.contacto.asunto,
			contactoTexto: (await getAjuste(c.env, AJUSTES_CORREO.autoContactoTexto)) || AUTORESPUESTA_DEFECTO.contacto.texto,
			distribuidorAsunto: (await getAjuste(c.env, AJUSTES_CORREO.autoDistribuidorAsunto)) || AUTORESPUESTA_DEFECTO.distribuidor.asunto,
			distribuidorTexto: (await getAjuste(c.env, AJUSTES_CORREO.autoDistribuidorTexto)) || AUTORESPUESTA_DEFECTO.distribuidor.texto
		}
	};
	return c.html(layoutAdmin('Contactos', vistaLeads(filas, f, correos), { activo: 'leads', aviso: aviso(c) }));
});
admin.get('/leads.csv', async (c) => {
	const filas = await consultarLeads(c.env, filtrosLeads(c), 5000);
	const cols = ['id', 'created_at', 'tipo', 'estado', 'nombre', 'email', 'telefono', 'empresa', 'rut', 'giro', 'comuna', 'sitio_web', 'mensaje', 'origen', 'correo_enviado'] as const;
	const celda = (v: unknown) => `"${String(v ?? '').replace(/"/g, '""')}"`;
	const csv = '\uFEFF' + [cols.join(';'), ...filas.map((l) => cols.map((k) => celda((l as unknown as Record<string, unknown>)[k])).join(';'))].join('\r\n');
	return c.body(csv, 200, { 'Content-Type': 'text/csv; charset=utf-8', 'Content-Disposition': `attachment; filename="contactos-${new Date().toISOString().slice(0, 10)}.csv"` });
});
admin.post('/leads/configuracion', async (c) => {
	const b = await c.req.parseBody();
	const correoValido = (v: string) => v.split(/[,;]\s*/).every((x) => /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(x));
	const contacto = str(b.contacto), distribuidor = str(b.distribuidor), remitente = str(b.remitente);
	if ((contacto && !correoValido(contacto)) || (distribuidor && !correoValido(distribuidor))) return c.redirect(conAviso('/admin/leads', 'error', 'Revisa los correos destino.'));
	await setAjuste(c.env, AJUSTES_CORREO.contacto, contacto || null);
	await setAjuste(c.env, AJUSTES_CORREO.distribuidor, distribuidor || null);
	await setAjuste(c.env, AJUSTES_CORREO.remitente, remitente || null);
	await setAjuste(c.env, AJUSTES_CORREO.autorespuesta, b.auto_activa === '1' ? null : '0');
	const oDefecto = (v: string, def: string) => (v && v !== def ? v : null);
	await setAjuste(c.env, AJUSTES_CORREO.autoContactoAsunto, oDefecto(str(b.auto_contacto_asunto, 200), AUTORESPUESTA_DEFECTO.contacto.asunto));
	await setAjuste(c.env, AJUSTES_CORREO.autoContactoTexto, oDefecto(str(b.auto_contacto_texto, 5000).replace(/\r\n/g, '\n'), AUTORESPUESTA_DEFECTO.contacto.texto));
	await setAjuste(c.env, AJUSTES_CORREO.autoDistribuidorAsunto, oDefecto(str(b.auto_distribuidor_asunto, 200), AUTORESPUESTA_DEFECTO.distribuidor.asunto));
	await setAjuste(c.env, AJUSTES_CORREO.autoDistribuidorTexto, oDefecto(str(b.auto_distribuidor_texto, 5000).replace(/\r\n/g, '\n'), AUTORESPUESTA_DEFECTO.distribuidor.texto));
	return c.redirect(conAviso('/admin/leads', 'ok', 'Configuración guardada.'));
});
admin.get('/leads/:id', async (c) => {
	const l = (await consultarLeads(c.env, { tipo: '', estado: '', q: '' }, 5000)).find((x) => x.id === Number(c.req.param('id')));
	if (!l) return c.notFound();
	return c.html(layoutAdmin(`Contacto #${l.id}`, vistaLead(l), { activo: 'leads', aviso: aviso(c) }));
});
admin.post('/leads/:id/estado', async (c) => {
	const id = Number(c.req.param('id'));
	const estado = str((await c.req.parseBody()).estado, 20);
	if (!['nuevo', 'atendido', 'descartado'].includes(estado)) return c.redirect(`/admin/leads/${id}`);
	await c.env.DB.prepare('UPDATE leads SET estado = ? WHERE id = ?').bind(estado, id).run();
	return c.redirect(conAviso(`/admin/leads/${id}`, 'ok', 'Estado actualizado.'));
});

admin.notFound((c) => c.html(layoutAdmin('No encontrado', '<header class="cab"><h1>No encontrado</h1></header><p><a href="/admin">Volver al inicio</a></p>'), 404));
