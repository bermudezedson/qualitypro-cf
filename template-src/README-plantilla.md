# Quality Pro — Sitio estático (HTML/CSS/JS)

Versión estática del sitio React (Lovable/TanStack Start), con el mismo UX/UI y estructura.
Es completamente independiente del código del proyecto: puedes subir esta carpeta tal cual
a cualquier hosting (cPanel, Netlify, Vercel, S3, etc.).

## Estructura

```
index.html                  Portada (hero, categorías, destacados, clientes, quiénes somos, distribuidor, contacto)
catalogo.html               Catálogo con filtro por categoría y búsqueda (?categoria=vacas&q=...)
quiero-ser-distribuidor.html Formulario de distribuidor
producto/<slug>.html        Fichas de los 6 productos (pestañas de información técnica)
css/styles.css              Tailwind v4 compilado con el tema corporativo (mismos colores y utilidades)
js/main.js                  Interactividad: menú móvil, buscador con resultados, slideshow del hero,
                            filtros del catálogo, pestañas, modal de distribuidor, formularios
assets/                     Imágenes (descargadas del proyecto Lovable) · fonts/ fuente de íconos qualitypro
```

## Cómo probarlo

Por el uso de `fetch`/rutas relativas no hace falta nada especial; basta abrir con un servidor local:

```
cd html && python3 -m http.server 8080
# http://localhost:8080
```

## Notas importantes

- **Formularios**: el sitio original enviaba contacto y solicitudes de distribuidor a Supabase
  (funciones de servidor). Al ser HTML estático no hay backend, así que ahora **abren WhatsApp**
  con el mensaje pre-armado (mismo número del sitio). Si quieres envío real por correo, se puede
  conectar a un servicio tipo Formspree/Basin o a un endpoint propio.
- La búsqueda y el filtro del catálogo funcionan 100% en el navegador (los datos de los productos
  están embebidos en `js/main.js`).
- La fuente Manrope se carga desde Google Fonts (igual que el original).
- El mapa de contacto es el mismo embed de Google Maps.
