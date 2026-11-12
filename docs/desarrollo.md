# Guía de desarrollo

## Requisitos

- Node.js 20 o superior (probado con 24).
- Cuenta de Cloudflare con acceso a la cuenta donde viven el Worker, la D1 y el R2.
- `wrangler` se instala como dependencia del proyecto (`npx wrangler`). Evitar la instalación global: en
  Linux ARM64 ha fallado por el binario opcional de `workerd`.

## Credenciales

Dos formas de autenticar `wrangler`:

1. Interactiva: `npx wrangler login` (abre el navegador).
2. Por token, útil en servidores y CI:

   ```bash
   export CLOUDFLARE_ACCOUNT_ID=…   # ID de la cuenta
   export CLOUDFLARE_API_TOKEN=…    # token con permisos Workers Scripts, D1, R2, Pages/Assets, DNS de la zona
   ```

Los secretos del panel para desarrollo local van en `.dev.vars` (ignorado por git):

```
ADMIN_PASSWORD=una-contraseña-local
ADMIN_SECRET=cadena-larga-al-azar
```

Nunca se commitean tokens, `.dev.vars` ni archivos `.env`.

## Ejecutar en local

```bash
npm install
npm run dev              # D1 y R2 locales (vacíos): útil para trabajar en el diseño y el panel
npm run dev -- --remote  # usa la D1 y el R2 reales: útil para ver datos de verdad
```

Con la D1 local vacía, cargar esquema y datos:

```bash
npx wrangler d1 execute qualitypro-v2 --local --file db/migrations/0001_esquema_inicial.sql
npx wrangler d1 execute qualitypro-v2 --local --file db/seed-desde-mysql-2026-11-12.sql
```

El panel local queda en http://localhost:8787/admin con la contraseña de `.dev.vars`.

## Chequeos antes de publicar

```bash
npm run check     # tipos
npx wrangler deploy --dry-run --outdir dist   # empaqueta sin publicar
```

No hay suite de pruebas automatizadas todavía. Lo que se ha usado como verificación:

- `curl` a cada ruta comprobando código HTTP, título y cantidad de tarjetas.
- Capturas de pantalla con Playwright (Chromium headless) comparando plantilla vs. sitio en escritorio
  (1366 px) y móvil (390 px). Las alturas de página deben coincidir.

## Cómo hacer cambios frecuentes

### Cambiar textos o bloques estáticos del diseño

1. Editar el HTML en `template-src/` (o reemplazarlo por una nueva exportación del diseño).
2. `npm run fragmentos` → regenera `src/fragments.json`. El script avisa si quedan rutas relativas sin
   corregir.
3. Si el bloque es dinámico (tarjetas, azulejos, pestañas), ajustar también `src/render.ts`.

### Agregar una ruta o página

- Declararla en `src/index.ts` con `app.get(...)` y una función de página en `src/render.ts` que
  devuelva el contenido de `<main>`. `layout()` se encarga del resto.
- Añadirla al sitemap si es indexable.

### Cambiar una consulta o el modelo

- Las consultas públicas viven en `src/db.ts`; las del panel en `src/admin/index.ts`.
- Cambios de esquema: nueva migración numerada en `db/migrations/` y aplicar con
  `npx wrangler d1 execute qualitypro-v2 --remote --file db/migrations/000N_….sql`.

### Trabajar con la ficha técnica

El formato de la tabla `ficha` es heredado (ver base-de-datos.md). `src/ficha.ts` lo convierte a
secciones y viceversa (`serializarFicha` en `src/admin/index.ts`). Cualquier campo nuevo de la ficha debe
pasar por esos dos puntos.

## Convenciones

- Código y comentarios en español; identificadores descriptivos (`tarjetaProducto`, `getCatalogo`).
- Nada de HTML sin escapar: usar `esc()` para texto y `jsonScript()` para JSON incrustado. El único HTML
  crudo permitido es el de la ficha técnica, ya filtrado.
- Tabulaciones, comillas simples, sin punto y coma omitido (formato de Prettier por defecto).
- Commits en español, en imperativo, con cuerpo cuando el cambio lo amerita.
- Versionado semántico; actualizar `CHANGELOG.md` y `package.json` en cada versión y etiquetar `vX.Y.Z`.

## Estructura de datos que llega al navegador

`layout()` incrusta `window.QP_DATA`:

```js
{
  products: [{ slug, name, text }],   // text = nombre + resumen + presentación + especies, para el buscador
  catNames: { aves: 'Aves', … },
  catalogBg: { aves: 'granja-aves.jpg', … }
}
```

`public/js/main.js` solo lee esta variable; no hace peticiones a la API. La API JSON existe para
integraciones externas o para una futura versión con más interactividad.
