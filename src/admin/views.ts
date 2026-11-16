/** Vistas HTML del panel de administración (server-rendered, sin framework de cliente). */
import { esc } from '../html';
import type { Seccion } from '../ficha';

export interface Aviso {
	tipo: 'ok' | 'error';
	texto: string;
}

export function layoutAdmin(titulo: string, cuerpo: string, opts: { activo?: string; aviso?: Aviso | null; sinMenu?: boolean } = {}): string {
	const nav = opts.sinMenu
		? ''
		: `<aside class="menu">
  <a class="marca" href="/admin"><img src="/assets/logo-qualitypro.svg" alt="Quality Pro" width="140"></a>
  <nav>
    <a href="/admin" class="${opts.activo === 'inicio' ? 'activo' : ''}">Inicio</a>
    <a href="/admin/productos" class="${opts.activo === 'productos' ? 'activo' : ''}">Productos</a>
    <a href="/admin/categorias" class="${opts.activo === 'categorias' ? 'activo' : ''}">Categorías</a>
    <a href="/admin/archivos" class="${opts.activo === 'archivos' ? 'activo' : ''}">Archivos SEO</a>
    <a href="/" target="_blank" rel="noopener">Ver sitio ↗</a>
  </nav>
  <form method="post" action="/admin/logout" class="salir"><button type="submit" class="btn btn-sec">Cerrar sesión</button></form>
</aside>`;
	const aviso = opts.aviso ? `<div class="aviso aviso-${opts.aviso.tipo}">${esc(opts.aviso.texto)}</div>` : '';
	return `<!DOCTYPE html>
<html lang="es-CL">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="noindex, nofollow">
<title>${esc(titulo)} · Admin Quality Pro</title>
<link rel="icon" href="/favicon.ico">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&display=swap">
<link rel="stylesheet" href="/css/admin.css">
<script defer src="/js/admin.js"></script>
</head>
<body class="${opts.sinMenu ? 'solo' : ''}">
${nav}
<main class="contenido">
${aviso}
${cuerpo}
</main>
</body>
</html>`;
}

export function vistaLogin(error: string | null, next: string): string {
	return layoutAdmin(
		'Ingresar',
		`<div class="login">
  <img src="/assets/logo-qualitypro.svg" alt="Quality Pro" width="200">
  <h1>Panel de administración</h1>
  ${error ? `<div class="aviso aviso-error">${esc(error)}</div>` : ''}
  <form method="post" action="/admin/login">
    <input type="hidden" name="next" value="${esc(next)}">
    <label>Contraseña<input type="password" name="password" required autofocus autocomplete="current-password"></label>
    <button type="submit" class="btn">Ingresar</button>
  </form>
</div>`,
		{ sinMenu: true }
	);
}

export function vistaInicio(n: { productos: number; habilitados: number; conFoto: number; conFicha: number; categorias: number }): string {
	return `<header class="cab"><h1>Inicio</h1></header>
<div class="tarjetas">
  <a class="kpi" href="/admin/productos"><strong>${n.productos}</strong><span>Productos</span></a>
  <a class="kpi" href="/admin/productos?estado=habilitado"><strong>${n.habilitados}</strong><span>Habilitados</span></a>
  <a class="kpi" href="/admin/productos?foto=sin"><strong>${n.productos - n.conFoto}</strong><span>Sin foto</span></a>
  <a class="kpi" href="/admin/productos?ficha=sin"><strong>${n.productos - n.conFicha}</strong><span>Sin ficha técnica</span></a>
  <a class="kpi" href="/admin/categorias"><strong>${n.categorias}</strong><span>Categorías</span></a>
</div>
<section class="panel">
  <h2>Cómo funciona</h2>
  <ul class="lista">
    <li>Los cambios se publican en el sitio en menos de un minuto (caché de 60 segundos).</li>
    <li>Las fotos se guardan en Cloudflare R2 y se muestran en <code>/media/…</code>.</li>
    <li>La ficha técnica se asocia por el <strong>código (SKU)</strong> del producto: sin código no se puede guardar ficha.</li>
  </ul>
</section>`;
}

export interface FilaProducto {
	id: number;
	nombre: string;
	slug: string;
	sku: string | null;
	estado: string;
	foto: string | null;
	categorias: string;
	tieneFicha: boolean;
}

export function vistaProductos(filas: FilaProducto[], filtros: { q: string; estado: string; foto: string; ficha: string }, total: number): string {
	const f = (v: string, o: string) => (v === o ? ' selected' : '');
	const estadoBadge = (e: string) => `<span class="badge badge-${e}">${esc(e)}</span>`;
	return `<header class="cab"><h1>Productos <small>${total}</small></h1><a class="btn" href="/admin/productos/nuevo">+ Nuevo producto</a></header>
<form class="filtros" method="get" action="/admin/productos">
  <input type="search" name="q" value="${esc(filtros.q)}" placeholder="Buscar por nombre, código o URL…">
  <select name="estado"><option value="">Todos los estados</option><option value="habilitado"${f(filtros.estado, 'habilitado')}>Habilitados</option><option value="deshabilitado"${f(filtros.estado, 'deshabilitado')}>Deshabilitados</option><option value="eliminado"${f(filtros.estado, 'eliminado')}>Eliminados</option></select>
  <select name="foto"><option value="">Con y sin foto</option><option value="con"${f(filtros.foto, 'con')}>Con foto</option><option value="sin"${f(filtros.foto, 'sin')}>Sin foto</option></select>
  <select name="ficha"><option value="">Con y sin ficha</option><option value="con"${f(filtros.ficha, 'con')}>Con ficha</option><option value="sin"${f(filtros.ficha, 'sin')}>Sin ficha</option></select>
  <button type="submit" class="btn btn-sec">Filtrar</button>
</form>
<table class="tabla">
  <thead><tr><th></th><th>Producto</th><th>Código</th><th>Categorías</th><th>Ficha</th><th>Estado</th><th></th></tr></thead>
  <tbody>
  ${
		filas.length
			? filas
					.map(
						(p) => `<tr>
    <td class="mini">${p.foto ? `<img src="/media/${esc(p.foto)}" alt="" loading="lazy">` : '<span class="sinfoto">sin foto</span>'}</td>
    <td><a href="/admin/productos/${p.id}"><strong>${esc(p.nombre)}</strong></a><br><small class="muted">/producto/${esc(p.slug)}</small></td>
    <td>${esc(p.sku ?? '')}</td>
    <td class="muted">${esc(p.categorias)}</td>
    <td>${p.tieneFicha ? '✓' : '<span class="muted">—</span>'}</td>
    <td>${estadoBadge(p.estado)}</td>
    <td class="acciones"><a class="btn btn-sm btn-sec" href="/admin/productos/${p.id}">Editar</a> <a class="btn btn-sm btn-sec" href="/producto/${esc(p.slug)}" target="_blank" rel="noopener">Ver</a></td>
  </tr>`
					)
					.join('')
			: '<tr><td colspan="7" class="vacio">No hay productos con esos filtros.</td></tr>'
	}
  </tbody>
</table>`;
}

export interface FormProducto {
	id?: number;
	nombre: string;
	slug: string;
	sku: string | null;
	presentacion: string | null;
	estado: string;
	categoriasIds: number[];
	fotos: { id: number; imagen: string; orden: number }[];
	secciones: Seccion[];
	codigoFicha: string | null;
}

export function vistaFormProducto(p: FormProducto, categorias: { id: number; nombre: string; animal: string }[]): string {
	const nuevo = !p.id;
	const action = nuevo ? '/admin/productos/nuevo' : `/admin/productos/${p.id}`;
	const sel = (e: string) => (p.estado === e ? ' selected' : '');
	const fotos = p.fotos.length
		? `<ul class="fotos">${p.fotos
				.map(
					(f, i) => `<li>
  <img src="/media/${esc(f.imagen)}" alt="">
  <div class="fotos-acciones">
    <span class="muted">#${f.orden}</span>
    ${i > 0 ? `<form method="post" action="/admin/productos/${p.id}/fotos/${f.id}/subir"><button class="btn btn-sm btn-sec" title="Mover antes">↑</button></form>` : ''}
    <form method="post" action="/admin/productos/${p.id}/fotos/${f.id}/eliminar" data-confirm="¿Eliminar esta foto?"><button class="btn btn-sm btn-peligro">Eliminar</button></form>
  </div></li>`
				)
				.join('')}</ul>`
		: '<p class="muted">Este producto no tiene fotos. La primera foto es la que se muestra en el catálogo.</p>';

	const secciones = p.secciones.length ? p.secciones : SECCIONES_BASE.map((t) => ({ clave: '', titulo: t, html: '', filas: [] as [string, string][] }));

	return `<header class="cab"><h1>${nuevo ? 'Nuevo producto' : esc(p.nombre)}</h1>${
		nuevo ? '' : `<a class="btn btn-sec" href="/producto/${esc(p.slug)}" target="_blank" rel="noopener">Ver en el sitio ↗</a>`
	}</header>

<form method="post" action="${action}" class="form" id="form-producto">
<div class="grid2">
  <section class="panel">
    <h2>Datos del producto</h2>
    <label>Nombre *<input name="nombre" required maxlength="255" value="${esc(p.nombre)}" data-slug-origen></label>
    <label>URL (slug) *<input name="slug" required maxlength="150" pattern="[a-z0-9-]+" value="${esc(p.slug)}" data-slug-destino><small class="muted">Se genera desde el nombre. Solo minúsculas, números y guiones. Dirección: /producto/&lt;slug&gt;</small></label>
    <label>Código (SKU)<input name="sku" maxlength="100" value="${esc(p.sku ?? '')}"><small class="muted">Identifica la ficha técnica. Ej.: QP-213</small></label>
    <label>Presentación / envases<input name="presentacion" maxlength="255" value="${esc(p.presentacion ?? '')}" placeholder="Envases de 1 kg y 25 kg"></label>
    <label>Estado<select name="estado"><option value="habilitado"${sel('habilitado')}>Habilitado (visible)</option><option value="deshabilitado"${sel('deshabilitado')}>Deshabilitado (oculto)</option><option value="eliminado"${sel('eliminado')}>Eliminado</option></select></label>
  </section>
  <section class="panel">
    <h2>Categorías (especies)</h2>
    <div class="checks">${categorias
			.map(
				(c) =>
					`<label class="check"><input type="checkbox" name="categorias" value="${c.id}"${p.categoriasIds.includes(c.id) ? ' checked' : ''}> ${esc(c.animal)} <small class="muted">(${esc(c.nombre)})</small></label>`
			)
			.join('')}</div>
    <p class="muted">La primera categoría marcada (en este orden) se usa como principal en tarjetas y relacionados.</p>
  </section>
</div>

<section class="panel">
  <h2>Ficha técnica</h2>
  ${
		p.sku
			? `<p class="muted">Asociada al código <strong>${esc(p.sku)}</strong>${p.codigoFicha && p.codigoFicha !== p.sku ? ` (registro existente con código ${esc(p.codigoFicha)})` : ''}. Cada sección es una pestaña en la ficha pública.</p>`
			: '<p class="aviso aviso-error" style="margin:0 0 12px">Ingresa un código (SKU) y guarda para poder editar la ficha técnica.</p>'
	}
  <div id="secciones" data-secciones>
  ${secciones.map((s, i) => seccionHtml(s, i)).join('')}
  </div>
  <button type="button" class="btn btn-sec" data-agregar-seccion>+ Agregar sección</button>
  <template id="tpl-seccion">${seccionHtml({ clave: '', titulo: '', html: '', filas: [] }, 999)}</template>
</section>

<div class="barra-guardar">
  <button type="submit" class="btn">${nuevo ? 'Crear producto' : 'Guardar cambios'}</button>
  <a class="btn btn-sec" href="/admin/productos">Volver</a>
</div>
</form>

${
	nuevo
		? ''
		: `<section class="panel">
  <h2>Fotos</h2>
  ${fotos}
  <form method="post" action="/admin/productos/${p.id}/fotos" enctype="multipart/form-data" class="subir">
    <label>Agregar fotos (JPG, PNG o WebP, máx. 5 MB c/u)<input type="file" name="fotos" accept="image/jpeg,image/png,image/webp" multiple required></label>
    <button type="submit" class="btn btn-sec">Subir</button>
  </form>
</section>
<section class="panel peligro">
  <h2>Zona de cuidado</h2>
  <form method="post" action="/admin/productos/${p.id}/eliminar" data-confirm="El producto dejará de mostrarse en el sitio (estado eliminado). ¿Continuar?"><button class="btn btn-peligro">Eliminar producto</button></form>
</section>`
}`;
}

const SECCIONES_BASE = ['DESCRIPCIÓN', 'COMPOSICIÓN', 'APORTE NUTRICIONAL', 'DOSIFICACIÓN', 'PRESENTACIÓN', 'ALMACENAMIENTO', 'VIDA ÚTIL', 'PRECAUCIONES'];

function seccionHtml(s: Seccion, i: number): string {
	const filas = s.filas.map(([a, b]) => `${a} | ${b}`).join('\n');
	return `<fieldset class="seccion" data-seccion>
  <div class="seccion-cab">
    <input name="ficha_titulo" value="${esc(s.titulo.toUpperCase())}" placeholder="TÍTULO DE LA SECCIÓN" maxlength="80" class="titulo">
    <div class="seccion-botones"><button type="button" class="btn btn-sm btn-sec" data-mover="-1" title="Subir">↑</button><button type="button" class="btn btn-sm btn-sec" data-mover="1" title="Bajar">↓</button><button type="button" class="btn btn-sm btn-peligro" data-quitar>Quitar</button></div>
  </div>
  <div class="editor">
    <div class="toolbar"><button type="button" data-cmd="bold" title="Negrita"><b>B</b></button><button type="button" data-cmd="italic" title="Cursiva"><i>I</i></button><button type="button" data-cmd="insertUnorderedList" title="Lista">• Lista</button><button type="button" data-cmd="removeFormat" title="Quitar formato">Limpiar</button></div>
    <div class="area" contenteditable="true" data-editor>${s.html}</div>
    <textarea name="ficha_html" hidden data-editor-destino>${esc(s.html)}</textarea>
  </div>
  <label class="tabla-label">Tabla (opcional): una fila por línea, columnas separadas por <code>|</code><textarea name="ficha_tabla" rows="${Math.min(8, Math.max(2, s.filas.length + 1))}" placeholder="VITAMINA A | 1.000.000 UI">${esc(filas)}</textarea></label>
</fieldset>`;
}

export interface FilaCategoria {
	id: number;
	nombre: string;
	slug: string;
	animal: string;
	estado: string;
	productos: number;
}

export function vistaCategorias(filas: FilaCategoria[]): string {
	return `<header class="cab"><h1>Categorías</h1><a class="btn" href="/admin/categorias/nueva">+ Nueva categoría</a></header>
<table class="tabla">
  <thead><tr><th>Especie (visible)</th><th>Línea</th><th>URL</th><th>Productos</th><th>Estado</th><th></th></tr></thead>
  <tbody>${filas
		.map(
			(c) => `<tr><td><strong>${esc(c.animal)}</strong></td><td>${esc(c.nombre)}</td><td class="muted">/catalogo?categoria=${esc(c.slug)}</td><td>${c.productos}</td><td><span class="badge badge-${esc(c.estado)}">${esc(c.estado)}</span></td><td class="acciones"><a class="btn btn-sm btn-sec" href="/admin/categorias/${c.id}">Editar</a></td></tr>`
		)
		.join('')}</tbody>
</table>
<p class="muted">Los íconos y fondos de cada especie están definidos en el diseño del sitio; para una especie nueva se usa un ícono genérico.</p>`;
}

export interface FormCategoria {
	id?: number;
	nombre: string;
	slug: string;
	animal: string;
	descripcion: string | null;
	estado: string;
}

export function vistaFormCategoria(c: FormCategoria): string {
	const nuevo = !c.id;
	const sel = (e: string) => (c.estado === e ? ' selected' : '');
	return `<header class="cab"><h1>${nuevo ? 'Nueva categoría' : esc(c.animal)}</h1></header>
<form method="post" action="${nuevo ? '/admin/categorias/nueva' : `/admin/categorias/${c.id}`}" class="form">
<section class="panel">
  <label>Nombre visible (especie) *<input name="animal" required maxlength="100" value="${esc(c.animal)}" placeholder="Aves" data-slug-origen></label>
  <label>Nombre de la línea *<input name="nombre" required maxlength="255" value="${esc(c.nombre)}" placeholder="Avicola"></label>
  <label>URL (slug) *<input name="slug" required maxlength="150" pattern="[a-z0-9-]+" value="${esc(c.slug)}" data-slug-destino></label>
  <label>Descripción<textarea name="descripcion" rows="3">${esc(c.descripcion ?? '')}</textarea></label>
  <label>Estado<select name="estado"><option value="habilitada"${sel('habilitada')}>Habilitada</option><option value="deshabilitada"${sel('deshabilitada')}>Deshabilitada</option><option value="eliminada"${sel('eliminada')}>Eliminada</option></select></label>
</section>
<div class="barra-guardar"><button type="submit" class="btn">${nuevo ? 'Crear categoría' : 'Guardar cambios'}</button><a class="btn btn-sec" href="/admin/categorias">Volver</a></div>
</form>`;
}

export interface ArchivoEditable {
	nombre: string;
	contenido: string;
	personalizado: boolean;
	url: string;
}

export function vistaArchivos(archivos: ArchivoEditable[]): string {
	return `<header class="cab"><h1>Archivos SEO</h1></header>
<p class="muted">Estos archivos se sirven en la raíz del sitio. Puedes usar <code>{{SITE_URL}}</code> y se reemplaza por la dirección del sitio. "Restaurar valor por defecto" vuelve al contenido generado automáticamente (en llms.txt incluye el catálogo completo actualizado).</p>
${archivos
	.map(
		(a) => `<section class="panel">
  <h2>${esc(a.nombre)} <small class="muted">· <a href="${esc(a.url)}" target="_blank" rel="noopener">ver en el sitio ↗</a> · ${a.personalizado ? 'contenido personalizado' : 'valor por defecto'}</small></h2>
  <form method="post" action="/admin/archivos" class="form">
    <input type="hidden" name="archivo" value="${esc(a.nombre)}">
    <label>Contenido<textarea name="contenido" rows="${a.nombre === 'llms.txt' ? 24 : 18}" spellcheck="false" style="font-family:ui-monospace,SFMono-Regular,Menlo,monospace;font-size:.85rem">${esc(a.contenido)}</textarea></label>
    <div style="display:flex;gap:10px;flex-wrap:wrap">
      <button type="submit" name="accion" value="guardar" class="btn">Guardar</button>
      <button type="submit" name="accion" value="restaurar" class="btn btn-sec" ${a.personalizado ? '' : 'disabled'} formnovalidate>Restaurar valor por defecto</button>
    </div>
  </form>
</section>`
	)
	.join('')}
<section class="panel">
  <h2>sitemap.xml</h2>
  <p class="muted">Se genera automáticamente desde la base de datos (inicio, catálogo, especies y productos habilitados). <a href="/sitemap.xml" target="_blank" rel="noopener">Ver sitemap ↗</a></p>
</section>`;
}
