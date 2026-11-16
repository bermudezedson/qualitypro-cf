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

  // Ficha de producto: galería de fotos
  var galeria = document.querySelector("[data-galeria]");
  if (galeria) {
    var principal = document.querySelector("[data-galeria-imagen]");
    galeria.querySelectorAll("[data-galeria-miniatura]").forEach(function (btn) {
      btn.addEventListener("click", function () {
        if (!principal) return;
        principal.style.display = "";
        principal.src = btn.getAttribute("data-src");
        galeria.querySelectorAll("[data-galeria-miniatura]").forEach(function (b) { b.classList.toggle("activa", b === btn); });
      });
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

  // Formulario de contacto -> WhatsApp
  var contactForm = document.querySelector("[data-contact-form]");
  if (contactForm) {
    contactForm.addEventListener("submit", function (e) {
      e.preventDefault();
      if (!contactForm.reportValidity()) return;
      var d = new FormData(contactForm);
      var text = "Hola Quality Pro, soy " + d.get("nombre") + " (" + d.get("email") + (d.get("telefono") ? ", tel " + d.get("telefono") : "") + "). " + d.get("mensaje");
      window.open(WA + "?text=" + encodeURIComponent(text), "_blank", "noopener,noreferrer");
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

  // Formulario completo de distribuidor -> WhatsApp
  document.querySelectorAll("[data-distributor-form]").forEach(function (form) {
    form.addEventListener("submit", function (e) {
      e.preventDefault();
      if (!form.reportValidity()) return;
      var d = new FormData(form);
      var text = "Hola Quality Pro, quiero ser distribuidor.\n" +
        "Empresa: " + d.get("empresa") + "\nRUT: " + d.get("rut") + "\nGiro: " + d.get("giro") +
        "\nComuna: " + d.get("comuna") + "\nContacto: " + d.get("nombre") + "\nEmail: " + d.get("email") +
        "\nTeléfono: " + d.get("telefono") + (d.get("sitio_web") ? "\nSitio web: " + d.get("sitio_web") : "") +
        "\nProductos de interés: " + d.get("productos_interes");
      window.open(WA + "?text=" + encodeURIComponent(text), "_blank", "noopener,noreferrer");
    });
  });
})();
