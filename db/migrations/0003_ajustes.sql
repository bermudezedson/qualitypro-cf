-- Ajustes editables desde el panel (robots.txt, llms.txt, etc.)
CREATE TABLE IF NOT EXISTS ajustes (
  clave TEXT PRIMARY KEY,
  valor TEXT NOT NULL,
  updated_at TEXT
);
