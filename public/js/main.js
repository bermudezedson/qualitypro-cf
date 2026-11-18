// Interactividad del sitio Quality Pro (plantilla migracion-v2). Los datos del buscador/filtros
// los inyecta el servidor en window.QP_DATA desde la base de datos D1.
(function () {
  "use strict";
  var WA = "https://wa.me/56932586340";
  var FOUNDATION = 2010;
  var QP = window.QP_DATA || {};
  var PRODUCTS = QP.products || [];
  var CATALOG_BG = QP.catalogBg || {};
  var CATALOG_FOCUS = { "perros-y-gatos": "45% 12%" };
  var CAT_NAMES = QP.catNames || {};

  function normalize(v) { return v.normalize("NFD").replace(/[\u0300-\u036f]/g, "").toLowerCase().trim(); }
  function filterProducts(q) {
    var term = normalize(q || "");
    return PRODUCTS.filter(function (p) { return normalize(p.text).indexOf(term) !== -1; });
  }

  // Año dinámico
  var year = new Date().getFullYear();
  document.querySelectorAll("[data-year]").forEach(function (el) { el.textContent = year; });
  document.querySelectorAll("[data-years]").forEach(function (el) { el.textContent = Math.max(0, year - FOUNDATION); });

  // Menú móvil
  var menuBtn = document.querySelector("[data-menu-btn]");
  var nav = document.querySelector("[data-nav]");
  if (menuBtn && nav) {
    menuBtn.addEventListener("click", function () {
      var open = nav.classList.toggle("block");
      nav.classList.toggle("hidden", !open);
      menuBtn.setAttribute("aria-expanded", String(open));
      menuBtn.setAttribute("aria-label", open ? "Cerrar menú" : "Abrir menú");
      menuBtn.querySelector("[data-icon-menu]").classList.toggle("hidden", open);
      menuBtn.querySelector("[data-icon-close]").classList.toggle("hidden", !open);
    });
  }

  // Buscador con resultados
  var search = document.querySelector("[data-search]");
  if (search) {
        var input = search.querySelector("[data-search-input]");
    var clearBtn = search.querySelector("[data-search-clear]");
    var box = search.querySelector("[data-search-results]");
    var render = function () {
      var q = input.value;
      clearBtn.classList.toggle("hidden", !q);
      if (!q.trim()) { box.classList.add("hidden"); box.innerHTML = ""; return; }
      var results = filterProducts(q);
      var html = '<p class="border-b px-4 py-2 text-xs text-muted-foreground">' + results.length + " productos encontrados</p>";
      results.slice(0, 5).forEach(function (p) {
        html += '<a href="/producto/' + p.slug + '" class="flex items-center justify-between gap-2 px-4 py-3 text-sm hover:bg-secondary"><span class="font-semibold text-navy">' + p.name + '</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4 shrink-0"><path d="M5 12h14"></path><path d="m12 5 7 7-7 7"></path></svg></a>';
      });
      if (!results.length) html += '<p class="px-4 py-4 text-sm text-muted-foreground">No encontramos productos para \u201C' + q.replace(/</g, "&lt;") + '\u201D.</p>';
      html += '<a href="/catalogo?q=' + encodeURIComponent(q) + '" class="flex items-center justify-between border-t bg-secondary px-4 py-3 text-sm font-semibold text-primary">Ver catálogo <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="h-4 w-4"><path d="M5 12h14"></path><path d="m12 5 7 7-7 7"></path></svg></a>';
      box.innerHTML = html;
      box.classList.remove("hidden");
    };
    input.addEventListener("input", render);
    input.addEventListener("focus", render);
    input.addEventListener("keydown", function (e) { if (e.key === "Escape") box.classList.add("hidden"); });
    clearBtn.addEventListener("click", function () { input.value = ""; render(); input.focus(); });
    document.addEventListener("click", function (e) { if (!search.contains(e.target)) box.classList.add("hidden"); });
  }

  // Slideshow del hero
  var hero = document.querySelector("[data-hero]");
  if (hero) {
    var slides = hero.querySelectorAll("[data-hero-slide]");
    var dots = hero.querySelectorAll("[data-hero-dot]");
    var nameEl = hero.querySelector("[data-hero-name]");
    var pauseBtn = hero.querySelector("[data-hero-pause]");
    var active = 0, paused = false;
    var reduced = window.matchMedia("(prefers-reduced-motion: reduce)");
    var show = function (i) {
      active = i;
      slides.forEach(function (img, j) {
        img.classList.toggle("opacity-100", j === i);
        img.classList.toggle("opacity-0", j !== i);
        if (j !== i) img.setAttribute("aria-hidden", "true"); else img.removeAttribute("aria-hidden");
      });
      dots.forEach(function (d, j) {
        d.setAttribute("aria-pressed", String(j === i));
        var s = d.querySelector("span");
        s.className = "h-2 rounded-full transition-all " + (j === i ? "w-6 bg-accent" : "w-2 bg-navy-foreground/60");
      });
      if (nameEl) nameEl.textContent = slides[i].getAttribute("data-name");
    };
    dots.forEach(function (d) { d.addEventListener("click", function () { show(parseInt(d.getAttribute("data-hero-dot"), 10)); }); });
    if (pauseBtn) pauseBtn.addEventListener("click", function () {
      paused = !paused;
      pauseBtn.setAttribute("aria-label", paused ? "Reanudar fondos" : "Pausar fondos");
      pauseBtn.querySelector("[data-icon-pause]").classList.toggle("hidden", paused);
      pauseBtn.querySelector("[data-icon-play]").classList.toggle("hidden", !paused);
    });
    setInterval(function () {
      if (paused || reduced.matches || document.hidden) return;
      show((active + 1) % slides.length);
    }, 6000);
  }

  // Catálogo: filtro por categoría y búsqueda vía URL
  var grid = document.querySelector("[data-catalog-grid]");
  if (grid) {
    var params = new URLSearchParams(location.search);
    var rutaCat = location.pathname.match(/^\/catalogo\/([a-z0-9-]+)/);
    var categoria = (rutaCat ? rutaCat[1] : params.get("categoria")) || "";
    var q = params.get("q") || "";
    if (CAT_NAMES[categoria] === undefined) categoria = "";
    var matching = {};
    filterProducts(q).forEach(function (p) { matching[p.slug] = true; });
    var visible = 0;
    grid.querySelectorAll("[data-product]").forEach(function (card) {
      var cats = card.getAttribute("data-cats").split(",");
      var slug = card.querySelector("a").getAttribute("href").split("/").pop().replace(".html", "");
      if (q && !matching[slug] && PRODUCTS.length === 0) matching[slug] = true; // sin datos, confiar en el filtrado del servidor
      var ok = (!categoria || cats.indexOf(categoria) !== -1) && (!q || matching[slug]);
      card.classList.toggle("hidden", !ok);
      if (ok) visible++;
    });
    var title = document.querySelector("[data-cat-title]");
    var count = document.querySelector("[data-count]");
    if (title) title.textContent = categoria ? CAT_NAMES[categoria] : "Todos los productos";
    if (count) count.textContent = visible + " productos" + (q ? " \u00B7 \u201C" + q + "\u201D" : "");
    var clear = document.querySelector("[data-clear-filters]");
    if (clear && (q || categoria)) clear.classList.remove("hidden");
    var empty = document.querySelector("[data-empty]");
    if (empty) empty.classList.toggle("hidden", visible > 0);
    if (visible === 0) grid.classList.add("hidden");
    document.querySelectorAll("[data-cat-link]").forEach(function (link) {
      var slug = link.getAttribute("data-cat-link");
      var isActive = slug === categoria;
      if (slug === "") {
        link.className = "shrink-0 rounded-md px-3 py-3 text-sm font-semibold " + (isActive ? "bg-primary text-primary-foreground" : "bg-card text-navy");
      } else {
        link.className = "flex shrink-0 items-center gap-3 rounded-md px-3 py-3 text-sm font-medium " + (isActive ? "bg-primary text-primary-foreground" : "text-navy hover:bg-secondary");
      }
      if (q) {
        var url = new URL(link.href);
        url.searchParams.set("q", q);
        link.href = url.pathname + url.search;
      }
    });
    var heroImg = document.querySelector("[data-catalog-hero]");
    if (heroImg && categoria && CATALOG_BG[categoria]) {
      heroImg.src = heroImg.src.replace(/[^/]+$/, CATALOG_BG[categoria]);
      heroImg.style.objectPosition = CATALOG_FOCUS[categoria] || "right center";
    }
  }

  // Ficha de producto: galería de fotos + visor ampliado (lightbox)
  var principal = document.querySelector("[data-galeria-imagen]");
  var galeria = document.querySelector("[data-galeria]");
  var miniaturas = galeria ? Array.prototype.slice.call(galeria.querySelectorAll("[data-galeria-miniatura]")) : [];
  var fotos = miniaturas.length ? miniaturas.map(function (b) { return b.getAttribute("data-src"); }) : principal ? [principal.getAttribute("src")] : [];
  var actualFoto = 0;
  function mostrarFoto(i) {
    actualFoto = (i + fotos.length) % fotos.length;
    if (principal) { principal.style.display = ""; principal.src = fotos[actualFoto]; }
    miniaturas.forEach(function (b, j) { b.classList.toggle("activa", j === actualFoto); });
  }
  miniaturas.forEach(function (btn, i) { btn.addEventListener("click", function () { mostrarFoto(i); }); });

  var lightbox = document.querySelector("[data-lightbox]");
  if (lightbox && fotos.length) {
    var lbImg = lightbox.querySelector("[data-lightbox-img]");
    var lbPie = lightbox.querySelector("[data-lightbox-pie]");
    var nombre = (lbPie.textContent || "").split(" · ")[0];
    var abrirLb = function () {
      lbImg.src = fotos[actualFoto];
      lbPie.textContent = nombre + (fotos.length > 1 ? " · " + (actualFoto + 1) + " / " + fotos.length : "");
      lightbox.hidden = false;
      document.body.style.overflow = "hidden";
      lightbox.querySelector("[data-lightbox-cerrar]").focus();
    };
    var cerrarLb = function () { lightbox.hidden = true; document.body.style.overflow = ""; };
    var moverLb = function (d) { mostrarFoto(actualFoto + d); abrirLb(); };
    if (principal) principal.addEventListener("click", abrirLb);
    var zoomBtn = document.querySelector("[data-galeria-zoom]");
    if (zoomBtn) zoomBtn.addEventListener("click", abrirLb);
    lightbox.querySelector("[data-lightbox-cerrar]").addEventListener("click", cerrarLb);
    lbImg.addEventListener("click", cerrarLb);
    lightbox.addEventListener("click", function (e) { if (e.target === lightbox) cerrarLb(); });
    var prev = lightbox.querySelector("[data-lightbox-prev]"), next = lightbox.querySelector("[data-lightbox-next]");
    if (prev) prev.addEventListener("click", function () { moverLb(-1); });
    if (next) next.addEventListener("click", function () { moverLb(1); });
    document.addEventListener("keydown", function (e) {
      if (lightbox.hidden) return;
      if (e.key === "Escape") cerrarLb();
      if (e.key === "ArrowLeft" && fotos.length > 1) moverLb(-1);
      if (e.key === "ArrowRight" && fotos.length > 1) moverLb(1);
    });
    var x0 = null;
    lightbox.addEventListener("touchstart", function (e) { x0 = e.touches[0].clientX; }, { passive: true });
    lightbox.addEventListener("touchend", function (e) {
      if (x0 === null || fotos.length < 2) return;
      var dx = e.changedTouches[0].clientX - x0; x0 = null;
      if (Math.abs(dx) > 50) moverLb(dx < 0 ? 1 : -1);
    });
  }

  // Ficha de producto: pestañas + cotización por WhatsApp
  var tabs = document.querySelectorAll("[data-tab]");
  if (tabs.length) {
    tabs.forEach(function (tab) {
      tab.addEventListener("click", function () {
        var key = tab.getAttribute("data-tab");
        tabs.forEach(function (t) {
          var on = t === tab;
          t.setAttribute("aria-selected", String(on));
          t.classList.toggle("border-primary", on); t.classList.toggle("bg-secondary", on); t.classList.toggle("text-primary", on);
          t.classList.toggle("border-transparent", !on); t.classList.toggle("text-muted-foreground", !on);
        });
        document.querySelectorAll("[data-panel]").forEach(function (panel) {
          panel.classList.toggle("hidden", panel.getAttribute("data-panel") !== key);
        });
        var panelWrap = document.getElementById("product-panel");
        if (panelWrap) panelWrap.setAttribute("aria-labelledby", "tab-" + key);
      });
    });
  }
  var quote = document.querySelector("[data-quote-form]");
  if (quote) {
    quote.addEventListener("submit", function (e) {
      e.preventDefault();
      var msg = quote.querySelector("textarea").value;
      var text = encodeURIComponent("Hola Quality Pro, quiero cotizar " + quote.getAttribute("data-product-name") + ". " + msg);
      window.open(WA + "?text=" + text, "_blank", "noopener,noreferrer");
    });
  }

  // Formularios de contacto y distribuidor -> endpoint del sitio (D1 + correo). Honeypot + Turnstile opcional.
  // Teléfono: prefijo fijo "+56 9 " y 8 dígitos (formato +56 9 1234 5678)
  function prepararTelefono(input) {
    if (input.dataset.cl) return;
    input.dataset.cl = "1";
    input.type = "tel"; input.placeholder = "+56 9 1234 5678"; input.maxLength = 15; input.inputMode = "numeric";
    var PREF = "+56 9 ";
    var formatear = function () {
      var crudo = input.value.indexOf(PREF.trim()) === 0 ? input.value.slice(PREF.trim().length) : input.value;
      var d = crudo.replace(/\D/g, "");
      if (d.length > 8 && d.indexOf("56") === 0) d = d.slice(2);
      if (d.length === 9 && d.indexOf("9") === 0) d = d.slice(1);
      d = d.slice(0, 8);
      input.value = d ? PREF + d.slice(0, 4) + (d.length > 4 ? " " + d.slice(4) : "") : PREF;
    };
    input.addEventListener("focus", function () { if (!input.value) input.value = PREF; });
    input.addEventListener("input", formatear);
    input.addEventListener("blur", function () { if (input.value.trim() === PREF.trim()) input.value = ""; });
    input.addEventListener("keydown", function (e) {
      if (e.key === "Backspace" && input.selectionStart <= PREF.length && input.value.length <= PREF.length) e.preventDefault();
    });
    if (input.value) formatear();
  }
  function prepararFormulario(form) {
    form.querySelectorAll('input[name="telefono"]').forEach(prepararTelefono);
    if (form.querySelector('[name="empresa_fax"]')) return;
    var hp = document.createElement("input");
    hp.type = "text"; hp.name = "empresa_fax"; hp.tabIndex = -1; hp.autocomplete = "off"; hp.setAttribute("aria-hidden", "true");
    hp.style.cssText = "position:absolute;left:-9999px;width:1px;height:1px;opacity:0";
    form.appendChild(hp);
    var boton = form.querySelector('button[type="submit"]');
    if (QP.turnstileKey && boton && window.turnstile) {
      var cont = document.createElement("div");
      cont.className = "mb-4";
      boton.parentNode.insertBefore(cont, boton);
      window.turnstile.render(cont, { sitekey: QP.turnstileKey, language: "es" });
    }
  }
  function mensajeFormulario(form, texto, ok) {
    var msg = form.querySelector("[data-form-msg]");
    if (!msg) {
      msg = document.createElement("p");
      msg.setAttribute("data-form-msg", "");
      msg.setAttribute("role", "status");
      msg.className = "mt-3 rounded-md px-4 py-3 text-sm font-semibold";
      form.appendChild(msg);
    }
    msg.textContent = texto;
    msg.style.background = ok ? "#e4f5e8" : "#fdecea";
    msg.style.color = ok ? "#1e6b32" : "#8f1f16";
    msg.scrollIntoView({ block: "nearest", behavior: "smooth" });
  }
  function enviarFormulario(form, tipo, textoOk) {
    if (!form.reportValidity()) return;
    var boton = form.querySelector('button[type="submit"]');
    var datos = {};
    new FormData(form).forEach(function (v, k) { datos[k] = v; });
    datos.origen = location.href;
    if (boton) { boton.disabled = true; boton.dataset.texto = boton.textContent; boton.textContent = "Enviando…"; }
    fetch("/api/formularios/" + tipo, { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify(datos) })
      .then(function (r) { return r.json().catch(function () { return { ok: false }; }); })
      .then(function (res) {
        if (res.ok) { form.reset(); mensajeFormulario(form, textoOk, true); }
        else mensajeFormulario(form, res.error || "No pudimos enviar el mensaje. Inténtalo de nuevo o escríbenos por WhatsApp.", false);
      })
      .catch(function () { mensajeFormulario(form, "Sin conexión. Inténtalo de nuevo o escríbenos por WhatsApp.", false); })
      .then(function () {
        if (boton) { boton.disabled = false; boton.textContent = boton.dataset.texto; }
        if (window.turnstile) { try { window.turnstile.reset(); } catch (e) {} }
      });
  }
  var formulariosEnvio = [];
  var contactForm = document.querySelector("[data-contact-form]");
  if (contactForm) {
    formulariosEnvio.push(contactForm);
    contactForm.addEventListener("submit", function (e) {
      e.preventDefault();
      enviarFormulario(contactForm, "contacto", "¡Gracias! Recibimos tu mensaje y te responderemos a la brevedad.");
    });
  }

  // Mini formulario distribuidor (home) -> abre modal con formulario completo
  var mini = document.querySelector("[data-dist-mini]");
  var overlay = document.querySelector("[data-dist-overlay]");
  var modal = document.querySelector("[data-dist-modal]");
  if (mini && modal) {
    var openModal = function () {
      overlay.classList.remove("hidden");
      modal.classList.remove("hidden");
      document.body.style.overflow = "hidden";
    };
    var closeModal = function () {
      overlay.classList.add("hidden");
      modal.classList.add("hidden");
      document.body.style.overflow = "";
    };
    mini.addEventListener("submit", function (e) {
      e.preventDefault();
      if (!mini.reportValidity()) return;
      var d = new FormData(mini);
      var full = modal.querySelector("[data-distributor-form]");
      ["nombre", "empresa", "telefono", "email"].forEach(function (k) {
        var field = full.querySelector('[name="' + k + '"]');
        if (field) field.value = d.get(k);
      });
      openModal();
    });
    overlay.addEventListener("click", closeModal);
    modal.querySelector("[data-dist-close]").addEventListener("click", closeModal);
    document.addEventListener("keydown", function (e) { if (e.key === "Escape") closeModal(); });
  }

  // Formulario completo de distribuidor -> endpoint del sitio
  document.querySelectorAll("[data-distributor-form]").forEach(function (form) {
    formulariosEnvio.push(form);
    form.addEventListener("submit", function (e) {
      e.preventDefault();
      enviarFormulario(form, "distribuidor", "¡Solicitud enviada! Nuestro equipo comercial se pondrá en contacto contigo.");
    });
  });
  function prepararTodos() {
    formulariosEnvio.forEach(prepararFormulario);
    if (mini) mini.querySelectorAll('input[name="telefono"]').forEach(prepararTelefono);
  }
  if (QP.turnstileKey && !window.turnstile) {
    var intentos = 0;
    var esperar = setInterval(function () { if (window.turnstile || ++intentos > 50) { clearInterval(esperar); prepararTodos(); } }, 100);
  } else prepararTodos();
})();
