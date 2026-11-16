/**
 * robots.txt y llms.txt: contenido editable desde el panel (tabla `ajustes`), con valores por defecto
 * generados desde la base. En ambos se puede usar el marcador {{SITE_URL}}.
 */
import type { Catalogo, Env } from './db';
import { getCatalogo, tituloEspecie } from './db';

export const CLAVES = ['robots.txt', 'llms.txt'] as const;
export type Archivo = (typeof CLAVES)[number];

let cache: { [k: string]: { valor: string | null; expira: number } } = {};
const TTL_MS = 60_000;

export async function getAjuste(env: Env, clave: string): Promise<string | null> {
	const c = cache[clave];
	if (c && c.expira > Date.now()) return c.valor;
	const fila = await env.DB.prepare('SELECT valor FROM ajustes WHERE clave = ?').bind(clave).first<{ valor: string }>();
	const valor = fila?.valor ?? null;
	cache[clave] = { valor, expira: Date.now() + TTL_MS };
	return valor;
}

export async function setAjuste(env: Env, clave: string, valor: string | null): Promise<void> {
	if (valor === null) await env.DB.prepare('DELETE FROM ajustes WHERE clave = ?').bind(clave).run();
	else
		await env.DB.prepare(
			`INSERT INTO ajustes (clave, valor, updated_at) VALUES (?, ?, datetime('now'))
			 ON CONFLICT(clave) DO UPDATE SET valor = excluded.valor, updated_at = excluded.updated_at`
		)
			.bind(clave, valor)
			.run();
	delete cache[clave];
}

/** Contenido final a servir (personalizado o por defecto), con {{SITE_URL}} resuelto. */
export async function contenidoArchivo(env: Env, archivo: Archivo): Promise<string> {
	const propio = await getAjuste(env, archivo);
	const texto = propio ?? (await porDefecto(env, archivo));
	return texto.replace(/\{\{\s*SITE_URL\s*\}\}/g, env.SITE_URL).replace(/\r\n/g, '\n').trimEnd() + '\n';
}

export async function porDefecto(env: Env, archivo: Archivo): Promise<string> {
	if (archivo === 'robots.txt') return ROBOTS_DEFECTO;
	return llmsDefecto(await getCatalogo(env));
}

export const ROBOTS_DEFECTO = `# Quality Pro — configuración para permitir todo el rastreo (buscadores, Ads, imágenes e IA)

# Reglas generales para todos los bots
User-agent: *
Content-Signal: search=yes,ai-input=yes,ai-train=yes,use=full
Allow: /
Disallow: /admin

# Permitir explícitamente el entrenamiento y rastreo de IA de Google (Gemini)
User-agent: Google-Extended
Allow: /

# Permitir explícitamente ChatGPT / OpenAI
User-agent: GPTBot
Allow: /
User-agent: OAI-SearchBot
Allow: /
User-agent: ChatGPT-User
Allow: /

# Permitir explícitamente Meta AI
User-agent: meta-externalagent
Allow: /

# Permitir explícitamente Claude / Anthropic
User-agent: ClaudeBot
Allow: /

# Permitir explícitamente otros bots de IA y rastreadores comunes
User-agent: Amazonbot
Allow: /
User-agent: Applebot-Extended
Allow: /
User-agent: Bytespider
Allow: /
User-agent: CCBot
Allow: /

# Bots de Google Search, Images y Ads (ya permitidos por "*", explícitos por seguridad)
User-agent: Googlebot
Allow: /
User-agent: Googlebot-Image
Allow: /
User-agent: AdsBot-Google
Allow: /

# Mapa del sitio y guía para asistentes de IA
Sitemap: {{SITE_URL}}/sitemap.xml
# llms.txt: {{SITE_URL}}/llms.txt
`;

/** llms.txt por defecto (formato llmstxt.org): resumen del sitio, especies y catálogo completo. */
export function llmsDefecto(cat: Catalogo): string {
	const lineas: string[] = [];
	lineas.push('# Quality Pro');
	lineas.push('');
	lineas.push(
		'> Quality Pro SpA es un fabricante chileno de productos para nutrición y salud animal: vitaminas, minerales, premix, núcleos, bloques, sales minerales y suplementos para aves, bovinos, equinos, porcinos, mascotas, ovinos, caprinos, abejas y peces. Fundada en 2010, con planta en Peñaflor (Región Metropolitana) y despacho a todo Chile.'
	);
	lineas.push('');
	lineas.push('Datos de contacto: teléfono +56 2 2814 4705, WhatsApp +56 9 3258 6340, correo contacto@qualitypro.cl, Balmaceda 2762, Peñaflor, Chile. Atiende a productores, empresas y distribuidores; las cotizaciones se solicitan por WhatsApp o por el formulario del sitio.');
	lineas.push('');
	lineas.push('## Páginas principales');
	lineas.push('');
	lineas.push('- [Inicio]({{SITE_URL}}/): presentación de la empresa, especies, productos destacados y contacto.');
	lineas.push('- [Catálogo de productos]({{SITE_URL}}/catalogo): todos los productos, con filtro por especie y búsqueda.');
	lineas.push('- [Quiero ser distribuidor]({{SITE_URL}}/quiero-ser-distribuidor): formulario para empresas que quieren distribuir los productos.');
	lineas.push('- [API JSON de productos]({{SITE_URL}}/api/productos): listado completo en formato JSON (nombre, código, presentación, resumen, especies, imagen).');
	lineas.push('- [Mapa del sitio]({{SITE_URL}}/sitemap.xml)');
	lineas.push('');
	lineas.push('## Especies (líneas de producto)');
	lineas.push('');
	for (const c of cat.categorias) {
		const n = cat.productos.filter((p) => p.categorias.some((x) => x.slug === c.slug)).length;
		lineas.push(`- [${tituloEspecie(c)}]({{SITE_URL}}/catalogo/${c.slug}): ${c.descripcion?.trim() || `productos para ${c.animal.toLowerCase()}`} (${n} productos)`);
	}
	lineas.push('');
	lineas.push('## Productos');
	lineas.push('');
	for (const p of cat.productos) {
		const especies = p.categorias.map((c) => c.animal).join(', ');
		const detalle = [p.sku ? `código ${p.sku}` : '', p.presentacion ?? '', p.resumen].filter(Boolean).join('. ');
		lineas.push(`- [${p.nombre}]({{SITE_URL}}/producto/${p.slug}): ${detalle}${especies ? ` Especies: ${especies}.` : ''}`);
	}
	lineas.push('');
	lineas.push('## Notas para asistentes');
	lineas.push('');
	lineas.push('- Los precios no se publican; cada producto se cotiza según cantidad y presentación.');
	lineas.push('- Cada ficha de producto incluye secciones de descripción, composición, aporte nutricional, dosificación, presentación, almacenamiento, vida útil y precauciones cuando están disponibles.');
	lineas.push('- Idioma del sitio: español de Chile.');
	return lineas.join('\n') + '\n';
}
