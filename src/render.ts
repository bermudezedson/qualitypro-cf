/**
 * Render de páginas con el markup exacto de la plantilla (migracion-v2).
 * Los bloques estáticos vienen de src/fragments.json (scripts/extraer-fragmentos.mjs);
 * aquí solo se construyen las partes que dependen de la base de datos.
 */
import frag from './fragments.json';
import type { Catalogo, Categoria, Producto } from './db';
import { normalizar, ordenarCategorias } from './db';
import { esc, jsonScript } from './html';

const F = frag as unknown as Record<string, string> & { iconosCategoria: Record<string, string> };
// URLs limpias de categoría: la plantilla enlaza /catalogo?categoria=<slug>; el sitio usa /catalogo/<slug>
for (const k of Object.keys(F)) if (typeof F[k] === 'string') F[k] = F[k].split('/catalogo?categoria=').join('/catalogo/');

/** Título de categoría para H1, <title> y migas: "Productos para aves", "Productos de higiene". */
export function tituloCategoria(c: Categoria): string {
	return c.slug === 'higiene' ? 'Productos de higiene y sanitización' : `Productos para ${c.animal.toLowerCase()}`;
}
export const OG_IMAGEN_DEFECTO = '/assets/campo-vacas.jpg';

/** Codepoints de la fuente de íconos "qualitypro" por especie (tomados del diseño). */
const ICONO: Record<string, string> = {
	aves: '&#xe903;',
	caballos: '&#xe901;',
	'perros-y-gatos': '&#xe905;',
	cerdos: '&#xe902;',
	vacas: '&#xe907;',
	'ovejas-y-cabras': '&#xe908;',
	abejas: '&#xe900;',
	peces: '&#xe906;',
	higiene: '&#xe90a;'
};

/** Fondos del hero del catálogo por especie (assets del diseño). */
export const FONDO_CATALOGO: Record<string, string> = {
	aves: 'granja-aves.jpg',
	caballos: 'pradera-caballos.jpg',
	'perros-y-gatos': 'catalogo-mascotas.jpg',
	cerdos: 'catalogo-cerdos.jpg',
	vacas: 'campo-vacas.jpg',
	'ovejas-y-cabras': 'catalogo-ovejas-cabras.jpg',
	abejas: 'catalogo-abejas.jpg',
	peces: 'catalogo-peces.jpg',
	higiene: 'catalogo-higiene.jpg'
};
const FOCO_CATALOGO: Record<string, string> = { 'perros-y-gatos': '45% 12%' };

const SVG_PAQUETE_CHICO =
	'<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-package h-16 w-16 text-primary/40" aria-hidden="true"><path d="M11 21.73a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73z"></path><path d="M12 22V12"></path><polyline points="3.29 7 12 12 20.71 7"></polyline><path d="m7.5 4.27 9 5.15"></path></svg>';
const SVG_PAQUETE_GRANDE = SVG_PAQUETE_CHICO.replace('h-16 w-16 text-primary/40', 'h-32 w-32 text-primary/35');
const SVG_PAQUETE_MINI = SVG_PAQUETE_CHICO.replace('stroke-width="1"', 'stroke-width="2"').replace(
	'class="lucide lucide-package h-16 w-16 text-primary/40"',
	'class="lucide lucide-package h-5 w-5"'
);
const SVG_FLECHA_ARRIBA =
	'<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-arrow-up-right" aria-hidden="true"><path d="M7 7h10v10"></path><path d="M7 17 17 7"></path></svg>';
const SVG_CHEVRON =
	'<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-chevron-right h-3 w-3" aria-hidden="true"><path d="m9 18 6-6-6-6"></path></svg>';
const SVG_FLECHA_DER =
	'<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-arrow-right" aria-hidden="true"><path d="M5 12h14"></path><path d="m12 5 7 7-7 7"></path></svg>';
const SVG_WHATSAPP =
	'<svg viewBox="0 0 24 24" fill="currentColor" aria-hidden="true"><path d="M20.52 3.48A11.86 11.86 0 0 0 12.07 0C5.49 0 .14 5.35.14 11.93c0 2.1.55 4.15 1.6 5.96L.04 24l6.25-1.64a11.94 11.94 0 0 0 5.78 1.47h.01C18.65 23.83 24 18.48 24 11.9a11.86 11.86 0 0 0-3.48-8.42ZM12.08 21.81a9.9 9.9 0 0 1-5.05-1.38l-.36-.21-3.71.97.99-3.62-.24-.37a9.86 9.86 0 0 1-1.51-5.27c0-5.47 4.45-9.92 9.92-9.92a9.85 9.85 0 0 1 7.02 2.91 9.85 9.85 0 0 1 2.9 7.02c0 5.47-4.45 9.92-9.96 9.87Zm5.44-7.42c-.3-.15-1.76-.87-2.04-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.95 1.17-.17.2-.35.22-.65.07-.3-.15-1.25-.46-2.38-1.48-.88-.78-1.48-1.75-1.65-2.05-.17-.3-.02-.46.13-.6.13-.13.3-.35.45-.52.15-.18.2-.3.3-.5.1-.2.05-.37-.02-.52-.08-.15-.67-1.62-.92-2.22-.24-.58-.49-.5-.67-.51h-.57c-.2 0-.52.07-.8.37-.27.3-1.04 1.02-1.04 2.49 0 1.47 1.07 2.89 1.22 3.09.15.2 2.1 3.2 5.09 4.49.71.3 1.26.48 1.69.61.71.23 1.36.2 1.87.12.57-.08 1.76-.72 2.01-1.42.25-.69.25-1.29.17-1.42-.07-.12-.27-.19-.57-.34Z"></path></svg>';
const SVG_CAMION =
	'<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-truck h-4 w-4 text-whatsapp" aria-hidden="true"><path d="M14 18V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v11a1 1 0 0 0 1 1h2"></path><path d="M15 18H9"></path><path d="M19 18h2a1 1 0 0 0 1-1v-3.65a1 1 0 0 0-.22-.624l-3.48-4.35A1 1 0 0 0 17.52 8H14"></path><circle cx="17" cy="18" r="2"></circle><circle cx="7" cy="18" r="2"></circle></svg>';
const SVG_ESCUDO =
	'<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-shield-check h-4 w-4 text-whatsapp" aria-hidden="true"><path d="M20 13c0 5-3.5 7.5-7.66 8.95a1 1 0 0 1-.67-.01C7.5 20.5 4 18 4 13V6a1 1 0 0 1 1-1c2 0 4.5-1.2 6.24-2.72a1.17 1.17 0 0 1 1.52 0C14.51 3.81 17 5 19 5a1 1 0 0 1 1 1z"></path><path d="m9 12 2 2 4-4"></path></svg>';

const BTN_LINK =
	'inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium cursor-pointer transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 disabled:cursor-not-allowed [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 text-primary underline-offset-4 hover:underline h-9 py-2 px-0';

export const WHATSAPP = 'https://wa.me/56932586340';

export interface Meta {
	titulo: string;
	descripcion: string;
	ruta: string; // ej. "/catalogo"
	noindex?: boolean;
	og?: { tipo?: string; imagen?: string };
	jsonLd?: unknown[];
}

export function mediaUrl(ruta: string): string {
	return '/media/' + ruta.replace(/^\/+/, '').split('/').map(encodeURIComponent).join('/');
}

/** Datos que usa js/main.js (buscador y filtros), inyectados en la página. */
function datosCliente(cat: Catalogo) {
	return {
		products: cat.productos.map((p) => ({
			slug: p.slug,
			name: p.nombre,
			text: [p.nombre, p.resumen, p.presentacion ?? '', ...p.categorias.map((c) => c.animal + ' ' + c.nombre)].join(' ')
		})),
		catNames: Object.fromEntries(cat.categorias.map((c) => [c.slug, c.animal])),
		catalogBg: FONDO_CATALOGO
	};
}

export function layout(meta: Meta, siteUrl: string, cat: Catalogo, contenido: string, turnstileKey?: string): string {
	const canonical = siteUrl + meta.ruta;
	const og = meta.og ?? {};
	return `<!DOCTYPE html>
<html lang="es-CL">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${esc(meta.titulo)}</title>
<meta name="description" content="${esc(meta.descripcion)}">
<link rel="canonical" href="${esc(canonical)}">
${meta.noindex ? '<meta name="robots" content="noindex, follow">' : ''}
<meta property="og:type" content="${esc(og.tipo ?? 'website')}">
<meta property="og:title" content="${esc(meta.titulo)}">
<meta property="og:description" content="${esc(meta.descripcion)}">
<meta property="og:url" content="${esc(canonical)}">
<meta property="og:site_name" content="Quality Pro">
<meta property="og:locale" content="es_CL">
<meta property="og:image" content="${esc(og.imagen ?? siteUrl + OG_IMAGEN_DEFECTO)}">
<meta name="theme-color" content="#0b2545">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&display=swap">
<link rel="stylesheet" href="/css/styles.css">
<link rel="stylesheet" href="/css/extra.css">
${(meta.jsonLd ?? []).map((j) => `<script type="application/ld+json">${jsonScript(j)}</script>`).join('\n')}
<script>window.QP_DATA=${jsonScript({ ...datosCliente(cat), turnstileKey: turnstileKey ?? null })};</script>
${turnstileKey ? '<script src="https://challenges.cloudflare.com/turnstile/v0/api.js?render=explicit" async defer></script>' : ''}
<script defer src="/js/main.js"></script>
</head>
<body>
${cabecera(cat)}
<main${meta.ruta.startsWith('/producto/') ? ' class="mx-auto max-w-7xl px-5 py-8"' : ''}>
${contenido}
</main>
${pie(cat)}
</html>`;
}

function cabecera(cat: Catalogo): string {
	// La cabecera de la plantilla es estática; solo se actualizan los años desde la fundación.
	const anios = new Date().getFullYear() - 2010;
	return F.cabecera.replace(/data-years>\d+</, `data-years>${anios}<`);
}

function pie(cat: Catalogo): string {
	// Lista de especies del footer desde la base de datos (mismo markup que el diseño).
	const items = cat.categorias.map((c) => `<li><a href="/catalogo/${esc(c.slug)}">${esc(c.animal)}</a></li>`).join('');
	return F.pie
		.replace(/(<ul class="grid grid-cols-2 gap-1\.5 text-sm text-navy-foreground\/80">)[\s\S]*?(<\/ul>)/, `$1${items}$2`)
		.replace(/data-year>\d+</, `data-year>${new Date().getFullYear()}<`);
}

// ---------------------------------------------------------------- componentes

export function tarjetaProducto(p: Producto, posicion?: number, categoriaActiva?: Categoria | null): string {
	const url = `/producto/${esc(p.slug)}`;
	const cat = (categoriaActiva && p.categorias.find((c) => c.slug === categoriaActiva.slug)) || p.categorias[0];
	const etiqueta = cat ? `${esc(cat.animal)} · Nutrición animal` : 'Nutrición animal';
	const linea = p.presentacion?.trim() || p.resumen || 'Consultar presentación y formato';
	const imagen = p.foto
		? `<img src="${mediaUrl(p.foto)}" alt="${esc(p.nombre)}" loading="${posicion !== undefined && posicion < 4 ? 'eager' : 'lazy'}" width="400" height="242" class="absolute inset-0 h-full w-full object-contain bg-card p-4" onerror="this.remove()">`
		: '';
	return `<article class="group flex min-w-0 flex-col overflow-hidden rounded-lg border bg-card transition-colors hover:border-primary" data-product data-cats="${esc(p.categorias.map((c) => c.slug).join(','))}">
  <a href="${url}" class="product-visual relative grid aspect-[1.65] place-items-center border-b bg-secondary" aria-label="Ver ${esc(p.nombre)}">
    ${SVG_PAQUETE_CHICO}
    <span class="absolute bottom-3 left-4 text-xs text-muted-foreground">Imagen pendiente</span>
    ${imagen}
    ${SVG_FLECHA_ARRIBA.replace('class="lucide lucide-arrow-up-right"', 'class="lucide lucide-arrow-up-right absolute right-4 top-4 z-10 h-5 w-5 text-primary"')}
  </a>
  <div class="flex flex-1 flex-col p-5">
    <p class="text-xs font-semibold text-whatsapp">${etiqueta}</p>
    <a href="${url}" class="mt-2 text-xl font-bold text-navy">${esc(p.nombre)}</a>
    <p class="mt-2 text-sm text-muted-foreground">${esc(linea)}</p>
    <a href="${url}" class="inline-flex items-center gap-2 whitespace-nowrap rounded-md text-sm font-medium cursor-pointer transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 disabled:cursor-not-allowed [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 border border-input shadow-sm hover:bg-accent hover:text-accent-foreground h-9 px-4 py-2 mt-5 w-full justify-between bg-card text-primary">Ver producto ${SVG_FLECHA_ARRIBA}</a>
  </div>
</article>`;
}

export function azulejoCategoria(c: Categoria): string {
	const tam = c.slug === 'peces' ? 'text-[43.2px]' : 'text-5xl';
	return `<a href="/catalogo/${esc(c.slug)}" class="category-tile group flex min-h-32 min-w-0 flex-col items-center justify-center gap-3 rounded-md border border-border bg-card px-2 py-4 transition-colors hover:border-primary hover:bg-secondary"><span class="qp-icon ${tam} text-primary transition-colors group-hover:text-whatsapp">${ICONO[c.slug] ?? '&#xe90a;'}</span><span class="text-center text-xs font-bold text-navy sm:text-sm">${esc(c.animal)}</span></a>`;
}

// ---------------------------------------------------------------- páginas

export function paginaHome(cat: Catalogo, destacados: Producto[]): string {
	const grillaCols = cat.categorias.length <= 9 ? 'lg:grid-cols-9' : 'lg:grid-cols-6';
	return `${F.hero}${F.barra3}
<section id="categorias" class="scroll-mt-40 bg-background"><div class="mx-auto max-w-7xl px-5 py-12 md:py-16">
  <div class="section-heading"><div><p class="eyebrow">Nuestras líneas</p><h2 class="section-title">Una solución para cada especie</h2></div><a href="/catalogo" class="${BTN_LINK}">Ver todo el catálogo ${SVG_FLECHA_DER}</a></div>
  <div class="mt-8 grid grid-cols-3 gap-2 sm:grid-cols-5 ${grillaCols}">${cat.categorias.map(azulejoCategoria).join('')}</div>
</div></section>
<section class="border-y bg-card"><div class="mx-auto max-w-7xl px-5 py-12 md:py-16"><div class="section-heading"><div><p class="eyebrow">Catálogo Quality Pro</p><h2 class="section-title">Productos destacados</h2></div><a href="/catalogo" class="${BTN_LINK}">Todos los productos ${SVG_FLECHA_DER}</a></div><div class="mt-8 grid gap-5 sm:grid-cols-2 lg:grid-cols-4">
${destacados.map((p, i) => tarjetaProducto(p, i)).join('\n')}
</div></div></section>
${F.clientes}${F.quienesSomos}${F.distribuidor}${F.contacto}`;
}

export function paginaCatalogo(cat: Catalogo, categoria: Categoria | null, q: string, productos: Producto[]): string {
	// Hero con el fondo de la especie
	let hero = F.catalogoHero;
	if (categoria) {
		const fondo = FONDO_CATALOGO[categoria.slug];
		if (fondo) hero = hero.replace(/src="\/assets\/[^"]+"/, `src="/assets/${fondo}"`);
		hero = hero.replace(/style="object-position: [^"]+"/, `style="object-position: ${FOCO_CATALOGO[categoria.slug] ?? 'right center'}"`);
		hero = hero.replace('<span>Catálogo</span>', `<a href="/catalogo">Catálogo</a>${SVG_CHEVRON}<span>${esc(categoria.animal)}</span>`);
		hero = hero.replace(/(<h1[^>]*>)[^<]*(<\/h1>)/, `$1${esc(tituloCategoria(categoria))}$2`);
		if (categoria.descripcion?.trim()) hero = hero.replace(/(<p class="mt-3 text-sm text-navy-foreground\/80">)[^<]*(<\/p>)/, `$1${esc(categoria.descripcion.trim())}$2`);
	}

	// Aside de categorías
	const qs = q ? `?q=${encodeURIComponent(q)}` : '';
	const todosActivo = !categoria;
	const enlaces = [
		`<a href="/catalogo${q ? `?q=${encodeURIComponent(q)}` : ''}" class="shrink-0 rounded-md px-3 py-3 text-sm font-semibold ${todosActivo ? 'bg-primary text-primary-foreground' : 'bg-card text-navy'}" data-cat-link="">Todos los productos</a>`,
		...cat.categorias.map((c) => {
			const activo = categoria?.slug === c.slug;
			const icono = F.iconosCategoria[c.slug] ?? `<span class="flex h-7 w-8 shrink-0 items-center justify-center qp-icon text-2xl" aria-hidden="true">${ICONO[c.slug] ?? '&#xe90a;'}</span>`;
			return `<a href="/catalogo/${esc(c.slug)}${qs}" class="flex shrink-0 items-center gap-3 rounded-md px-3 py-3 text-sm font-medium ${activo ? 'bg-primary text-primary-foreground' : 'text-navy hover:bg-secondary'}" data-cat-link="${esc(c.slug)}">${icono}${esc(c.animal)}</a>`;
		})
	].join('\n    ');
	const aside = `${F.catalogoAsideTitulo}<nav class="flex gap-2 overflow-x-auto pb-3 md:flex-col" data-cat-nav>\n    ${enlaces}\n  </nav></aside>`;

	// Encabezado: título, conteo y botón de limpiar
	const titulo = categoria ? categoria.animal : 'Todos los productos';
	const conteo = `${productos.length} producto${productos.length === 1 ? '' : 's'}${q ? ` · “${esc(q)}”` : ''}`;
	let encabezado = F.catalogoEncabezado
		.replace(/data-cat-title>[^<]*</, `data-cat-title>${esc(titulo)}<`)
		.replace(/data-count>[^<]*</, `data-count>${conteo}<`);
	if (q || categoria) encabezado = encabezado.replace(' hidden" data-clear-filters', '" data-clear-filters');

	const vacio = productos.length === 0;
	const grilla = `<div class="mt-6 grid gap-5 sm:grid-cols-2 lg:grid-cols-3${vacio ? ' hidden' : ''}" data-catalog-grid>\n${productos.map((p, i) => tarjetaProducto(p, i, categoria)).join('\n')}\n`;
	let cierre = F.catalogoVacio.replace(/<p class="mt-8 border-t pt-4 text-xs text-muted-foreground">[^<]*<\/p>\s*/, '');
	if (vacio) cierre = cierre.replace('class="hidden py-16" data-empty', 'class="py-16" data-empty');

	return `${hero}
<div class="mx-auto grid max-w-7xl gap-8 px-5 py-10 md:grid-cols-[220px_minmax(0,1fr)]">
  ${aside}
  ${encabezado}${grilla}${cierre}`;
}

export interface DatosProducto {
	producto: Producto;
	tabs: string;
	paneles: string;
	descripcion: string;
	relacionados: Producto[];
	tieneFicha: boolean;
}

export function paginaProducto(d: DatosProducto): string {
	const p = d.producto;
	const chips = p.categorias
		.map(
			(c) =>
				`<a href="/catalogo/${esc(c.slug)}" class="flex items-center gap-2 rounded-sm bg-secondary px-3 py-2 text-xs font-semibold text-primary"><span class="qp-icon text-xl">${ICONO[c.slug] ?? '&#xe90a;'}</span>${esc(c.animal)}</a>`
		)
		.join('');
	const imagen = p.foto
		? `<img src="${mediaUrl(p.foto)}" alt="${esc(p.nombre)}" width="800" height="800" fetchpriority="high" class="absolute inset-0 h-full w-full rounded-lg object-contain bg-card p-6" data-galeria-imagen onerror="this.style.display='none'">
		   <button type="button" class="galeria-zoom-btn" data-galeria-zoom aria-label="Ampliar foto"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line><line x1="11" y1="8" x2="11" y2="14"></line><line x1="8" y1="11" x2="14" y2="11"></line></svg></button>`
		: '';
	const lightbox = p.fotos.length
		? `<div class="lightbox" data-lightbox hidden role="dialog" aria-modal="true" aria-label="Foto ampliada de ${esc(p.nombre)}">
  <button type="button" class="lightbox-cerrar" data-lightbox-cerrar aria-label="Cerrar">&times;</button>
  ${p.fotos.length > 1 ? '<button type="button" class="lightbox-flecha lightbox-prev" data-lightbox-prev aria-label="Foto anterior">&#8249;</button><button type="button" class="lightbox-flecha lightbox-next" data-lightbox-next aria-label="Foto siguiente">&#8250;</button>' : ''}
  <figure class="lightbox-figura"><img data-lightbox-img src="${mediaUrl(p.fotos[0])}" alt="${esc(p.nombre)}"><figcaption data-lightbox-pie>${esc(p.nombre)}${p.fotos.length > 1 ? ' · 1 / ' + p.fotos.length : ''}</figcaption></figure>
</div>`
		: '';
	const miniaturas =
		p.fotos.length > 1
			? `<div class="galeria-miniaturas" data-galeria>${p.fotos
					.map(
						(f, i) =>
							`<button type="button" class="galeria-miniatura${i === 0 ? ' activa' : ''}" data-galeria-miniatura data-src="${mediaUrl(f)}" aria-label="Ver foto ${i + 1} de ${p.fotos.length}"><img src="${mediaUrl(f)}" alt="" loading="lazy" width="160" height="160" onerror="this.parentElement.remove()"></button>`
					)
					.join('')}</div>`
			: '';
	const presentacion = p.presentacion?.trim() || 'Consultar presentación y formato';
	const infoTecnica = d.tieneFicha
		? `<div class="flex overflow-x-auto border-b" role="tablist" aria-label="Información técnica">${d.tabs}</div><div id="product-panel" role="tabpanel" aria-labelledby="tab-${d.tabs.match(/data-tab="([^"]+)"/)?.[1] ?? ''}" class="max-w-3xl py-6 text-sm leading-7 text-muted-foreground">${d.paneles}</div>`
		: `<div class="max-w-3xl rounded-lg border bg-secondary p-6 text-sm leading-7 text-muted-foreground">La ficha técnica de este producto aún no está publicada. <a href="${WHATSAPP}?text=${encodeURIComponent(`Hola Quality Pro, necesito la ficha técnica de ${p.nombre}.`)}" target="_blank" rel="noopener noreferrer" class="font-semibold text-primary">Solicítala por WhatsApp</a>.</div>`;

	return `<nav aria-label="Ruta de navegación" class="mb-8 flex flex-wrap items-center gap-2 text-xs text-muted-foreground"><a href="/">Inicio</a>${SVG_CHEVRON}<a href="/catalogo">Catálogo</a>${SVG_CHEVRON}${
		p.categorias[0] ? `<a href="/catalogo/${esc(p.categorias[0].slug)}">${esc(p.categorias[0].animal)}</a>${SVG_CHEVRON}` : ''
	}<span>${esc(p.nombre)}</span></nav>
<div class="grid items-start gap-10 lg:grid-cols-2">
  <div><div class="relative grid aspect-square place-items-center rounded-lg border bg-secondary${p.foto ? ' galeria-principal' : ''}" data-galeria-principal>${SVG_PAQUETE_GRANDE}<p class="absolute bottom-6 text-sm text-muted-foreground">Fotografía del producto pendiente</p>${imagen}</div>${miniaturas}${lightbox}</div>
  <div><p class="eyebrow">Quality Pro · Nutrición animal</p><h1 class="mt-3 text-3xl font-extrabold text-navy md:text-4xl">${esc(p.nombre)}</h1><p class="mt-4 flex items-center gap-2 text-sm font-semibold text-primary">${SVG_PAQUETE_MINI}${esc(presentacion)}</p>${
		d.descripcion ? `<p class="mt-5 text-sm leading-7 text-muted-foreground">${esc(d.descripcion)}</p>` : ''
	}${p.sku ? `<p class="mt-3 text-xs font-semibold text-muted-foreground">Código ${esc(p.sku)}</p>` : ''}
    <div class="mt-5 flex flex-wrap gap-2">${chips}</div>
    <form class="mt-7 border-y py-6" data-quote-form data-product-name="${esc(p.nombre)}"><h2 class="text-xl font-bold text-navy">Cotizar este producto</h2><label class="mt-4 grid gap-2 text-sm font-medium">Cantidad, presentación o consulta<textarea rows="3" name="mensaje" placeholder="Cuéntanos qué necesitas cotizar…" class="w-full rounded-md border bg-card p-3 outline-none focus:border-primary"></textarea></label><button type="submit" class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium cursor-pointer transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 disabled:cursor-not-allowed [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 shadow px-4 py-2 mt-4 h-12 w-full bg-whatsapp text-primary-foreground hover:bg-whatsapp/90">${SVG_WHATSAPP} Cotizar por WhatsApp</button></form>
    <div class="mt-5 flex flex-wrap gap-5 text-xs font-semibold text-muted-foreground"><span class="flex items-center gap-2">${SVG_CAMION}Despacho a todo Chile</span><span class="flex items-center gap-2">${SVG_ESCUDO}Calidad Quality Pro</span></div>
  </div>
</div>
<section class="mt-12"><h2 class="mb-4 text-xl font-bold text-navy">Información técnica</h2>${infoTecnica}</section>
${
	d.relacionados.length
		? `<section class="border-t py-10"><h2 class="section-title">Productos relacionados</h2><div class="mt-6 grid gap-5 sm:grid-cols-2 lg:grid-cols-3">
${d.relacionados.map((r) => tarjetaProducto(r)).join('\n')}
</div></section>`
		: ''
}`;
}

export function paginaDistribuidor(): string {
	// El fragmento incluye <main …>…</main>; el layout ya abre <main>, así que se quita el envoltorio.
	return F.distribuidorMain.replace(/^<main[^>]*>/, '').replace(/<\/main>$/, '');
}

export function pagina404(): string {
	return `<section class="mx-auto max-w-7xl px-5 py-20 text-center"><p class="eyebrow">Error 404</p><h1 class="section-title">No encontramos esta página</h1><p class="mx-auto mt-4 max-w-md text-sm text-muted-foreground">La dirección puede haber cambiado o el producto ya no está disponible.</p><div class="mt-8 flex flex-wrap justify-center gap-3"><a href="/catalogo" class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium cursor-pointer transition-colors shadow h-12 px-8 bg-primary text-primary-foreground hover:bg-primary/90">Ver catálogo ${SVG_FLECHA_DER}</a><a href="/" class="inline-flex items-center justify-center gap-2 whitespace-nowrap rounded-md text-sm font-medium cursor-pointer transition-colors border shadow-sm h-12 px-8 bg-card text-navy hover:bg-secondary">Ir al inicio</a></div></section>`;
}

/** Filtro de catálogo igual al del diseño (normaliza acentos y mayúsculas). */
export function filtrarProductos(productos: Producto[], categoria: Categoria | null, q: string): Producto[] {
	const term = normalizar(q);
	return productos.filter((p) => {
		if (categoria && !p.categorias.some((c) => c.slug === categoria.slug)) return false;
		if (!term) return true;
		const texto = normalizar([p.nombre, p.resumen, p.presentacion ?? '', p.sku ?? '', ...p.categorias.map((c) => c.animal + ' ' + c.nombre)].join(' '));
		return texto.includes(term);
	});
}

export { ordenarCategorias };
