# Panel de administración

URL: `https://qualitypro.cl/admin`

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
- La primera foto es la del catálogo y la imagen principal de la ficha; las demás aparecen como miniaturas de la galería en el mismo orden. ↑ mueve una foto antes. En el sitio, un clic sobre la foto la amplía a pantalla completa, por lo que conviene subir imágenes de al menos 800 × 800 px.
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

## Contactos

Bandeja de los formularios del sitio (contacto y solicitudes de distribuidor). La cotización de la ficha
de producto no pasa por aquí: abre WhatsApp directamente.

- Filtros por tipo, estado y texto; exportación a CSV (separado por `;`, abre bien en Excel).
- Cada contacto muestra fecha (hora de Chile), datos, página de origen, si el correo de aviso se envió y
  un botón para responder por correo. El estado (nuevo, atendido, descartado) sirve para el seguimiento.
- **Configuración**: correos destino para contacto y para distribuidores (varios separados por coma) y
  remitente. El remitente debe pertenecer a un dominio verificado en Resend; las respuestas llegan al
  correo de la persona gracias al reply-to.
- **Respuesta automática**: si está activa, la persona recibe un correo de confirmación (asunto y texto
  editables por tipo, con `{{nombre}}` y `{{empresa}}`). Sus respuestas llegan al correo destino.
- **Teléfono**: el campo fija el prefijo `+56 9` y acepta 8 dígitos; se guarda como `+56 9 1234 5678`.
- Si Resend no está configurado o falla, el contacto se guarda igual y queda marcado "pendiente" o "error"
  con el detalle; nunca se pierde.
- Protección anti-bots: campo trampa invisible, máximo 5 envíos por IP cada 15 minutos y, si está
  configurado, Cloudflare Turnstile (captcha invisible).

## Archivos SEO

Edita `robots.txt` y `llms.txt`, que el sitio sirve en su raíz.

- **robots.txt**: reglas para buscadores y rastreadores de IA. El valor por defecto permite todo, bloquea
  `/admin` y enlaza el sitemap.
- **llms.txt**: guía para asistentes de IA (ChatGPT, Gemini, Claude, Perplexity). El valor por defecto se
  genera desde la base con la empresa, las especies y todos los productos, así que se actualiza solo.
  Si lo personalizas, deja de actualizarse automáticamente hasta que pulses "Restaurar valor por defecto".
- En ambos puedes escribir `{{SITE_URL}}` y se reemplaza por la dirección del sitio.
- `sitemap.xml` no se edita: se genera desde la base.

Los cambios tardan hasta 5 minutos en verse por la caché.

## Buenas prácticas

- Cambiar la contraseña después de compartirla por cualquier canal.
- No usar el panel desde redes públicas sin HTTPS garantizado (el sitio fuerza HTTPS).
- Antes de cargas masivas, sacar un respaldo de D1 (`npx wrangler d1 export`).
- Para muchos productos nuevos a la vez, es más rápido preparar un SQL y cargarlo con `wrangler d1
  execute` que usar el formulario uno por uno.
