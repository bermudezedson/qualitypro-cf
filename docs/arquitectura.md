# Arquitectura

## Visión general

```
Navegador ──HTTPS──▶ Cloudflare (dominio qualitypro-v2.asiquedo.cl, certificado automático)
                        │
                        ├── Static Assets  ──▶ public/  (css, js, fuentes, imágenes del diseño, robots.txt)
                        │     se sirven antes que el Worker si la ruta coincide con un archivo
                        │
                        └── Worker qualitypro-v2 (Hono)
                              ├── GET /, /catalogo, /producto/:slug, /quiero-ser-distribuidor
                              │     render HTML = fragmentos del diseño + datos de D1
                              ├── GET /api/*, /sitemap.xml
                              ├── GET /media/*  ──▶ R2 qualitypro-v2-media
                              └── /admin/*      ──▶ panel (sesión por cookie) ──▶ D1 + R2
                                                     │
                                                     ▼
                                              D1 qualitypro-v2 (SQLite)
```

Todo corre en el borde de Cloudflare: no hay servidores propios, contenedores ni base de datos externa.
Los formularios de contacto y distribuidor abren WhatsApp con el mensaje armado, igual que la plantilla,
por lo que no requieren backend de correo.

## Flujo de una petición pública

1. Cloudflare resuelve el dominio y comprueba si la ruta es un asset estático (`public/`). Si lo es, lo
   sirve directamente con caché.
2. Si no, invoca al Worker. Hono enruta la petición (`src/index.ts`).
3. La ruta pide el catálogo a `getCatalogo()` (`src/db.ts`), que ejecuta un `batch` de 5 consultas a D1
   (categorías, productos, fotos, relaciones, resumen de fichas) y lo guarda en memoria del isolate
   durante 60 segundos. Las fichas completas se piden aparte solo en la página de producto.
4. `src/render.ts` compone la página: `layout()` arma `<head>`, cabecera, `<main>` y pie usando los
   fragmentos de `src/fragments.json`, e inyecta `window.QP_DATA` (lista ligera de productos y
   categorías) que usa `public/js/main.js` para el buscador y los filtros en el navegador.
5. La respuesta lleva `Cache-Control: public, max-age=60, s-maxage=600, stale-while-revalidate=86400`,
   así la red de Cloudflare la cachea hasta 10 minutos.

## Diseño y fragmentos

La plantilla HTML (`template-src/`) es la fuente de verdad del diseño. El script
`scripts/extraer-fragmentos.mjs` recorta los bloques estáticos (cabecera, hero, barra de certificaciones,
clientes, quiénes somos, distribuidor, contacto, pie, hero y lateral del catálogo, página de distribuidor,
íconos SVG por especie) y corrige las rutas relativas (`./catalogo.html` → `/catalogo`, etc.). El resultado
es `src/fragments.json`, que se versiona.

Las partes que dependen de datos (azulejos de categorías, tarjetas de producto, lateral del catálogo,
ficha de producto y pestañas) están escritas a mano en `src/render.ts` copiando el markup de la plantilla,
de modo que las clases de Tailwind ya compiladas en `public/css/styles.css` apliquen sin un build de CSS.

Regla práctica: **si se cambia la plantilla**, se copia a `template-src/`, se ejecuta
`npm run fragmentos` y se revisan a mano las piezas dinámicas de `render.ts`. Si se agregan clases de
Tailwind nuevas, hay que regenerar `styles.css` desde el proyecto de diseño, porque el CSS compilado solo
contiene las clases usadas en la plantilla.

## Modelo de datos (resumen)

| Tabla | Uso |
| --- | --- |
| `categorias` | Especies: `categoria_url` (slug), `categoria_animal` (nombre visible), `categoria_nombre` (línea), estado |
| `productos` | Nombre, `producto_url` (slug), `producto_sku`, presentación de envases, estado |
| `productos_categorias` | Relación N:N producto ↔ categoría |
| `productos_fotos` | Rutas en R2 (`productos/<archivo>`) con orden; la primera es la del catálogo |
| `ficha` | Información técnica asociada por `codigo` = SKU, en formato de secciones (ver base-de-datos.md) |
| `users` | Autores heredados de Laravel; solo se usan para las claves foráneas `usuario_id` |
| `sliders`, `articulos`, `articulos_categorias`, `categorias_articulos` | Heredadas; el diseño v2 no las usa |

Detalle en [base-de-datos.md](base-de-datos.md).

## Imágenes

- Las rutas guardadas en `productos_fotos.imagen` son claves de R2 (`productos/red-eggs-plus.jpg`).
- El Worker las sirve en `/media/<clave>` con `Cache-Control` de un día en el navegador y 30 días en la
  red de Cloudflare, y content-type desde los metadatos del objeto.
- En las tarjetas y en la ficha, el `<img>` se superpone al marcador "Imagen pendiente" y se elimina con
  `onerror` si el archivo no existe, así nunca se ve una imagen rota.
- Las imágenes del diseño (hero, fondos de categorías, logos de clientes) son assets estáticos en
  `public/assets/`; los fondos por especie se eligen en `FONDO_CATALOGO` (`render.ts`).

## Caché y consistencia

- Memoria del isolate: 60 s. El panel llama a `invalidarCache()` tras cada escritura, pero solo afecta al
  isolate que atendió la petición; otros isolates expiran solos en ≤ 60 s.
- Red de Cloudflare: `s-maxage=600`. Un cambio del panel puede tardar hasta 10 minutos en verse en una
  URL cacheada por la red. Para forzarlo: Cloudflare → Caching → Purge, o bajar `s-maxage` en
  `CACHE_PAGINA` (`src/index.ts`).
- El panel responde siempre con `Cache-Control: no-store`.

## SEO

- `<title>`, `meta description`, `canonical` y Open Graph por página.
- JSON-LD: `Organization` en inicio; `Product` + `BreadcrumbList` en cada producto.
- `sitemap.xml` generado desde D1 (inicio, catálogo, categorías, productos con `lastmod`).
- Búsquedas (`/catalogo?q=`) llevan `noindex, follow`. `/admin` está excluido en `robots.txt`.
- Redirecciones 301 desde las URLs `.html` de la plantilla a las rutas limpias.

## Seguridad

- Panel con sesión firmada HMAC-SHA256 (secret `ADMIN_SECRET`), cookie `HttpOnly; Secure; SameSite=Lax;
  Path=/admin`, 12 horas.
- Contraseña en el secret `ADMIN_PASSWORD`, comparada en tiempo constante.
- Peticiones de escritura solo desde el mismo origen (`Sec-Fetch-Site` / `Origin`).
- Todo lo que viene de la base se escapa con `esc()`; el HTML de la ficha técnica se limpia a etiquetas
  de formato básico (`limpiarHtml` en `src/ficha.ts`).
- Subidas: solo JPG, PNG y WebP, máximo 5 MB por archivo.
