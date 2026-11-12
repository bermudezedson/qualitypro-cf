#!/usr/bin/env node
/**
 * Extrae los bloques estáticos de la plantilla HTML (migracion-v2) a src/fragments.json,
 * corrigiendo las rutas relativas (./assets, ./catalogo.html, producto/x.html…) a rutas absolutas
 * del sitio dinámico. Así el Worker reutiliza el markup exacto del diseño sin transcribirlo a mano.
 *
 * Uso: node scripts/extraer-fragmentos.mjs [ruta-plantilla]
 */
import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const raiz = dirname(dirname(fileURLToPath(import.meta.url)));
const plantilla = process.argv[2] ?? join(raiz, 'template-src');

const leer = (f) => readFileSync(join(plantilla, f), 'utf8');

/** Corrige rutas relativas de la plantilla estática a rutas del sitio. */
export function fijarRutas(html) {
	return html
		.replace(/(href|src|action)="\.\.?\/assets\//g, '$1="/assets/')
		.replace(/(href|src)="\.\.?\/(css|js|fonts)\//g, '$1="/$2/')
		.replace(/href="\.\.?\/favicon\.ico"/g, 'href="/favicon.ico"')
		.replace(/(href|action)="\.\.?\/catalogo\.html(\?[^"]*)?"/g, '$1="/catalogo$2"')
		.replace(/href="\.\.?\/index\.html(#[^"]*)?"/g, 'href="/$1"')
		.replace(/href="\.\.?\/quiero-ser-distribuidor\.html"/g, 'href="/quiero-ser-distribuidor"')
		.replace(/href="\.\.?\/producto\/([a-z0-9-]+)\.html"/g, 'href="/producto/$1"')
		.replace(/data-root="\.\.?"/g, 'data-root=""');
}

/** Devuelve el trozo de `s` desde `inicio` (inclusive) hasta `fin` (exclusivo). */
function entre(s, inicio, fin, desde = 0) {
	const a = s.indexOf(inicio, desde);
	if (a < 0) throw new Error(`No se encontró el marcador de inicio: ${inicio}`);
	const b = fin ? s.indexOf(fin, a + inicio.length) : s.length;
	if (b < 0) throw new Error(`No se encontró el marcador de fin: ${fin}`);
	return s.slice(a, b);
}

const index = leer('index.html');
const catalogo = leer('catalogo.html');
const distribuidor = leer('quiero-ser-distribuidor.html');

const frag = {};

// Barra superior + header + nav (hasta <main>), y footer + botón flotante (desde <footer> hasta </body>)
frag.cabecera = entre(index, '<div class="min-h-screen">', '<main>');
frag.pie = entre(index, '<footer', '</body>');

// Home
frag.hero = entre(index, '<section aria-label="Quality Pro, nutrición animal"', '<div class="border-b bg-card">');
frag.barra3 = entre(index, '<div class="border-b bg-card">', '<section id="categorias"');
frag.clientes = entre(index, '<section id="clientes"', '<section id="quienes-somos"');
frag.quienesSomos = entre(index, '<section id="quienes-somos"', '<section id="distribuidor"');
frag.distribuidor = entre(index, '<section id="distribuidor"', '<section id="contacto"');
frag.contacto = entre(index, '<section id="contacto"', '</main>');

// Catálogo
frag.catalogoHero = entre(catalogo, '<section class="relative overflow-hidden bg-navy text-navy-foreground">', '<div class="mx-auto grid max-w-7xl gap-8');
frag.catalogoAsideTitulo = entre(catalogo, '<aside class="min-w-0">', '<nav class="flex gap-2 overflow-x-auto pb-3 md:flex-col" data-cat-nav>');
frag.catalogoEncabezado = entre(catalogo, '<section class="min-w-0">', '<div class="mt-6 grid gap-5');
const finCards = catalogo.lastIndexOf('</article>') + '</article>'.length;
frag.catalogoVacio = catalogo.slice(finCards, catalogo.indexOf('</main>', finCards));

// Iconos SVG de categorías del aside del catálogo: slug -> <span>…</span>
frag.iconosCategoria = {};
const reIcono = /<a href="\.\/catalogo\.html\?categoria=([a-z-]+)"[^>]*data-cat-link="\1">(<span[^>]*>.*?<\/span>)/gs;
for (const m of catalogo.matchAll(reIcono)) frag.iconosCategoria[m[1]] = m[2];

// Página distribuidor
frag.distribuidorMain = entre(distribuidor, '<main', '</main>') + '</main>';

for (const k of Object.keys(frag)) {
	if (typeof frag[k] === 'string') frag[k] = fijarRutas(frag[k]);
}

mkdirSync(join(raiz, 'src'), { recursive: true });
writeFileSync(join(raiz, 'src', 'fragments.json'), JSON.stringify(frag, null, 1), 'utf8');

for (const [k, v] of Object.entries(frag)) {
	const n = typeof v === 'string' ? v.length : Object.keys(v).length + ' iconos';
	console.log(`${k.padEnd(22)} ${n}`);
}
const restantes = Object.values(frag)
	.filter((v) => typeof v === 'string')
	.join('')
	.match(/(?:href|src|action)="\.\.?\/[^"]+"/g);
console.log('rutas relativas sin corregir:', restantes ?? 'ninguna');
