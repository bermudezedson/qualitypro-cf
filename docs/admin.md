# Panel de administración

URL: `https://qualitypro-v2.asiquedo.cl/admin`

## Acceso

- Una sola contraseña, guardada como secret `ADMIN_PASSWORD` del Worker. Se cambia con
  `npx wrangler secret put ADMIN_PASSWORD` (sin redeploy).
- La sesión dura 12 horas y se guarda en una cookie firmada. "Cerrar sesión" la elimina.
- Para cerrar todas las sesiones a la vez, cambiar el secret `ADMIN_SECRET`.
- No hay recuperación de contraseña: si se pierde, se define una nueva con el comando anterior.

## Inicio

Contadores con enlaces a cada filtro: productos, habilitados, sin foto, sin ficha técnica y categorías.

## Productos

### Listado

Búsqueda por nombre, código o URL y filtros por estado, foto y ficha. Cada fila muestra miniatura,
nombre, URL pública, código, especies, si tiene ficha y estado. Botones **Editar** y **Ver** (abre la
ficha pública en una pestaña nueva).

### Crear / editar

Sección **Datos del producto**

- **Nombre**: obligatorio.
- **URL (slug)**: se genera sola desde el nombre; se puede editar. Solo minúsculas, números y guiones. Si
  ya existe, el sistema agrega un sufijo numérico.
- **Código (SKU)**: identifica la ficha técnica. Sin código no se puede guardar ficha.
- **Presentación / envases**: texto corto que aparece en la tarjeta y en la ficha.
- **Estado**: habilitado (visible), deshabilitado (oculto) o eliminado.

Sección **Categorías**: marcar las especies. La primera marcada según el orden del sitio es la principal
(etiqueta de la tarjeta, migas de pan y productos relacionados).

Sección **Ficha técnica**: cada bloque es una pestaña de la ficha pública.

- **Título**: en mayúsculas, p. ej. DESCRIPCIÓN, COMPOSICIÓN, DOSIFICACIÓN.
- **Editor**: texto con negrita, cursiva y listas. Al pegar se conserva solo el texto plano, para evitar
  estilos de Word.
- **Tabla**: opcional; una fila por línea y columnas separadas por `|`, por ejemplo
  `VITAMINA A | 1.000.000 UI`.
- Botones ↑ ↓ para ordenar, **Quitar** para eliminar una sección y **+ Agregar sección**.
- Una sección sin título o sin contenido no se guarda. Si se quitan todas, se borra la ficha.

Botón **Guardar cambios** (barra fija al pie). Los cambios se ven en el sitio en menos de un minuto,
salvo páginas que Cloudflare tenga en caché (hasta 10 minutos).

### Fotos

Disponible una vez creado el producto.

- **Subir**: varios archivos a la vez, JPG, PNG o WebP, máximo 5 MB cada uno. Se guardan en R2.
- La primera foto es la que se muestra en el catálogo y en la parte superior de la ficha; ↑ la mueve antes.
- **Eliminar** borra la foto del producto y el archivo de R2 si ningún otro producto lo usa.
- Recomendación: imágenes cuadradas de 800 × 800 px o más, fondo blanco, en JPG o WebP.

### Eliminar producto

Lo marca como `eliminado`: desaparece del sitio y del listado por defecto, pero se conserva en la base y
se puede recuperar desde el filtro "Eliminados" cambiando el estado.

## Categorías

Listado con nombre visible, línea, URL, cantidad de productos habilitados y estado. Crear o editar:

- **Nombre visible (especie)**: lo que ve el cliente, p. ej. "Aves".
- **Nombre de la línea**: nombre interno, p. ej. "Avicola".
- **URL**: slug para `/catalogo/<slug>`.
- **Descripción**: es la meta description de la página de la especie y su subtítulo en el catálogo (ideal 120–155 caracteres, con las palabras clave de la línea).
- **Estado**.

Los íconos y fondos de cada especie forman parte del diseño (`src/render.ts`); una especie nueva usa un
ícono genérico y el fondo por defecto hasta que se agregue al código.

## Buenas prácticas

- Cambiar la contraseña después de compartirla por cualquier canal.
- No usar el panel desde redes públicas sin HTTPS garantizado (el sitio fuerza HTTPS).
- Antes de cargas masivas, sacar un respaldo de D1 (`npx wrangler d1 export`).
- Para muchos productos nuevos a la vez, es más rápido preparar un SQL y cargarlo con `wrangler d1
  execute` que usar el formulario uno por uno.
