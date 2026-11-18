# Despliegue y operación

## Recursos en Cloudflare

| Recurso | Nombre | Notas |
| --- | --- | --- |
| Worker | `qualitypro-v2` | Código + assets estáticos |
| Dominios | `qualitypro.cl` (principal), `qualitypro-v2.asiquedo.cl` (alias) | Custom domains del Worker; Cloudflare crea el DNS y el certificado. `www.qualitypro.cl` redirige 301 |
| D1 | `qualitypro-v2` | ID en `wrangler.toml` (`database_id`) |
| R2 | `qualitypro-v2-media` | Fotos de productos |
| Secrets | `ADMIN_PASSWORD`, `ADMIN_SECRET` | Panel de administración |
| Secrets | `RESEND_API_KEY` | Correo de aviso de los formularios (Resend) |
| Secrets / var | `TURNSTILE_SECRET` / `TURNSTILE_SITE_KEY` | Anti-bots Cloudflare Turnstile (opcional) |
| Variable | `SITE_URL` | URL canónica (https://qualitypro.cl), usada en canonical, sitemap, JSON-LD y correos |
| Variable | `HOSTS_ALIAS` | Hosts que redirigen 301 al canónico (www y dominio de pruebas) |

Todo está declarado en `wrangler.toml`; `routes` con `custom_domain = true` debe ir a nivel raíz del
archivo (si queda bajo `[vars]` se ignora).

> **Importante:** `routes` es la lista autoritativa de dominios del Worker. En cada `wrangler deploy`,
> wrangler **elimina** los dominios personalizados que no figuren ahí, incluidos los agregados a mano en
> el panel de Cloudflare, y con ellos su registro DNS. Nunca agregues un dominio solo desde el panel: añádelo
> a `routes` y despliega. (Incidente del 2026-11-18: qualitypro.cl estuvo caído unos minutos por esto.)

## Publicar

```bash
npm run check
npm run deploy          # = npx wrangler deploy
```

El deploy sube el bundle y los archivos de `public/` y queda activo en segundos. Cada deploy crea una
versión; se pueden ver con `npx wrangler deployments list` y volver atrás con
`npx wrangler rollback`.

## Secretos

```bash
npx wrangler secret put ADMIN_PASSWORD   # pide el valor por consola
npx wrangler secret put ADMIN_SECRET     # cadena larga al azar: openssl rand -hex 32
npx wrangler secret put RESEND_API_KEY    # API key de Resend (re_…)
npx wrangler secret put TURNSTILE_SECRET  # secreto del widget Turnstile (opcional)
npx wrangler secret list
```

Cambiar `ADMIN_PASSWORD` no requiere deploy. Cambiar `ADMIN_SECRET` invalida todas las sesiones
abiertas del panel.

## Logs y diagnóstico

```bash
npx wrangler tail                 # logs en vivo (console.error del Worker incluye errores de D1)
npx wrangler d1 info qualitypro-v2
npx wrangler d1 execute qualitypro-v2 --remote --command "SELECT COUNT(*) FROM productos"
```

En el panel de Cloudflare: Workers & Pages → qualitypro-v2 → Metrics (peticiones, errores, CPU) y
Logs. D1 → qualitypro-v2 → Metrics (consultas, filas leídas/escritas).

## Caché

- Páginas públicas: 60 s en navegador, 10 min en la red de Cloudflare.
- Imágenes `/media/*`: 1 día en navegador, 30 días en la red.
- Assets estáticos: gestionados por Workers Static Assets (con `ETag`).

Para forzar que un cambio se vea de inmediato: Cloudflare → Caching → Configuration → Purge Everything
(o purga por URL).

## Respaldos

- D1: `npx wrangler d1 export qualitypro-v2 --remote --output respaldo.sql` genera un volcado SQL
  completo. Conviene programarlo (cron en un servidor o GitHub Action) y guardarlo fuera de Cloudflare.
- R2: listar y copiar objetos con `npx wrangler r2 object get` o con cualquier cliente S3 usando
  credenciales de API de R2.
- El seed en `db/` es el estado inicial del 2026-11-12, no un respaldo vigente.

## Costos y límites (plan gratuito, referencia)

- Workers: 100 000 peticiones/día. D1: 5 millones de filas leídas/día, 100 000 escritas/día, 5 GB.
  R2: 10 GB y 1 millón de operaciones de clase A/mes. Static Assets: ilimitado.
- Con el tráfico de un sitio corporativo esto sobra; si se supera, el plan Workers Paid (5 USD/mes) amplía
  todos los límites.

## Entornos

Hoy existe un solo entorno (producción en `qualitypro-v2.asiquedo.cl`). Para un entorno de pruebas:

```toml
[env.staging]
name = "qualitypro-v2-staging"
routes = [{ pattern = "qualitypro-v2-staging.asiquedo.cl", custom_domain = true }]
[[env.staging.d1_databases]]
binding = "DB"
database_name = "qualitypro-v2-staging"
database_id = "…"
```

y desplegar con `npx wrangler deploy --env staging`.

## Checklist de puesta en producción (realizada el 2026-11-18)

1. Subir las fotos faltantes desde el panel.
2. Cambiar `SITE_URL` y `routes` en `wrangler.toml` al dominio definitivo (por ejemplo `qualitypro.cl`) y
   desplegar; Cloudflare emite el certificado.
3. Configurar redirecciones 301 desde las URLs antiguas de WordPress (`/p/<categoria>/`, `/n/<producto>/`)
   hacia `/catalogo?categoria=…` y `/producto/…`, en el Worker o con reglas de Cloudflare.
4. Enviar `sitemap.xml` en Google Search Console.
5. Rotar `ADMIN_PASSWORD` y `ADMIN_SECRET`.
6. Programar el respaldo de D1.
