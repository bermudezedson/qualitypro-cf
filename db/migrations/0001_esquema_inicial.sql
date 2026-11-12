CREATE TABLE IF NOT EXISTS `articulos` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `titulo` TEXT NOT NULL,
  `slug` TEXT NOT NULL,
  `title` TEXT DEFAULT NULL,
  `meta_descripcion` TEXT NOT NULL,
  `contenido` TEXT,
  `autor` INTEGER NOT NULL,
  `editado_por` INTEGER DEFAULT NULL,
  `imagen_destacada` TEXT DEFAULT NULL,
  `status` TEXT NOT NULL DEFAULT 'borrador' CHECK (`status` IN ('borrador','publicado','archivado')),
  `fecha_publicacion` TEXT DEFAULT NULL,
  `created_at` TEXT NULL DEFAULT NULL,
  `updated_at` TEXT NULL DEFAULT NULL,
  FOREIGN KEY (`autor`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  FOREIGN KEY (`editado_por`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  UNIQUE (`slug`)
);

CREATE TABLE IF NOT EXISTS `articulos_categorias` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `articulo_id` INTEGER NOT NULL,
  `categoria_id` INTEGER NOT NULL,
  `created_at` TEXT NULL DEFAULT NULL,
  `updated_at` TEXT NULL DEFAULT NULL,
  FOREIGN KEY (`articulo_id`) REFERENCES `articulos` (`id`) ON DELETE CASCADE,
  FOREIGN KEY (`categoria_id`) REFERENCES `categorias_articulos` (`id`) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS `categorias` (
  `categoria_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `usuario_id` INTEGER NOT NULL,
  `categoria_nombre` TEXT NOT NULL,
  `categoria_url` TEXT DEFAULT NULL,
  `categoria_animal` TEXT DEFAULT NULL,
  `categoria_icono` TEXT DEFAULT NULL,
  `categoria_bg` TEXT DEFAULT NULL,
  `categoria_descripcion` TEXT,
  `categoria_estado` TEXT NOT NULL DEFAULT 'habilitada' CHECK (`categoria_estado` IN ('habilitada','deshabilitada','eliminada')),
  `created_at` TEXT NULL DEFAULT NULL,
  `updated_at` TEXT NULL DEFAULT NULL,
  FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
);

CREATE TABLE IF NOT EXISTS `categorias_articulos` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `titulo` TEXT NOT NULL,
  `slug` TEXT NOT NULL,
  `title` TEXT DEFAULT NULL,
  `meta_descripcion` TEXT NOT NULL,
  `creada_por` INTEGER NOT NULL,
  `editado_por` INTEGER DEFAULT NULL,
  `activo` INTEGER NOT NULL DEFAULT '1',
  `created_at` TEXT NULL DEFAULT NULL,
  `updated_at` TEXT NULL DEFAULT NULL,
  FOREIGN KEY (`creada_por`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  FOREIGN KEY (`editado_por`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  UNIQUE (`slug`)
);

CREATE TABLE IF NOT EXISTS `ficha` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `nombre` TEXT NOT NULL,
  `codigo` TEXT NOT NULL,
  `titulos` TEXT NOT NULL,
  `descs` TEXT NOT NULL,
  `withtables` TEXT NOT NULL,
  `tables` TEXT NOT NULL,
  `estilo` TEXT NOT NULL,
  UNIQUE (`nombre`)
);

CREATE TABLE IF NOT EXISTS `productos` (
  `producto_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `usuario_id` INTEGER NOT NULL,
  `producto_nombre` TEXT NOT NULL,
  `producto_url` TEXT DEFAULT NULL,
  `producto_sku` TEXT DEFAULT NULL,
  `producto_presentacion_envases` TEXT DEFAULT NULL,
  `producto_descripcion` TEXT,
  `producto_composicion` TEXT,
  `producto_aporte_nutricional` TEXT,
  `producto_instrucciones_uso` TEXT,
  `producto_presentacion` TEXT,
  `vida_util` TEXT,
  `almacenamiento` TEXT,
  `estado_fisico` TEXT,
  `analisis_quimico` TEXT,
  `contenido` TEXT,
  `dosificacion` TEXT,
  `precaucion` TEXT,
  `caracteristicas_microbiologicas` TEXT,
  `origen` TEXT,
  `producto_estado` TEXT NOT NULL DEFAULT 'habilitado' CHECK (`producto_estado` IN ('habilitado','deshabilitado','eliminado','bloqueado')),
  `created_at` TEXT NULL DEFAULT NULL,
  `updated_at` TEXT NULL DEFAULT NULL,
  FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
);

CREATE TABLE IF NOT EXISTS `productos_categorias` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `producto_id` INTEGER NOT NULL,
  `categoria_id` INTEGER NOT NULL,
  `created_at` TEXT NULL DEFAULT NULL,
  `updated_at` TEXT NULL DEFAULT NULL,
  FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`categoria_id`) ON DELETE CASCADE,
  FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS `productos_fotos` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `producto_id` INTEGER NOT NULL,
  `imagen` TEXT NOT NULL,
  `orden` INTEGER NOT NULL DEFAULT '0',
  `created_at` TEXT NULL DEFAULT NULL,
  `updated_at` TEXT NULL DEFAULT NULL,
  FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `titulo` TEXT DEFAULT NULL,
  `subtitulo` TEXT,
  `imagen_desktop` TEXT NOT NULL,
  `imagen_mobile` TEXT NOT NULL,
  `enlace_url` TEXT DEFAULT NULL,
  `texto_boton` TEXT DEFAULT NULL,
  `orden` INTEGER NOT NULL DEFAULT '0',
  `esta_activo` INTEGER NOT NULL DEFAULT '1',
  `created_at` TEXT NULL DEFAULT NULL,
  `updated_at` TEXT NULL DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `users` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` TEXT NOT NULL,
  `email` TEXT NOT NULL,
  `email_verified_at` TEXT NULL DEFAULT NULL,
  `password` TEXT NOT NULL,
  `remember_token` TEXT DEFAULT NULL,
  `created_at` TEXT NULL DEFAULT NULL,
  `updated_at` TEXT NULL DEFAULT NULL,
  UNIQUE (`email`)
);

CREATE INDEX IF NOT EXISTS `articulos_autor_foreign` ON `articulos` (`autor`);
CREATE INDEX IF NOT EXISTS `articulos_editado_por_foreign` ON `articulos` (`editado_por`);
CREATE INDEX IF NOT EXISTS `articulos_titulo_index` ON `articulos` (`titulo`);
CREATE INDEX IF NOT EXISTS `articulos_categorias_articulo_id_foreign` ON `articulos_categorias` (`articulo_id`);
CREATE INDEX IF NOT EXISTS `articulos_categorias_categoria_id_foreign` ON `articulos_categorias` (`categoria_id`);
CREATE INDEX IF NOT EXISTS `categorias_usuario_id_foreign` ON `categorias` (`usuario_id`);
CREATE INDEX IF NOT EXISTS `categorias_categoria_nombre_index` ON `categorias` (`categoria_nombre`);
CREATE INDEX IF NOT EXISTS `categorias_categoria_url_index` ON `categorias` (`categoria_url`);
CREATE INDEX IF NOT EXISTS `categorias_articulos_creada_por_foreign` ON `categorias_articulos` (`creada_por`);
CREATE INDEX IF NOT EXISTS `categorias_articulos_editado_por_foreign` ON `categorias_articulos` (`editado_por`);
CREATE INDEX IF NOT EXISTS `categorias_articulos_titulo_index` ON `categorias_articulos` (`titulo`);
CREATE INDEX IF NOT EXISTS `productos_usuario_id_foreign` ON `productos` (`usuario_id`);
CREATE INDEX IF NOT EXISTS `productos_producto_nombre_index` ON `productos` (`producto_nombre`);
CREATE INDEX IF NOT EXISTS `productos_producto_url_index` ON `productos` (`producto_url`);
CREATE INDEX IF NOT EXISTS `productos_categorias_producto_id_foreign` ON `productos_categorias` (`producto_id`);
CREATE INDEX IF NOT EXISTS `productos_categorias_categoria_id_foreign` ON `productos_categorias` (`categoria_id`);
CREATE INDEX IF NOT EXISTS `productos_fotos_producto_id_foreign` ON `productos_fotos` (`producto_id`);
