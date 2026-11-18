-- Contactos recibidos desde los formularios del sitio (contacto y distribuidor)
CREATE TABLE IF NOT EXISTS leads (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  tipo TEXT NOT NULL CHECK (tipo IN ('contacto', 'distribuidor')),
  nombre TEXT NOT NULL,
  email TEXT NOT NULL,
  telefono TEXT,
  empresa TEXT,
  rut TEXT,
  giro TEXT,
  comuna TEXT,
  sitio_web TEXT,
  mensaje TEXT,
  origen TEXT,
  ip TEXT,
  user_agent TEXT,
  estado TEXT NOT NULL DEFAULT 'nuevo' CHECK (estado IN ('nuevo', 'atendido', 'descartado')),
  correo_enviado INTEGER NOT NULL DEFAULT 0,
  correo_error TEXT,
  created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS leads_created_at ON leads (created_at);
CREATE INDEX IF NOT EXISTS leads_ip_created ON leads (ip, created_at);
