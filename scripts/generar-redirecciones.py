#!/usr/bin/env python3
"""Genera src/redirecciones.json: mapa de URLs del sitio en producción (WordPress, qualitypro.cl)
hacia las URLs de la v2. Se usa en el Worker (src/redirecciones.ts) para responder 301 cuando el
dominio de producción apunte a Cloudflare.

Entradas:
  db/produccion-productos-2026-11.json   productos de WooCommerce (id, slug, name, categories)
  lista de productos de la v2            por defecto https://qualitypro-v2.asiquedo.cl/api/productos
                                         (o un archivo JSON local pasado como argumento)

Uso: python3 scripts/generar-redirecciones.py [v2-productos.json]
"""
import difflib
import json
import re
import subprocess
import sys
import unicodedata
from pathlib import Path

RAIZ = Path(__file__).resolve().parent.parent
ENTRADA = RAIZ / "db" / "produccion-productos-2026-11.json"
SALIDA = RAIZ / "src" / "redirecciones.json"

# Categorías de producción (/p/<slug>/) -> slug de la v2 (/catalogo/<slug>)
CATEGORIAS = {
    "avicola": "aves",
    "bovinos": "vacas",
    "equinos": "caballos",
    "mascotas": "perros-y-gatos",
    "ovinos": "ovejas-y-cabras",
    "caprinos": "ovejas-y-cabras",
    "porcinos": "cerdos",
    "apicola": "abejas",
    "acuicola": "peces",
    "higiene": "higiene",
}

# Correcciones manuales sobre el emparejamiento automático (slug producción -> destino v2)
OVERRIDES = {
    "fosfato-tricalcico": "/catalogo/aves",  # no existe en v2; el bicálcico es otro producto
    "creatina": "/producto/creatina-monohidratada",
    "lisina": "/producto/lisina-hcl",
    "harina-de-soya-extruida": "/producto/harina-de-soya",
    "nucleo-vitaminico-mineral-perros": "/producto/nucleo-perro-qp",
    "nucleo-ponedora-estandar": "/producto/nucleo-ponedora-qp",
    "premix-vitaminico-pollita-recria": "/producto/nucleo-pollita-recria-qp",
    "premix-vitaminico-pollita-inicial": "/producto/nucleo-pollita-inicial-qp",
    "premix-vitaminico-broiler-inicial": "/producto/nucleo-broiler-inicial-qp",
    "premix-vitaminico-broiler-final": "/producto/nucleo-broiler-final-qp",
    "vaselina-alcanforada": "/catalogo/caballos",
    "sales-minerales-salmones": "/catalogo/peces",
}

# Páginas y entradas de blog de producción -> v2
PAGINAS = {
    "/salud-y-nutricion-animal": "/catalogo",
    "/category/blog": "/",
    "/category/destacados": "/catalogo",
    "/category/sin-categoria": "/",
    "/block-ovino": "/producto/block-ovino",
    "/block-crianza-engorda": "/producto/block-crianza-engorda",
    "/levadura-cerveza-inactivada": "/producto/levadura-de-cerveza",
    "/doping-free": "/catalogo/caballos",
    "/productos-destacados": "/catalogo",
    "/quienes-somos": "/#quienes-somos",
    "/empresa": "/#quienes-somos",
    "/contacto": "/#contacto",
    "/distribuidores": "/quiero-ser-distribuidor",
    "/blog": "/",
    # plantilla estática v2 (por si quedaron enlaces)
    "/index.html": "/",
    "/catalogo.html": "/catalogo",
    "/quiero-ser-distribuidor.html": "/quiero-ser-distribuidor",
}


def norm(s: str) -> str:
    s = unicodedata.normalize("NFD", s).encode("ascii", "ignore").decode().lower()
    s = re.sub(r"[^a-z0-9]+", " ", s)
    return " ".join(t for t in s.split() if t not in ("qp", "quality", "pro", "l", "dl", "de", "y", "con"))


def cargar_v2() -> list[dict]:
    if len(sys.argv) > 1:
        return json.load(open(sys.argv[1], encoding="utf-8"))["productos"]
    out = subprocess.run(
        ["curl", "-s", "-m", "30", "https://qualitypro-v2.asiquedo.cl/api/productos"], capture_output=True, text=True, check=True
    ).stdout
    return json.loads(out)["productos"]


def main() -> None:
    produccion = json.load(open(ENTRADA, encoding="utf-8"))
    v2 = cargar_v2()
    por_slug = {p["slug"]: p for p in v2}
    usados: set[str] = set()
    productos: dict[str, str] = {}
    detalle: list[str] = []

    for p in produccion:
        s = p["slug"]
        if s in OVERRIDES:
            productos[s] = OVERRIDES[s]
            detalle.append(f"manual   /n/{s}/ -> {OVERRIDES[s]}")
            continue
        if s in por_slug:
            productos[s] = f"/producto/{s}"
            usados.add(s)
            continue
        n = norm(p["name"])
        mejor = None
        for q in v2:
            if q["slug"] in usados:
                continue
            sc = max(
                difflib.SequenceMatcher(None, n, norm(q["nombre"])).ratio(),
                difflib.SequenceMatcher(None, norm(s), norm(q["slug"])).ratio(),
            )
            if not mejor or sc > mejor[1]:
                mejor = (q["slug"], sc)
        if mejor and mejor[1] >= 0.86:
            productos[s] = f"/producto/{mejor[0]}"
            usados.add(mejor[0])
            detalle.append(f"aprox    /n/{s}/ -> /producto/{mejor[0]} ({mejor[1]:.2f})")
        else:
            cat = next((CATEGORIAS[c] for c in p["categories"] if c in CATEGORIAS), None)
            productos[s] = f"/catalogo/{cat}" if cat else "/catalogo"
            detalle.append(f"categoría /n/{s}/ -> {productos[s]}  [{p['name']}]")

    salida = {
        "generado": "scripts/generar-redirecciones.py",
        "categorias": CATEGORIAS,
        "productos": dict(sorted(productos.items())),
        "paginas": PAGINAS,
    }
    SALIDA.write_text(json.dumps(salida, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")
    print(f"categorías: {len(CATEGORIAS)}  productos: {len(productos)}  páginas: {len(PAGINAS)}")
    print("\n".join(detalle))


if __name__ == "__main__":
    main()
