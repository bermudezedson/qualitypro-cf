# SEO: URLs, metadatos y redirecciones 301 desde el sitio actual

Objetivo: que al cambiar el dominio `qualitypro.cl` desde WordPress a esta versión no se pierda
posicionamiento. Todas las URLs del sitio actual tienen un destino 301 en la v2, y las URLs nuevas son
limpias, estables y con títulos y descripciones únicos.

## Estructura de URLs de la v2

| Tipo | URL | Ejemplo |
| --- | --- | --- |
| Inicio | `/` | |
| Catálogo completo | `/catalogo` | |
| Categoría (especie) | `/catalogo/<slug>` | `/catalogo/aves` |
| Búsqueda | `/catalogo?q=<texto>` | `noindex, follow` |
| Producto | `/producto/<slug>` | `/producto/red-eggs-plus` |
| Distribuidores | `/quiero-ser-distribuidor` | |
| Imágenes | `/media/<clave R2>` | |

Reglas: sin barra final, sin extensión, minúsculas y guiones. Cualquier variante (barra final,
`index.php`, `.html`, `?categoria=`) responde 301 a la forma canónica, en un solo salto.

Los slugs de categoría son los del diseño (`aves`, `vacas`, `caballos`, `perros-y-gatos`, `cerdos`,
`ovejas-y-cabras`, `abejas`, `peces`, `higiene`) y se administran en `/admin/categorias`.

## Títulos y descripciones

| Página | `<title>` | Meta description |
| --- | --- | --- |
| Inicio | Quality Pro \| Nutrición y salud animal en Chile | Especies + fabricación nacional + despacho |
| Catálogo | Catálogo de productos de nutrición animal \| Quality Pro | Resumen de líneas |
| Categoría | Productos para aves \| Nutrición animal \| Quality Pro | **`categoria_descripcion`** de la base (editable en el panel); también es el subtítulo del hero |
| Producto | Red Eggs Plus \| Aves \| Quality Pro | Primeras frases de la sección "Descripción" de la ficha (≤ 155 caracteres); si no hay ficha, texto generado con presentación y especie |
| Distribuidor | Quiero ser distribuidor \| Red de distribuidores Quality Pro | fija |

Además: `canonical` absoluto, Open Graph con imagen (foto del producto o imagen por defecto), JSON-LD
`Organization` (inicio), `CollectionPage` + `BreadcrumbList` (categoría), `Product` + `BreadcrumbList`
(producto), `sitemap.xml` con categorías y productos, `robots.txt` (editable en el panel; por defecto permite buscadores y rastreadores de IA y excluye `/admin`) y `llms.txt` (editable; por defecto generado desde la base con empresa, especies y catálogo).

Los nombres de producto se guardan en mayúsculas en la base y se muestran en formato título
(`nombreBonito` en `src/db.ts`): "RED EGGS PLUS" → "Red Eggs Plus", conservando siglas (QP, ADE, HCL,
B12) y conectores en minúscula.

## Inventario del sitio actual (qualitypro.cl, WordPress + WooCommerce)

Fuente: `sitemap_index.xml`, `product-sitemap.xml`, `post-sitemap.xml`, `category-sitemap.xml` y el menú.

| Tipo | Cantidad | Patrón | Destino en la v2 |
| --- | --- | --- | --- |
| Categorías | 10 | `/p/<slug>/` | `/catalogo/<slug v2>` |
| Productos | 76 | `/n/<slug>/` | `/producto/<slug v2>` (62) o la categoría de la especie (14) |
| Listado | 1 | `/salud-y-nutricion-animal/` | `/catalogo` |
| Blog | 1 + 5 entradas | `/category/blog/`, `/<entrada>/` | inicio o el producto del que habla la entrada |
| Archivos de categoría | 2 | `/category/destacados/`, `/category/sin-categoria/` | `/catalogo`, `/` |
| Búsqueda | | `/?s=<texto>` | `/catalogo?q=<texto>` |
| Etiquetas y paginación | | `/tag/…`, `/page/N` | `/catalogo` |
| Feeds, autor, login | | `/feed`, `/author/…`, `/wp-login.php` | `/` |
| Imágenes de WordPress | | `/wp-content/uploads/…` | 404 (no existen en la v2) |

### Mapa de categorías

| Producción | v2 |
| --- | --- |
| `/p/avicola/` | `/catalogo/aves` |
| `/p/bovinos/` | `/catalogo/vacas` |
| `/p/equinos/` | `/catalogo/caballos` |
| `/p/mascotas/` | `/catalogo/perros-y-gatos` |
| `/p/ovinos/` | `/catalogo/ovejas-y-cabras` |
| `/p/caprinos/` | `/catalogo/ovejas-y-cabras` |
| `/p/porcinos/` | `/catalogo/cerdos` |
| `/p/apicola/` | `/catalogo/abejas` |
| `/p/acuicola/` | `/catalogo/peces` |
| `/p/higiene/` | `/catalogo/higiene` |

### Mapa de productos

Generado por `scripts/generar-redirecciones.py` a partir de `db/produccion-productos-2026-11.json`
(export de la API de WooCommerce) y la lista de productos de la v2:

- 42 slugs idénticos → `/producto/<slug>`.
- 12 emparejados por nombre (p. ej. `/n/metionina/` → `/producto/dl-metionina`,
  `/n/premix-vitaminico-cerdos/` → `/producto/premix-vitaminico-cerdos-qp`).
- 12 asignados a mano en `OVERRIDES` del script (p. ej. `/n/creatina/` → `/producto/creatina-monohidratada`,
  los premix de pollita y broiler → los núcleos equivalentes).
- 14 productos que no existen en la v2 (Hoof Health, Ovipel, Protein Plus, Timol, Cloruro de colina,
  fosfatos mono y tricálcico, etc.) → página de su especie. Si se crean en el panel con el mismo slug,
  basta regenerar el mapa para que apunten al producto.

El mapa completo está en `src/redirecciones.json`; la lógica en `src/redirecciones.ts`.

### Entradas del blog

| Producción | v2 |
| --- | --- |
| `/block-ovino/` | `/producto/block-ovino` |
| `/block-crianza-engorda/` | `/producto/block-crianza-engorda` |
| `/levadura-cerveza-inactivada/` | `/producto/levadura-de-cerveza` |
| `/doping-free/` | `/catalogo/caballos` |
| `/productos-destacados/` | `/catalogo` |

## Cómo se aplican

Un middleware de Hono (`src/index.ts`) evalúa `resolverRedireccion()` en cada GET antes del enrutado y
responde `301` con `Cache-Control: public, max-age=3600`. Como el Worker atiende el dominio, no hace
falta configurar reglas en Cloudflare; cuando `qualitypro.cl` apunte a este Worker, las redirecciones
funcionan de inmediato. Hoy se pueden probar en `qualitypro-v2.asiquedo.cl` con los mismos paths.

Mantenimiento:

```bash
python3 scripts/generar-redirecciones.py   # vuelve a leer la v2 y regenera src/redirecciones.json
npm run deploy
```

Pruebas rápidas:

```bash
for p in /p/avicola/ /n/potenza-massima/ /salud-y-nutricion-animal/ '/catalogo?categoria=aves'; do
  curl -s -o /dev/null -w "$p -> %{http_code} %{redirect_url}\n" "https://qualitypro-v2.asiquedo.cl$p"; done
```

## Checklist para el cambio de dominio

1. Antes: exportar de Google Search Console las páginas con clics de los últimos 12 meses y comprobar que
   cada una está en el mapa (`src/redirecciones.json` o reglas genéricas).
2. En `wrangler.toml`: `routes` y `SITE_URL` al dominio definitivo; `npm run deploy`.
3. En Cloudflare: `www.qualitypro.cl` → 301 a `qualitypro.cl` (Bulk Redirects o regla), HTTPS forzado.
4. Verificar con `curl` una muestra de URLs antiguas (categorías, 10 productos, blog).
5. En Search Console: añadir la propiedad, enviar `sitemap.xml`, y usar "Cambio de dirección" solo si
   cambiara el dominio (aquí es el mismo dominio, no aplica).
6. Mantener las redirecciones al menos 12 meses; no eliminar el mapa aunque el tráfico antiguo baje.
