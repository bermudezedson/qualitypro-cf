# Changelog

Formato basado en [Keep a Changelog](https://keepachangelog.com/es/1.1.0/). Versionado semántico.

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
