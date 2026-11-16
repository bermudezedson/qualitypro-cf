import { Hono } from 'hono';
import type { Context } from 'hono';
import { admin } from './admin/index';
import type { Env, Producto } from './db';
import { getCatalogo, getFicha } from './db';
import { parsearFicha, renderPaneles, renderTabs, resumenFicha } from './ficha';
import { esc } from './html';
import { resolverRedireccion } from './redirecciones';
import {
	filtrarProductos,
	layout,
	mediaUrl,
	pagina404,
	paginaCatalogo,
	paginaDistribuidor,
	paginaHome,
	paginaProducto,
	tituloCategoria,
	type Meta
} from './render';

const app = new Hono<{ Bindings: Env }>();

const CACHE_PAGINA = 'public, max-age=60, s-maxage=600, stale-while-revalidate=86400';

type Ctx = Context<{ Bindings: Env }>;

function html(c: Ctx, meta: Meta, cuerpo: (cat: Awaited<ReturnType<typeof getCatalogo>>) => string, status: 200 | 404 = 200) {
	return (async () => {
		const cat = await getCatalogo(c.env);
		c.header('Cache-Control', status === 200 ? CACHE_PAGINA : 'no-store');
		return c.html(layout(meta, c.env.SITE_URL, cat, cuerpo(cat)), status);
	})();
}

// ---- Panel de administración
app.route('/admin', admin);

// ---- Redirecciones 301 (sitio anterior en WordPress, URLs antiguas de la v2, barras finales)
app.use('*', async (c, next) => {
	if (c.req.method === 'GET' || c.req.method === 'HEAD') {
		const url = new URL(c.req.url);
		if (!url.pathname.startsWith('/admin') && !url.pathname.startsWith('/media/')) {
			const destino = resolverRedireccion(url);
			if (destino && destino !== url.pathname + url.search) {
				c.header('Cache-Control', 'public, max-age=3600');
				return c.redirect(destino, 301);
			}
		}
	}
	await next();
});

// ---- Home
app.get('/', (c) =>
	html(
		c,
		{
			titulo: 'Quality Pro | Nutrición y salud animal en Chile',
			descripcion:
				'Vitaminas, minerales, premix y suplementos para aves, bovinos, equinos, cerdos, mascotas, ovinos, abejas y peces. Fabricación chilena, despacho a todo el país.',
			ruta: '/',
			jsonLd: [
				{
					'@context': 'https://schema.org',
					'@type': 'Organization',
					name: 'Quality Pro',
					url: c.env.SITE_URL,
					logo: `${c.env.SITE_URL}/assets/logo-qualitypro.svg`,
					telephone: '+56228144705',
					address: { '@type': 'PostalAddress', streetAddress: 'Balmaceda 2762', addressLocality: 'Peñaflor', addressRegion: 'RM', addressCountry: 'CL' }
				}
			]
		},
		(cat) => {
			// Destacados: los 4 actualizados más recientemente, con foto primero
			const destacados = [...cat.productos]
				.sort((a, b) => Number(!!b.foto) - Number(!!a.foto) || String(b.actualizado).localeCompare(String(a.actualizado)))
				.slice(0, 4);
			return paginaHome(cat, destacados);
		}
	)
);

// ---- Catálogo: /catalogo (todo, con búsqueda ?q=) y /catalogo/<especie>
async function catalogo(c: Ctx, slug: string) {
	const cat = await getCatalogo(c.env);
	const q = (c.req.query('q') ?? '').trim().slice(0, 80);
	const categoria = cat.categorias.find((x) => x.slug === slug) ?? null;
	if (slug && !categoria) return noEncontrado(c);
	const productos = filtrarProductos(cat.productos, categoria, q);
	const meta: Meta = categoria
		? {
				titulo: tituloCategoria(categoria).length > 30 ? `${tituloCategoria(categoria)} | Quality Pro` : `${tituloCategoria(categoria)} | Nutrición animal | Quality Pro`,
				descripcion:
					categoria.descripcion?.trim() ||
					`${tituloCategoria(categoria)}: vitaminas, minerales y suplementos Quality Pro. Cotiza por WhatsApp, despacho a todo Chile.`,
				ruta: `/catalogo/${categoria.slug}`,
				noindex: !!q,
				jsonLd: [
					{
						'@context': 'https://schema.org',
						'@type': 'CollectionPage',
						name: tituloCategoria(categoria),
						url: `${c.env.SITE_URL}/catalogo/${categoria.slug}`,
						numberOfItems: productos.length
					},
					{
						'@context': 'https://schema.org',
						'@type': 'BreadcrumbList',
						itemListElement: [
							{ '@type': 'ListItem', position: 1, name: 'Inicio', item: `${c.env.SITE_URL}/` },
							{ '@type': 'ListItem', position: 2, name: 'Catálogo', item: `${c.env.SITE_URL}/catalogo` },
							{ '@type': 'ListItem', position: 3, name: categoria.animal, item: `${c.env.SITE_URL}/catalogo/${categoria.slug}` }
						]
					}
				]
			}
		: {
				titulo: q ? `Buscar “${q}” en el catálogo | Quality Pro` : 'Catálogo de productos de nutrición animal | Quality Pro',
				descripcion:
					'Más de 100 productos: vitaminas, minerales, premix, núcleos y suplementos para aves, bovinos, equinos, cerdos, mascotas, ovinos, abejas y peces.',
				ruta: '/catalogo',
				noindex: !!q
			};
	return html(c, meta, () => paginaCatalogo(cat, categoria, q, productos));
}
app.get('/catalogo', (c) => catalogo(c, ''));
app.get('/catalogo/:slug', (c) => catalogo(c, c.req.param('slug').toLowerCase()));

// ---- Ficha de producto
app.get('/producto/:slug', async (c) => {
	const cat = await getCatalogo(c.env);
	const slug = c.req.param('slug');
	const producto = cat.productos.find((p) => p.slug === slug);
	if (!producto) return noEncontrado(c);

	const ficha = await getFicha(c.env, producto.sku);
	const secciones = ficha ? parsearFicha(ficha) : [];
	const descripcion = resumenFicha(secciones) || producto.resumen;
	const metaDescripcion = resumenFicha(secciones, 155) || producto.resumen.slice(0, 155);
	const principal = producto.categorias[0];
	const relacionados: Producto[] = principal
		? cat.productos.filter((p) => p.id !== producto.id && p.categorias.some((x) => x.slug === principal.slug)).slice(0, 3)
		: [];

	const imagen = producto.foto ? `${c.env.SITE_URL}${mediaUrl(producto.foto)}` : undefined;
	return html(
		c,
		{
			titulo: `${producto.nombre} | ${principal ? principal.animal + ' | ' : ''}Quality Pro`,
			descripcion:
				metaDescripcion ||
				`${producto.nombre}${producto.presentacion ? ` (${producto.presentacion.toLowerCase()})` : ''}: producto Quality Pro${principal ? ` para ${principal.animal.toLowerCase()}` : ''}. Cotiza por WhatsApp, despacho a todo Chile.`,
			ruta: `/producto/${producto.slug}`,
			og: { tipo: 'product', imagen },
			jsonLd: [
				{
					'@context': 'https://schema.org',
					'@type': 'Product',
					name: producto.nombre,
					sku: producto.sku ?? undefined,
					description: descripcion || undefined,
					image: imagen ? [imagen] : undefined,
					category: principal?.animal,
					brand: { '@type': 'Brand', name: 'Quality Pro' },
					url: `${c.env.SITE_URL}/producto/${producto.slug}`
				},
				{
					'@context': 'https://schema.org',
					'@type': 'BreadcrumbList',
					itemListElement: [
						{ '@type': 'ListItem', position: 1, name: 'Inicio', item: `${c.env.SITE_URL}/` },
						{ '@type': 'ListItem', position: 2, name: 'Catálogo', item: `${c.env.SITE_URL}/catalogo` },
						...(principal ? [{ '@type': 'ListItem', position: 3, name: principal.animal, item: `${c.env.SITE_URL}/catalogo/${principal.slug}` }] : []),
						{ '@type': 'ListItem', position: principal ? 4 : 3, name: producto.nombre, item: `${c.env.SITE_URL}/producto/${producto.slug}` }
					]
				}
			]
		},
		() =>
			paginaProducto({
				producto,
				tabs: renderTabs(secciones),
				paneles: renderPaneles(secciones),
				descripcion,
				relacionados,
				tieneFicha: secciones.length > 0
			})
	);
});

// ---- Distribuidor
app.get('/quiero-ser-distribuidor', (c) =>
	html(
		c,
		{
			titulo: 'Quiero ser distribuidor | Red de distribuidores Quality Pro',
			descripcion: 'Únete a la red de distribuidores Quality Pro. Envía los datos de tu empresa y los productos de nutrición animal que te interesan.',
			ruta: '/quiero-ser-distribuidor'
		},
		() => paginaDistribuidor()
	)
);

// ---- Imágenes del dashboard (R2). Las rutas coinciden con las de la BD: productos/…, sliders/…, categorias_bg/…
app.get('/media/*', async (c) => {
	const clave = decodeURIComponent(new URL(c.req.url).pathname.replace(/^\/media\//, ''));
	if (!clave || clave.includes('..')) return c.notFound();
	const obj = await c.env.MEDIA.get(clave);
	if (!obj) return c.text('Imagen no encontrada', 404);
	const h = new Headers();
	obj.writeHttpMetadata(h);
	if (!h.get('content-type')) h.set('content-type', tipoMime(clave));
	h.set('etag', obj.httpEtag);
	h.set('cache-control', 'public, max-age=86400, s-maxage=2592000');
	return new Response(obj.body, { headers: h });
});

// ---- API JSON (catálogo público, mismos datos que usa el buscador)
app.get('/api/productos', async (c) => {
	const cat = await getCatalogo(c.env);
	const q = (c.req.query('q') ?? '').trim();
	const categoria = cat.categorias.find((x) => x.slug === c.req.query('categoria')) ?? null;
	const productos = filtrarProductos(cat.productos, categoria, q).map((p) => ({
		slug: p.slug,
		nombre: p.nombre,
		sku: p.sku,
		presentacion: p.presentacion,
		resumen: p.resumen,
		imagen: p.foto ? mediaUrl(p.foto) : null,
		categorias: p.categorias.map((x) => ({ slug: x.slug, nombre: x.animal })),
		url: `/producto/${p.slug}`
	}));
	c.header('Cache-Control', CACHE_PAGINA);
	return c.json({ total: productos.length, productos });
});
app.get('/api/categorias', async (c) => {
	const cat = await getCatalogo(c.env);
	c.header('Cache-Control', CACHE_PAGINA);
	return c.json(cat.categorias.map((x) => ({ slug: x.slug, nombre: x.animal, linea: x.nombre, url: `/catalogo/${x.slug}` })));
});

// ---- SEO
app.get('/sitemap.xml', async (c) => {
	const cat = await getCatalogo(c.env);
	const base = c.env.SITE_URL;
	const urls: { loc: string; p: string; mod?: string | null }[] = [
		{ loc: '/', p: '1.0' },
		{ loc: '/catalogo', p: '0.9' },
		{ loc: '/quiero-ser-distribuidor', p: '0.5' },
		...cat.categorias.map((x) => ({ loc: `/catalogo/${x.slug}`, p: '0.8' })),
		...cat.productos.map((x) => ({ loc: `/producto/${x.slug}`, p: '0.7', mod: x.actualizado }))
	];
	const xml = `<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n${urls
		.map((u) => `  <url><loc>${esc(base + u.loc)}</loc>${u.mod ? `<lastmod>${String(u.mod).slice(0, 10)}</lastmod>` : ''}<priority>${u.p}</priority></url>`)
		.join('\n')}\n</urlset>`;
	c.header('Cache-Control', 'public, max-age=3600');
	return c.body(xml, 200, { 'Content-Type': 'application/xml; charset=utf-8' });
});

// ---- 404
app.notFound((c) => noEncontrado(c));
app.onError((err, c) => {
	console.error(err);
	return c.text('Error interno. Intenta nuevamente en unos minutos.', 500);
});

function noEncontrado(c: Ctx) {
	return html(c, { titulo: 'Página no encontrada | Quality Pro', descripcion: 'La página solicitada no existe.', ruta: '/404', noindex: true }, () => pagina404(), 404);
}

function tipoMime(ruta: string): string {
	const ext = ruta.split('.').pop()?.toLowerCase();
	return (
		{ webp: 'image/webp', jpg: 'image/jpeg', jpeg: 'image/jpeg', png: 'image/png', gif: 'image/gif', svg: 'image/svg+xml', avif: 'image/avif', pdf: 'application/pdf' }[ext ?? ''] ??
		'application/octet-stream'
	);
}

export default app;
