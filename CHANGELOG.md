# Changelog

Formato basado en [Keep a Changelog](https://keepachangelog.com/es/1.1.0/). Versionado semántico.

## [1.5.1] - 2026-11-18

### Corregido

- Redirecciones 301 para las subcategorías de WooCommerce `/a/alimento-para-<especie>/` y
  `/a/salud-animal-para-<especie>/` (no estaban en los sitemaps) y descarte de parámetros de paginación
  (`product-page`, `paged`, `orderby`…). Las 119 URLs del rastreo del sitio anterior terminan en 200.

## [1.5.0] - 2026-11-18

### Puesta en producción

- El sitio pasa a servir **https://qualitypro.cl** (dominio personalizado del Worker). `SITE_URL` apunta al
  dominio definitivo; `www.qualitypro.cl` y `qualitypro-v2.asiquedo.cl` redirigen 301 (`HOSTS_ALIAS`).
- Las redirecciones 301 del sitio WordPress anterior quedan activas en el dominio real.

### Añadido

- Respuesta automática por correo a quien escribe (contacto y distribuidor), con asunto y texto editables en
  el panel y marcadores `{{nombre}}` y `{{empresa}}`; se puede desactivar.
- Teléfono de los formularios con prefijo fijo `+56 9` y 8 dígitos, formateado en el navegador y validado en
  el servidor (`+56 9 1234 5678`).

### Corregido

- `wrangler.toml` declara **todos** los dominios personalizados del Worker: al desplegar, wrangler elimina
  los dominios que no estén en `routes` (incidente de 2026-11-18, ver docs/despliegue.md).

## [1.4.0] - 2026-11-18

### Añadido

- Formularios de contacto y distribuidor (corto y completo) con envío real: `POST /api/formularios/<tipo>`
  valida, guarda en la tabla `leads` de D1 (migración `0004`) y avisa por correo con Resend (reply-to al
  visitante). La cotización de la ficha de producto se mantiene por WhatsApp.
- Anti-bots: campo trampa (honeypot), límite de 5 envíos por IP cada 15 minutos y Cloudflare Turnstile
  opcional (`TURNSTILE_SITE_KEY` + secret `TURNSTILE_SECRET`).
- Panel **Contactos**: bandeja con filtros, detalle, estado (nuevo / atendido / descartado), exportación CSV
  y configuración de correos destino y remitente. Contador de contactos nuevos en el inicio.

### Cambiado

- `js/main.js`: los formularios envían por `fetch` y muestran confirmación o error en línea; ya no abren
  WhatsApp salvo la cotización de producto.

## [1.3.0] - 2026-11-17

### Añadido

- `llms.txt` (guía para asistentes de IA, formato llmstxt.org) generado desde la base: empresa, contacto,
  especies con su descripción y el catálogo completo con enlaces.
- `robots.txt` y `llms.txt` editables desde el panel en **Archivos SEO**, con botón para restaurar el valor
  por defecto y marcador `{{SITE_URL}}`. Se guardan en la nueva tabla `ajustes` (migración `0003`).
- `robots.txt` por defecto permite buscadores, Ads, imágenes y rastreadores de IA (Google-Extended,
  GPTBot, OAI-SearchBot, ClaudeBot, meta-externalagent, etc.), bloquea `/admin` y enlaza el sitemap.

### Cambiado

- `robots.txt` deja de ser un archivo estático y lo sirve el Worker.

## [1.2.0] - 2026-11-17

### Añadido

- Zoom de fotos en la ficha de producto: al hacer clic en la imagen principal o en el botón de lupa se
  abre un visor a pantalla completa con flechas, teclado (Escape, ← →) y deslizamiento táctil.

## [1.1.1] - 2026-11-16

### Corregido

- La ficha de producto solo mostraba la primera foto. Ahora incluye galería: imagen principal y miniaturas
  con cambio al clic (`public/css/extra.css`, `js/main.js`); el JSON-LD `Product` lista todas las fotos.

## [1.1.0] - 2026-11-16

### Añadido

- URLs limpias de categoría: `/catalogo/<especie>` (antes `/catalogo?categoria=`), con H1 y subtítulo
  propios, `CollectionPage` + `BreadcrumbList` en JSON-LD y canonical.
- Redirecciones 301 del sitio actual en WordPress (`/p/<categoría>/`, `/n/<producto>/`, listado, blog,
  búsqueda `?s=`, etiquetas, feeds) y de las URLs antiguas de la v2 (`?categoria=`, `.html`, barra final,
  `index.php`). Mapa en `src/redirecciones.json`, generado por `scripts/generar-redirecciones.py`;
  documentación en `docs/seo-redirecciones.md`.
- Meta description por categoría guardada en `categoria_descripcion` (migración `0002`), editable en el panel.
- Imagen Open Graph por defecto en todas las páginas.

### Cambiado

- Títulos y descripciones de inicio, catálogo, categorías, productos y distribuidor (≤ 60 / ≤ 155
  caracteres, con especie y marca).
- Nombres de producto en formato título en todo el sitio público ("Red Eggs Plus" en vez de
  "RED EGGS PLUS"), conservando siglas.
- Enlaces internos (azulejos, lateral, chips, pie, sitemap, API) apuntan a las URLs nuevas.

## [1.0.0] - 2026-11-12

Primera versión del sitio Quality Pro 100 % en Cloudflare, como proyecto nuevo e independiente del sitio
anterior (Laravel + Svelte en EC2).

### Añadido

- Worker en Hono + TypeScript con render en el servidor y el diseño de la plantilla `migracion-v2`
  reproducido sin cambios visuales (verificado con capturas en escritorio y móvil).
- Páginas: inicio, catálogo con filtro por especie y búsqueda, ficha de producto con pestañas de
  información técnica y productos relacionados, formulario de distribuidor, página 404.
- API JSON pública: `/api/productos`, `/api/categorias`. `sitemap.xml` dinámico, `robots.txt`.
- Base de datos D1 `qualitypro-v2` migrada desde MySQL (10 tablas, 760 filas) con conversor
  `db/mysql2sqlite.py` y seed reproducible.
- Imágenes en R2 `qualitypro-v2-media` servidas en `/media/*`, con 50 fotos de productos cargadas y
  marcador "Imagen pendiente" cuando no hay foto.
- Panel `/admin`: login con contraseña y cookie firmada, productos (datos, categorías, estado, fotos a
  R2 con orden, ficha técnica por secciones con tablas), categorías, contadores de inicio.
- SEO: títulos y descripciones por página, canonical, Open Graph, JSON-LD (Organization, Product,
  BreadcrumbList), redirecciones 301 de las URLs `.html` de la plantilla.
- Documentación en `docs/` y este changelog.
