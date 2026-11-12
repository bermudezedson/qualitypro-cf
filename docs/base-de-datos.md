# Base de datos (Cloudflare D1)

D1 es SQLite gestionado. La base `qualitypro-v2` se creó a partir de la base MySQL del sitio anterior
(`asiquedo_qualitypro` en RDS) con el conversor `db/mysql2sqlite.py`.

## Archivos

- `db/migrations/0001_esquema_inicial.sql`: esquema completo (10 tablas, 17 índices, claves foráneas).
- `db/seed-desde-mysql-2026-11-12.sql`: datos del 12 de noviembre de 2026, en orden de dependencias. Los
  usuarios están anonimizados (sin correos ni contraseñas reales).
- `db/mysql2sqlite.py`: conversor. Uso y comandos de recarga en `db/README.md`.

## Tablas

### categorias

| Columna | Tipo | Notas |
| --- | --- | --- |
| categoria_id | INTEGER PK | |
| usuario_id | INTEGER FK users | autor |
| categoria_nombre | TEXT | nombre de la línea, p. ej. "Avicola" |
| categoria_url | TEXT | slug, p. ej. `aves`; se usa en `/catalogo?categoria=aves` |
| categoria_animal | TEXT | nombre visible, p. ej. "Aves" |
| categoria_icono, categoria_bg | TEXT | heredados; el diseño v2 define íconos y fondos por slug en `render.ts` |
| categoria_descripcion | TEXT | |
| categoria_estado | TEXT | `habilitada` / `deshabilitada` / `eliminada` |

Orden de presentación fijo en `ORDEN_CATEGORIAS` (`src/db.ts`): aves, caballos, perros-y-gatos, cerdos,
vacas, ovejas-y-cabras, abejas, peces, higiene. Especies nuevas van al final.

### productos

| Columna | Tipo | Notas |
| --- | --- | --- |
| producto_id | INTEGER PK | |
| usuario_id | INTEGER FK users | |
| producto_nombre | TEXT | |
| producto_url | TEXT | slug único; `/producto/<slug>` |
| producto_sku | TEXT | código; une con `ficha.codigo` ignorando espacios y mayúsculas |
| producto_presentacion_envases | TEXT | "Envases de 1 kg y 25 kg" |
| producto_descripcion … origen | TEXT | 14 columnas heredadas, vacías; el contenido real está en `ficha` |
| producto_estado | TEXT | `habilitado` / `deshabilitado` / `eliminado` / `bloqueado` |

Solo se publican productos `habilitado` con `producto_url` no nulo.

### productos_categorias

`producto_id`, `categoria_id`, timestamps. La "categoría principal" de un producto es la primera según
`ORDEN_CATEGORIAS`.

### productos_fotos

`id`, `producto_id`, `imagen` (clave en R2, p. ej. `productos/biotina.jpg`), `orden`. El panel guarda las
subidas como `productos/<slug>-<marca-de-tiempo>.<ext>`.

### ficha

Formato heredado del sitio anterior. Una fila por producto, unida por `codigo` = SKU.

| Columna | Contenido |
| --- | --- |
| nombre | nombre del producto |
| codigo | SKU |
| titulos | títulos de sección separados por `\|`: `DESCRIPCIÓN\|COMPOSICIÓN\|APORTE NUTRICIONAL\|…` |
| descs | HTML de cada sección, en el mismo orden, separado por `\|` (permite `<b>`, `<br>`, listas) |
| withtables | `true`/`false` por sección, separado por `\|` |
| tables | JSON: lista de listas; cada fila es `"COLUMNA 1\|COLUMNA 2"` |
| estilo | JSON de maquetación de un PDF antiguo; no se usa |

Ejemplo (`QP - 213`):

```
titulos   : DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|…
withtables: false|false|true|false|false|…
tables    : [[],[],["CANTAXANTINA|1.500 mg"],[],[],[],[],[]]
```

`src/ficha.ts::parsearFicha` convierte esto en `Seccion[]` (clave, título legible, html, filas) y
`src/admin/index.ts::serializarFicha` hace el camino inverso. Como `|` es el separador, el panel lo
reemplaza por `/` dentro de los textos.

### users

Heredada de Laravel. Se mantiene por las claves foráneas `usuario_id`; el panel usa el `id` más bajo
como autor. No se usa para autenticación (el panel usa secrets del Worker).

### Heredadas sin uso en v2

`sliders`, `articulos`, `articulos_categorias`, `categorias_articulos`. Se conservan por si se recupera
el blog o un carrusel editable.

## Conversión MySQL → SQLite

Reglas aplicadas por `mysql2sqlite.py`:

- `bigint/int/tinyint` → `INTEGER`; `varchar/text/mediumtext/json/timestamp` → `TEXT`; `decimal/float` → `REAL`.
- `enum(...)` → `TEXT CHECK (col IN (...))`.
- `AUTO_INCREMENT` → `INTEGER PRIMARY KEY AUTOINCREMENT`.
- `KEY` → `CREATE INDEX`; `UNIQUE KEY` → `UNIQUE`; `CONSTRAINT … FOREIGN KEY` se conserva.
- Literales con escapes de MySQL (`\'`, `\n`) → literales SQL estándar (`''`).
- Se omiten las tablas de infraestructura de Laravel (cache, jobs, sessions, migrations, tokens).

## Migraciones

Numerar en `db/migrations/` (`0002_descripcion.sql`, …) y aplicar con:

```bash
npx wrangler d1 execute qualitypro-v2 --remote --file db/migrations/0002_descripcion.sql
```

`wrangler d1 migrations apply` también funciona (`migrations_dir` está configurado), pero D1 solo
registra como aplicada la `0001` si se ejecuta por esa vía; hoy se aplicó a mano.

## Consultas útiles

```sql
-- Productos sin foto
SELECT producto_nombre FROM productos p
WHERE producto_estado='habilitado'
  AND NOT EXISTS (SELECT 1 FROM productos_fotos f WHERE f.producto_id=p.producto_id);

-- Productos sin ficha técnica
SELECT producto_nombre, producto_sku FROM productos p
WHERE NOT EXISTS (SELECT 1 FROM ficha f
  WHERE REPLACE(UPPER(f.codigo),' ','') = REPLACE(UPPER(p.producto_sku),' ',''));

-- Productos por especie
SELECT c.categoria_animal, COUNT(*) FROM productos_categorias pc
JOIN categorias c ON c.categoria_id=pc.categoria_id GROUP BY 1 ORDER BY 2 DESC;
```

Ejecutar con `npx wrangler d1 execute qualitypro-v2 --remote --command "…"` (añadir `--json` para
salida procesable).

## Limitaciones a tener en cuenta

- `LIKE` en SQLite solo ignora mayúsculas en ASCII: "composición" no coincide con "COMPOSICIÓN". Por eso
  la búsqueda se hace en el Worker normalizando acentos sobre la lista en caché (115 productos). Si el
  catálogo crece mucho, usar una columna normalizada o FTS5.
- D1 aplica las claves foráneas: no se puede borrar una categoría con productos asociados sin limpiar
  antes `productos_categorias`. El panel usa estados (`eliminada`) en lugar de borrar.
