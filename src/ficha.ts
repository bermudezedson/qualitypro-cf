import type { Ficha } from './db';
import { textoPlano } from './db';
import { esc } from './html';

export interface Seccion {
	clave: string; // ej. "descripcion", "aporte-nutricional"
	titulo: string; // ej. "Descripción"
	html: string; // contenido HTML (viene de la BD con <b>, <br>)
	filas: [string, string][]; // tabla opcional
}

/** Convierte el formato de la tabla `ficha` (titulos|…, descs|…, withtables|…, tables JSON) en secciones. */
export function parsearFicha(f: Ficha): Seccion[] {
	const titulos = f.titulos.split('|');
	const descs = f.descs.split('|');
	const conTabla = (f.withtables ?? '').split('|');
	let tablas: unknown[] = [];
	try {
		tablas = f.tables ? (JSON.parse(f.tables) as unknown[]) : [];
	} catch {
		tablas = [];
	}
	const secciones: Seccion[] = [];
	titulos.forEach((t, i) => {
		const titulo = t.trim();
		if (!titulo) return;
		const html = (descs[i] ?? '').trim();
		const filas: [string, string][] = [];
		if (conTabla[i] === 'true' && Array.isArray(tablas[i])) {
			for (const fila of tablas[i] as string[]) {
				const [a, ...resto] = String(fila).split('|');
				filas.push([a.trim(), resto.join('|').trim()]);
			}
		}
		if (!textoPlano(html) && !filas.length) return;
		secciones.push({ clave: clave(titulo), titulo: tituloLegible(titulo), html, filas });
	});
	return secciones;
}

function clave(t: string): string {
	return t
		.normalize('NFD')
		.replace(/[̀-ͯ]/g, '')
		.toLowerCase()
		.replace(/[^a-z0-9]+/g, '-')
		.replace(/^-|-$/g, '');
}

/** "APORTE NUTRICIONAL" -> "Aporte nutricional" */
function tituloLegible(t: string): string {
	const s = t.trim().toLowerCase();
	return s.charAt(0).toUpperCase() + s.slice(1);
}

/** Pestañas (role=tablist) con el markup del diseño. */
export function renderTabs(secciones: Seccion[]): string {
	const base =
		'inline-flex items-center justify-center gap-2 whitespace-nowrap text-sm font-medium cursor-pointer transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 disabled:cursor-not-allowed [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 hover:bg-accent hover:text-accent-foreground py-2 h-12 shrink-0 rounded-none border-b-2 px-5';
	return secciones
		.map((s, i) => {
			const estado = i === 0 ? 'border-primary bg-secondary text-primary' : 'border-transparent text-muted-foreground';
			return `<button role="tab" id="tab-${s.clave}" aria-controls="product-panel" aria-selected="${i === 0}" data-tab="${s.clave}" class="${base} ${estado}">${esc(s.titulo)}</button>`;
		})
		.join('');
}

/** Paneles de las pestañas. El HTML de la ficha viene de la base de datos propia (admin). */
export function renderPaneles(secciones: Seccion[]): string {
	return secciones
		.map((s, i) => {
			const cuerpo = s.html ? `<div class="ficha-texto">${limpiarHtml(s.html)}</div>` : '';
			const tabla = s.filas.length
				? `<table class="mt-4 w-full border-collapse text-sm"><tbody>${s.filas
						.map(
							([a, b]) =>
								`<tr class="border-b"><td class="py-2 pr-4 font-semibold text-navy">${esc(a)}</td><td class="py-2 text-right text-navy sm:text-left">${esc(b)}</td></tr>`
						)
						.join('')}</tbody></table>`
				: '';
			return `<div data-panel="${s.clave}"${i === 0 ? '' : ' class="hidden"'}>${cuerpo}${tabla}</div>`;
		})
		.join('');
}

/** Permite solo etiquetas de formato básico y convierte saltos de línea en <br>. */
function limpiarHtml(html: string): string {
	return html
		.replace(/<(?!\/?(b|strong|i|em|u|br|p|ul|ol|li|sup|sub)\b)[^>]*>/gi, '')
		.replace(/\son\w+="[^"]*"/gi, '')
		.replace(/\r?\n/g, '<br>')
		.replace(/(<br>\s*){3,}/g, '<br><br>');
}

/** Resumen corto de la primera sección para tarjetas y meta description. */
export function resumenFicha(secciones: Seccion[], max = 200): string {
	const t = secciones.length ? textoPlano(secciones[0].html) : '';
	if (t.length <= max) return t;
	const corte = t.slice(0, max);
	const punto = corte.lastIndexOf('. ');
	return (punto > 80 ? corte.slice(0, punto + 1) : corte.trimEnd() + '…').trim();
}
