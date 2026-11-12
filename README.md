# Quality Pro v2 — sitio 100 % en Cloudflare

Sitio público y panel de administración de **Quality Pro** (nutrición y salud animal, Chile) construido íntegramente
sobre la plataforma de Cloudflare: **Workers** (aplicación), **D1** (base de datos SQLite), **R2** (imágenes) y
**Workers Static Assets** (CSS, JS, fuentes e imágenes del diseño).

- Sitio: https://qualitypro-v2.asiquedo.cl
- Panel: https://qualitypro-v2.asiquedo.cl/admin
- Versión: **1.0.0** (ver [CHANGELOG](CHANGELOG.md))

## Stack

| Capa | Tecnología |
| --- | --- |
| Aplicación | [Hono](https://hono.dev) + TypeScript en Cloudflare Workers, render HTML en el servidor |
| Base de datos | Cloudflare D1 (`qualitypro-v2`), esquema migrado desde MySQL |
| Imágenes | Cloudflare R2 (`qualitypro-v2-media`), servidas por el Worker en `/media/*` |
| Diseño | Plantilla HTML + Tailwind v4 compilado + JS vanilla (`template-src/`), reutilizada sin cambios visuales |
| Herramientas | `wrangler` 4, `tsc` (solo chequeo de tipos; wrangler empaqueta con esbuild) |

No hay framework de frontend ni paso de build de CSS: el Worker compone el HTML del diseño con los datos de D1.

## Estructura

```
src/
  index.ts          Rutas públicas (home, catálogo, producto, distribuidor, API, sitemap, /media)
  render.ts         Páginas y componentes con el markup exacto del diseño
  db.ts             Acceso a D1, tipos y caché en memoria (60 s)
  ficha.ts          Conversión de la tabla `ficha` a pestañas de información técnica
  html.ts           Escapado HTML / JSON seguro
  fragments.json    Bloques estáticos extraídos de la plantilla (generado)
  admin/            Panel: auth.ts (sesión), index.ts (rutas), views.ts (vistas)
public/             Assets estáticos: css/, js/, fonts/, assets/, favicon, robots.txt
template-src/       Plantilla HTML original (fuente de los fragmentos)
scripts/            extraer-fragmentos.mjs
db/                 Esquema D1, seed inicial y conversor MySQL → SQLite
docs/               Documentación de desarrollo y operación
wrangler.toml       Configuración del Worker, bindings y dominio
```

## Inicio rápido

```bash
npm install
cp .dev.vars.example .dev.vars        # contraseña y secreto del panel para desarrollo local
npx wrangler login                    # o exportar CLOUDFLARE_API_TOKEN / CLOUDFLARE_ACCOUNT_ID
npm run dev                           # http://localhost:8787  (D1 y R2 locales, vacíos)
npm run dev -- --remote               # usa la D1 y el R2 reales de la cuenta
```

Comandos:

| Comando | Qué hace |
| --- | --- |
| `npm run dev` | Servidor local con `wrangler dev` |
| `npm run check` | Chequeo de tipos con TypeScript |
| `npm run deploy` | Publica el Worker (con assets) en Cloudflare |
| `npm run fragmentos` | Regenera `src/fragments.json` desde `template-src/` |
| `npm run db:schema` / `npm run db:seed` | Crea el esquema / carga el seed en la D1 remota |

## Documentación

- [Arquitectura](docs/arquitectura.md): flujo de una petición, modelo de datos, caché, imágenes, SEO.
- [Desarrollo](docs/desarrollo.md): entorno local, cómo tocar el diseño, convenciones, pruebas.
- [Despliegue y operación](docs/despliegue.md): deploy, secretos, dominio, rollback, logs, costos.
- [Base de datos](docs/base-de-datos.md): tablas, formato de la ficha técnica, migraciones, consultas útiles.
- [Panel de administración](docs/admin.md): manual de uso y seguridad.

## Licencia

Código y contenidos propiedad de Quality Pro SpA. Uso interno.
