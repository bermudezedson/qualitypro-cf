# Changelog

Formato basado en [Keep a Changelog](https://keepachangelog.com/es/1.1.0/). Versionado semántico.

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
