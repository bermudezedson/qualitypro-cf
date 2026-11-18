/**
 * Redirecciones 301: URLs del sitio anterior (WordPress en qualitypro.cl) y URLs antiguas de la v2
 * hacia las rutas actuales. El mapa se genera con scripts/generar-redirecciones.py.
 */
import mapa from './redirecciones.json';

const M = mapa as { categorias: Record<string, string>; productos: Record<string, string>; paginas: Record<string, string> };

/** Palabra de especie usada en /a/…-para-<especie>/ del sitio anterior -> slug de la v2 */
const ESPECIES_A: Record<string, string> = {
	abejas: 'abejas',
	aves: 'aves',
	caballos: 'caballos',
	cerdos: 'cerdos',
	mascotas: 'perros-y-gatos',
	perros: 'perros-y-gatos',
	gatos: 'perros-y-gatos',
	ovejas: 'ovejas-y-cabras',
	cabras: 'ovejas-y-cabras',
	peces: 'peces',
	salmones: 'peces',
	vacas: 'vacas',
	bovinos: 'vacas',
	higiene: 'higiene'
};

/** Devuelve la ruta destino (path + query) o null si no hay redirección. */
export function resolverRedireccion(url: URL): string | null {
	let path = url.pathname;
	const q = url.searchParams;

	// Parámetros de WooCommerce/WordPress sin sentido en la v2 (paginación, orden, carrito)
	for (const k of ['product-page', 'paged', 'orderby', 'add-to-cart', 'min_price', 'max_price', 'filter_especie']) q.delete(k);

	// WordPress: búsqueda ?s=
	if ((path === '/' || path === '') && q.get('s')) {
		return `/catalogo?q=${encodeURIComponent(q.get('s')!.trim().slice(0, 80))}`;
	}

	// Normalizar: sin barra final, sin index.php, sin dobles barras
	path = path.replace(/\/{2,}/g, '/').replace(/\/index\.php$/i, '/').replace(/^\/catalogo\.html$/i, '/catalogo');
	if (path.length > 1 && path.endsWith('/')) path = path.replace(/\/+$/, '');
	const normalizado = path !== url.pathname;

	// Páginas y entradas del sitio anterior
	if (M.paginas[path]) return conQuery(M.paginas[path], q);

	// Subcategorías de WooCommerce: /a/alimento-para-<especie> y /a/salud-animal-para-<especie>
	let m = path.match(/^\/a\/(?:[a-z-]+?-para-)?([a-z-]+)$/i);
	if (m) {
		const especie = m[1].toLowerCase();
		const v2 = ESPECIES_A[especie] ?? M.categorias[especie];
		return v2 ? `/catalogo/${v2}` : '/catalogo';
	}

	// Categorías /p/<slug> y productos /n/<slug>
	m = path.match(/^\/p\/([a-z0-9-]+)$/i);
	if (m) return `/catalogo/${M.categorias[m[1].toLowerCase()] ?? ''}`.replace(/\/$/, '');
	m = path.match(/^\/n\/([a-z0-9-]+)$/i);
	if (m) return M.productos[m[1].toLowerCase()] ?? '/catalogo';

	// URLs antiguas de la v2: /catalogo?categoria=x -> /catalogo/x
	if (path === '/catalogo' && q.get('categoria')) {
		const cat = q.get('categoria')!.toLowerCase().replace(/[^a-z0-9-]/g, '');
		q.delete('categoria');
		return conQuery(cat ? `/catalogo/${cat}` : '/catalogo', q);
	}
	m = path.match(/^\/producto\/([a-z0-9-]+)\.html$/i);
	if (m) return `/producto/${m[1]}`;

	// Restos de WordPress sin equivalente: etiquetas y paginación al catálogo; feeds y autor al inicio
	if (/^\/(tag|product-tag|product-category)\//.test(path) || /^\/page\/\d+$/.test(path)) return '/catalogo';
	if (/^\/(feed|comments\/feed|author\/[^/]+|wp-login\.php|xmlrpc\.php)$/.test(path)) return '/';

	// Solo cambió la normalización (barra final, index.php)
	if (normalizado) return conQuery(path, q);
	return null;
}

function conQuery(destino: string, q: URLSearchParams): string {
	const qs = q.toString();
	return qs && !destino.includes('#') ? `${destino}?${qs}` : destino;
}
