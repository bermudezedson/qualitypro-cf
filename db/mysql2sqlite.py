#!/usr/bin/env python3
"""Convierte un volcado de mysqldump (--skip-extended-insert --complete-insert) a SQL para SQLite / Cloudflare D1.

Genera dos archivos: schema.sql (CREATE TABLE + índices) y data.sql (INSERTs).
Conversiones: tipos MySQL -> SQLite, enum -> TEXT CHECK, AUTO_INCREMENT -> INTEGER PRIMARY KEY AUTOINCREMENT,
KEY -> CREATE INDEX, escapes de cadena estilo MySQL (\\') -> estilo SQL ('').
"""
import re
import sys
from pathlib import Path

src = Path(sys.argv[1])
out_dir = Path(sys.argv[2])
out_dir.mkdir(parents=True, exist_ok=True)

text = src.read_text(encoding="utf-8")

# ---------- esquema ----------
schema_parts = []
index_parts = []

type_map = [
    (r"^(big|medium|small|tiny)?int(\(\d+\))?( unsigned)?$", "INTEGER"),
    (r"^(var)?char\(\d+\)$", "TEXT"),
    (r"^(tiny|medium|long)?text$", "TEXT"),
    (r"^(json|date|datetime|time|year)$", "TEXT"),
    (r"^timestamp(\(\d+\))?$", "TEXT"),
    (r"^(decimal|numeric)\(.*\)$", "REAL"),
    (r"^(float|double)(\(.*\))?$", "REAL"),
    (r"^(tiny|medium|long)?blob$", "BLOB"),
    (r"^(var)?binary\(\d+\)$", "BLOB"),
]


def conv_type(t: str) -> str:
    t = t.strip()
    if t.lower().startswith("enum("):
        return "TEXT"
    for pat, rep in type_map:
        if re.match(pat, t, re.I):
            return rep
    raise SystemExit(f"Tipo no soportado: {t}")


for m in re.finditer(r"CREATE TABLE `(\w+)` \((.*?)\n\) ENGINE[^;]*;", text, re.S):
    table, body = m.group(1), m.group(2)
    cols, constraints, pk_cols, uniques = [], [], [], []
    for raw in body.split(",\n"):
        line = raw.strip()
        if line.startswith("PRIMARY KEY"):
            pk_cols = re.findall(r"`(\w+)`", line)
        elif line.startswith("UNIQUE KEY"):
            uniques.append(re.findall(r"`(\w+)`", line)[1:])
        elif line.startswith("KEY ") or line.startswith("INDEX "):
            names = re.findall(r"`(\w+)`", line)
            idx, idx_cols = names[0], names[1:]
            index_parts.append(f'CREATE INDEX IF NOT EXISTS `{idx}` ON `{table}` ({", ".join(f"`{c}`" for c in idx_cols)});')
        elif line.startswith("CONSTRAINT"):
            fk = re.match(
                r"CONSTRAINT `\w+` FOREIGN KEY \(`(\w+)`\) REFERENCES `(\w+)` \(`(\w+)`\)(.*)", line
            )
            col, rt, rc, rest = fk.groups()
            rest = re.sub(r"\s+", " ", rest).strip()
            constraints.append(f"FOREIGN KEY (`{col}`) REFERENCES `{rt}` (`{rc}`) {rest}".strip())
        else:
            cm = re.match(r"`(\w+)` (enum\(.*?\)|[a-z]+(?:\(\d+(?:,\d+)?\))?(?: unsigned)?)(.*)", line, re.S)
            name, mtype, rest = cm.groups()
            stype = conv_type(mtype)
            rest = re.sub(r"CHARACTER SET \w+", "", rest)
            rest = re.sub(r"COLLATE \w+", "", rest)
            rest = re.sub(r"\s+", " ", rest).strip()
            auto = "AUTO_INCREMENT" in rest
            rest = rest.replace("AUTO_INCREMENT", "").strip()
            rest = re.sub(r"ON UPDATE CURRENT_TIMESTAMP", "", rest).strip()
            col_sql = f"`{name}` {stype}"
            if auto:
                col_sql = f"`{name}` INTEGER PRIMARY KEY AUTOINCREMENT"
            else:
                if rest:
                    col_sql += " " + rest
            if mtype.lower().startswith("enum("):
                vals = re.search(r"enum\((.*)\)", mtype, re.I).group(1)
                col_sql += f" CHECK (`{name}` IN ({vals}))"
            cols.append((name, col_sql, auto))
    auto_cols = [c for c, _, a in cols if a]
    if pk_cols and not auto_cols:
        constraints.insert(0, f'PRIMARY KEY ({", ".join(f"`{c}`" for c in pk_cols)})')
    for u in uniques:
        constraints.append(f'UNIQUE ({", ".join(f"`{c}`" for c in u)})')
    lines = [sql for _, sql, _ in cols] + constraints
    schema_parts.append(f"CREATE TABLE IF NOT EXISTS `{table}` (\n  " + ",\n  ".join(lines) + "\n);")

schema_sql = "\n\n".join(schema_parts) + "\n\n" + "\n".join(index_parts) + "\n"
(out_dir / "schema.sql").write_text(schema_sql, encoding="utf-8")

# ---------- datos ----------
def convert_literals(stmt: str) -> str:
    """Reescribe los literales de cadena MySQL ('...' con escapes \\) a literales SQLite."""
    out, i, n = [], 0, len(stmt)
    while i < n:
        ch = stmt[i]
        if ch != "'":
            out.append(ch)
            i += 1
            continue
        # dentro de una cadena
        i += 1
        buf = []
        while i < n:
            c = stmt[i]
            if c == "\\" and i + 1 < n:
                e = stmt[i + 1]
                buf.append({"n": "\n", "r": "\r", "t": "\t", "0": "\0", "Z": "\x1a", "b": "\b"}.get(e, e))
                i += 2
            elif c == "'":
                if i + 1 < n and stmt[i + 1] == "'":  # '' ya escapado
                    buf.append("'")
                    i += 2
                else:
                    i += 1
                    break
            else:
                buf.append(c)
                i += 1
        out.append("'" + "".join(buf).replace("'", "''") + "'")
    return "".join(out)


inserts = [convert_literals(s) for s in re.findall(r"^INSERT INTO .*?\);$", text, re.M | re.S)]
data_sql = "\n".join(inserts) + "\n"
(out_dir / "data.sql").write_text(data_sql, encoding="utf-8")

print(f"tablas: {len(schema_parts)}  índices: {len(index_parts)}  inserts: {len(inserts)}")
