INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'Usuario 1', 'usuario1@qualitypro.local', NULL, 'no-aplica', NULL, '2026-11-12 00:00:00', '2026-11-12 00:00:00');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (2, 'Usuario 2', 'usuario2@qualitypro.local', NULL, 'no-aplica', NULL, '2026-11-12 00:00:00', '2026-11-12 00:00:00');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (3, 'Usuario 3', 'usuario3@qualitypro.local', NULL, 'no-aplica', NULL, '2026-11-12 00:00:00', '2026-11-12 00:00:00');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (4, 'Usuario 4', 'usuario4@qualitypro.local', NULL, 'no-aplica', NULL, '2026-11-12 00:00:00', '2026-11-12 00:00:00');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (5, 'Usuario 5', 'usuario5@qualitypro.local', NULL, 'no-aplica', NULL, '2026-11-12 00:00:00', '2026-11-12 00:00:00');
INSERT INTO `categorias_articulos` (`id`, `titulo`, `slug`, `title`, `meta_descripcion`, `creada_por`, `editado_por`, `activo`, `created_at`, `updated_at`) VALUES (1,'Pastos','pastos','Todo sobre pastos','Todo sobre pastos',1,NULL,1,'2025-02-10 01:15:14','2025-02-10 01:15:14');
INSERT INTO `categorias` (`categoria_id`, `usuario_id`, `categoria_nombre`, `categoria_url`, `categoria_animal`, `categoria_icono`, `categoria_bg`, `categoria_descripcion`, `categoria_estado`, `created_at`, `updated_at`) VALUES (9,1,'Avicola','aves','Aves','icon-gallina','categorias_bg/01JKF7AV4FDKM3BEEB696QM956.webp',NULL,'habilitada',NULL,'2025-02-07 05:30:25');
INSERT INTO `categorias` (`categoria_id`, `usuario_id`, `categoria_nombre`, `categoria_url`, `categoria_animal`, `categoria_icono`, `categoria_bg`, `categoria_descripcion`, `categoria_estado`, `created_at`, `updated_at`) VALUES (10,3,'Acuicola','peces','Peces','icon-pez','categorias_bg/01K38ZY0CBT76DXQ7FXNN0Y4SM.jpg',NULL,'habilitada',NULL,'2025-08-22 13:36:46');
INSERT INTO `categorias` (`categoria_id`, `usuario_id`, `categoria_nombre`, `categoria_url`, `categoria_animal`, `categoria_icono`, `categoria_bg`, `categoria_descripcion`, `categoria_estado`, `created_at`, `updated_at`) VALUES (11,1,'Vacas','vacas','Vacas','icon-vaca','categorias_bg/01JKENXTEDPCTMTC1DA4GSNYPG.webp',NULL,'habilitada',NULL,'2025-02-07 00:26:12');
INSERT INTO `categorias` (`categoria_id`, `usuario_id`, `categoria_nombre`, `categoria_url`, `categoria_animal`, `categoria_icono`, `categoria_bg`, `categoria_descripcion`, `categoria_estado`, `created_at`, `updated_at`) VALUES (12,1,'Equinos','caballos','Caballos','icon-caballo','categorias_bg/01JKPXDCR2QV8MT1SRJ1F5D4MP.png',NULL,'habilitada',NULL,'2025-02-10 05:10:58');
INSERT INTO `categorias` (`categoria_id`, `usuario_id`, `categoria_nombre`, `categoria_url`, `categoria_animal`, `categoria_icono`, `categoria_bg`, `categoria_descripcion`, `categoria_estado`, `created_at`, `updated_at`) VALUES (13,3,'Mascotas','perros-y-gatos','Perros y Gatos','icon-perro','categorias_bg/01K2QE6B1MSDVQTK6QWS1Z52NG.jpg',NULL,'habilitada',NULL,'2025-08-15 17:59:40');
INSERT INTO `categorias` (`categoria_id`, `usuario_id`, `categoria_nombre`, `categoria_url`, `categoria_animal`, `categoria_icono`, `categoria_bg`, `categoria_descripcion`, `categoria_estado`, `created_at`, `updated_at`) VALUES (14,1,'Ovinos','ovejas-y-cabras','Ovejas y Cabras','icon-ovega','bg-vacas-2100x593px.webp','','habilitada',NULL,NULL);
INSERT INTO `categorias` (`categoria_id`, `usuario_id`, `categoria_nombre`, `categoria_url`, `categoria_animal`, `categoria_icono`, `categoria_bg`, `categoria_descripcion`, `categoria_estado`, `created_at`, `updated_at`) VALUES (15,1,'Porcinos','cerdos','Cerdos','icon-cerdo','bg-vacas-2100x593px.webp','','habilitada',NULL,NULL);
INSERT INTO `categorias` (`categoria_id`, `usuario_id`, `categoria_nombre`, `categoria_url`, `categoria_animal`, `categoria_icono`, `categoria_bg`, `categoria_descripcion`, `categoria_estado`, `created_at`, `updated_at`) VALUES (16,1,'Apicola','abejas','Abejas','icon-abeja','categorias_bg/01JKEP2YDQX0QRZSB6ZNZK6XXK.webp',NULL,'habilitada',NULL,'2025-02-07 00:29:00');
INSERT INTO `categorias` (`categoria_id`, `usuario_id`, `categoria_nombre`, `categoria_url`, `categoria_animal`, `categoria_icono`, `categoria_bg`, `categoria_descripcion`, `categoria_estado`, `created_at`, `updated_at`) VALUES (17,1,'Higiene','higiene','Higiene',NULL,'bg-vacas-2100x593px.webp','','habilitada',NULL,NULL);
INSERT INTO `articulos` (`id`, `titulo`, `slug`, `title`, `meta_descripcion`, `contenido`, `autor`, `editado_por`, `imagen_destacada`, `status`, `fecha_publicacion`, `created_at`, `updated_at`) VALUES (1,'La Solución Perfecta para la Nutrición de tu Ganado en Invierno','la-solucion-perfecta-para-la-nutricion-de-tu-ganado-en-invierno','La Solución Perfecta para la Nutrición de tu Ganado en Invierno','La Solución Perfecta para la Nutrición de tu Ganado en Invierno','<p>Con el invierno llega el desafío de mantener a tu ganado saludable y bien alimentado. En este artículo, exploramos soluciones prácticas y eficaces para optimizar la nutrición de tus animales.</p><p>Durante los meses más fríos, el acceso a pastos frescos se reduce considerablemente. Por ello, es esencial proporcionar una dieta equilibrada que asegure la ingesta adecuada de nutrientes esenciales como proteínas, vitaminas y minerales.</p><p>Una excelente alternativa para la alimentación invernal son los forrajes conservados, como el heno y el ensilaje. Estos alimentos son ricos en energía y resultan fundamentales para suplir las necesidades diarias del ganado en esta época del año.</p><p>Además de los forrajes, es importante considerar el uso de suplementos nutricionales. Estos productos están diseñados para complementar la dieta y ayudar a prevenir deficiencias, fortaleciendo la salud y productividad de tus animales.</p><p>Otro aspecto clave es garantizar el acceso a agua limpia y fresca. Aunque en invierno el consumo de agua puede ser menor, sigue siendo crucial para el buen funcionamiento del metabolismo del ganado.</p><p>Recuerda que la planificación es esencial. Realiza un inventario de tus recursos alimenticios y asegúrate de que sean suficientes para toda la temporada invernal. Consultar a un nutricionista animal puede ser una gran ayuda para diseñar una dieta adecuada.</p><p>Con estos consejos, estarás preparado para enfrentar los desafíos del invierno y garantizar que tu ganado reciba la mejor nutrición posible. Un ganado saludable es sinónimo de una producción eficiente y rentable.</p>',1,NULL,'imagen_post/01JKPGB04NDMJ1B6RDBZVCJ8PC.jpg','publicado',NULL,'2025-02-10 01:22:28','2025-02-10 01:22:28');
INSERT INTO `articulos_categorias` (`id`, `articulo_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (1,1,1,NULL,NULL);
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (220,3,'RED EGGS PLUS','red-eggs-plus','QP - 213','Envases de 1 kg y de 20 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-11-26 11:29:29','2026-01-02 18:41:23');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (221,3,'ÁCIDO ACÉTICO','acido-acetico','QP - 697','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:02:15','2026-01-02 14:12:59');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (222,3,'ÁCIDO FÓRMICO','acido-formico','QP - 673','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:06:41','2026-01-02 14:13:22');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (223,3,'SOLERGY','solergy','QP - 757','Envases de 20 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:13:58','2026-01-02 14:14:19');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (224,3,'ÁCIDO OXÁLICO','acido-oxalico','QP - 050','Envases de 1 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:14:50','2026-01-02 14:16:47');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (225,3,'AGUA OXIGENADA','agua-oxigenada','QP - 010','Envases de 1 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:15:16','2026-01-02 14:17:03');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (227,3,'ANTIOX QP','antiox-qp','QP - 030','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:17:10','2026-01-02 14:17:50');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (228,3,'ANTIOX EC','antiox-ec','QP - 650','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:17:52','2026-01-02 14:18:13');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (229,3,'L - ARGININA','l-arginina','QP - 033','Envases de 1 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:19:02','2025-12-09 19:28:21');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (230,3,'B - COMPLEX','b-complex','QP - 040','Envases de 3 kg y de 6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:23:07','2026-01-02 18:43:15');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (231,3,'BENTONINA ','bentonina','QP - 043','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:23:42','2026-01-02 14:23:25');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (232,3,'BICARBONATO DE SODIO','bicarbonato-de-sodio','QP - 044','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 18:24:35','2026-01-02 14:24:12');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (233,3,'PROLYSES','prolyses','QP - 141','Envases de 3kg  y de 6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:19:18','2026-01-02 18:43:42');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (234,3,'HEPAMICS','hepamics','QP - 745','Envases de 3 kg  y 6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:19:54','2026-01-02 14:25:29');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (235,3,'HARINA DE SOYA','harina-de-soya','QP - 134','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:20:38','2026-01-02 14:26:08');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (236,3,'GLUTEN MEAL','gluten-meal','QP - 129','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:22:00','2026-01-02 14:29:33');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (237,3,'SULFATO DE GLUCOSAMINA','sulfato-de-glucosamina','QP - 769','Envases de 1 kg y 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:31:23','2025-12-09 20:25:57');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (238,3,'GLICERINA','glicerina','QP - 125','Envases de 1 L, 5 L, 20 L y 275 L ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:43:05','2026-01-02 14:33:10');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (239,3,'FOAL MILK','foal-milk','QP - 115','Envases de 5 kg y 10 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:46:43','2026-01-02 14:33:33');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (240,3,'EQUIMIN POTRILLO','equimin-potrillo','QP - 112','Envases de 3 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:47:47','2026-01-02 14:35:09');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (241,3,'EQUIMIN ADULTO','equimin-adulto','QP - 477','Envases de 3 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:48:11','2026-01-02 14:36:11');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (242,3,'ENERGY HORSE','energy-horse','QP - 109','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:50:30','2026-01-02 14:37:55');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (243,3,'EFFORT MAX','effort-max','QP - 380','Envases de 3 kg y de 6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:50:58','2026-01-02 18:50:02');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (244,3,'DEXTROSA MONOHIDRATADA','dextrosa-monohidratada','QP - 550','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:56:45','2026-01-02 14:39:40');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (245,3,'CREOLINA','creolina','QP - 100','Envases de 1 L',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 19:57:49','2026-01-02 14:40:59');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (246,3,'FOSFATO BICÁLCICO','fosfato-bicalcico','QP - 120','Envases de 1 kg y 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:38:54','2026-01-02 14:41:52');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (247,3,'CREATINA MONOHIDRATADA','creatina-monohidratada','QP - 98','Envases de 1 kg y 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:41:41','2026-01-02 14:43:46');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (248,3,'SULFATO DE CONDROITINA','sulfato-de-condroitina','QP - 96','Envases de 1 kg y 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:43:01','2026-01-02 14:44:23');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (249,3,'L - CARNITINA','l-carnitina','QP - 68','Envases de 1 kg y 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:43:51','2026-01-02 14:45:04');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (250,3,'CARBONATO DE CALCIO','carbonato-de-calcio','QP - 67','Envases de 25 kg y 1.000 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:44:55','2026-01-02 14:47:26');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (251,3,'CARBONATO DE CALCIO FINO','carbonato-de-calcio-fino','QP - 65','Envases de 25 kg y 1.000 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:45:40','2026-01-02 14:56:26');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (252,3,'CAPRINOSAL QP + VITAMINA ADE','caprinosal-qp-vitamina-ade','QP - 693','Envases de 1 kg y 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:46:23','2026-01-02 14:57:19');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (253,3,'CANTAXANTINA ','cantaxantina','QP - 017','Envases de 1 kg y de 20 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:47:00','2026-01-02 15:07:41');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (254,3,'BLOCK OVINO','block-ovino','QP - 57','Envases de 7 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:47:41','2026-01-02 15:00:27');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (255,3,'BLOCK MAGNESIADO','block-magnesiado','QP - 56','Envases de 10 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:51:10','2026-01-02 15:00:52');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (256,3,'BLOCK HORSE','block-horse','QP - 55','Envases de 7 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:52:00','2026-01-02 15:01:08');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (257,3,'BLOCK CRIANZA ENGORDA ','block-crianza-engorda','QP - 53','Envases de 10 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:52:34','2026-01-02 15:02:31');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (258,3,'BLOCK CAPRINO','block-caprino','QP - 52','Envases de 7 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:52:56','2026-01-02 15:03:12');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (259,3,'BLOCK ANTICOX','block-anticox','QP - 652','Envases de 10 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:53:29','2026-01-02 15:04:28');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (260,3,'BIOTINA','biotina','QP - 50','Envases de 1 kg y 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:54:20','2026-01-02 15:05:48');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (261,3,'BIOCALFOS','biocalfos','QP - 047','Envases de 2 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-04 20:54:43','2026-01-02 15:21:40');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (262,3,'NÚCLEO PONEDORA QP + FITASA','nucleo-ponedora-qp-fitasa','QP - 180','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:39:55','2026-01-02 15:22:39');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (263,3,'NÚCLEO POLLITA RECRÍA QP','nucleo-pollita-recria-qp','QP - 175','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:40:17','2026-01-02 15:23:08');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (264,3,'JOINT PLUS','joint-plus','QP - 585','Envases de 3 kg y de 6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:40:56','2026-01-02 15:23:34');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (265,3,'LEVADURA DE CERVEZA','levadura-de-cerveza','QP - 148','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:43:41','2026-01-02 15:23:59');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (266,3,'L - VALINA','l-valina','QP - 441','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:44:30','2026-01-02 15:25:08');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (267,3,'LISINA HCL','lisina-hcl','QP - 150','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:45:16','2026-01-02 15:25:49');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (268,3,'LISINA SULFATO','lisina-sulfato','QP - 502','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:45:46','2026-01-02 15:26:21');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (269,3,'NÚCLEO PONEDORA QP + PIGMENTO','nucleo-ponedora-qp-pigmento','QP - 179','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:46:43','2026-01-02 15:27:11');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (270,3,'DL - METIONINA','dl-metionina','QP - 156','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:47:19','2026-01-02 15:27:45');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (271,3,'MYCO PRO','myco-pro','QP - 164','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:48:00','2026-01-02 15:28:31');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (272,3,'NIACINA','niacina','QP - 167','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:48:34','2026-01-02 15:28:51');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (273,3,'NÚCLEO BROILER INICIAL QP','nucleo-broiler-inicial-qp','QP - 430','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:49:11','2026-01-02 15:29:59');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (274,3,'NÚCLEO BROILER FINAL QP','nucleo-broiler-final-qp','QP - 431','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:49:33','2026-01-02 15:30:23');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (275,3,'NÚCLEO CABALLO QP','nucleo-caballo-qp','QP - 522','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:49:52','2026-01-02 15:31:20');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (276,3,'NÚCLEO CERDO CRIANZA QP','nucleo-cerdo-crianza-qp','QP - 168','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:50:16','2026-01-02 16:11:54');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (277,3,'NÚCLEO CERDO ENGORDA QP','nucleo-cerdo-engorda-qp','QP - 298','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:50:31','2026-01-02 17:53:35');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (278,3,'NÚCLEO CERDO LECHÓN QP','nucleo-cerdo-lechon-qp','QP - 171','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:50:46','2026-01-02 17:54:10');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (279,3,'NÚCLEO CERDO REPRODUCTOR QP','nucleo-cerdo-reproductor-qp','QP - 307','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:51:02','2026-01-02 17:55:24');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (280,3,'NÚCLEO PEQUEÑOS RUMIANTES QP','nucleo-pequenos-rumiantes-qp','QP - 581','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:51:22','2026-01-02 17:55:50');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (281,3,'NÚCLEO POLLITA INICIAL QP','nucleo-pollita-inicial-qp','QP - 173','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:56:27','2026-01-02 17:56:56');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (282,3,'NÚCLEO PONEDORA QP','nucleo-ponedora-qp','QP - 176','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:58:08','2026-01-02 17:57:39');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (283,3,'NÚCLEO PONEDORA P4','nucleo-ponedora-p4','QP - 605','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:58:33','2026-01-02 17:58:32');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (284,3,'NÚCLEO TERNERO QP','nucleo-ternero-qp','QP - 762','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:58:56','2026-01-02 17:59:14');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (285,3,'NÚCLEO GATO QP','nucleo-gato-qp','QP - 325','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:59:13','2026-01-02 17:59:50');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (286,3,'NÚCLEO PERRO QP','nucleo-perro-qp','QP - 469','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:59:42','2026-01-02 18:00:27');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (287,3,'NÚCLEO YEGUAS Y POTRILLOS QP','nucleo-yeguas-y-potrillos-qp','QP - 417','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 19:59:57','2026-01-02 18:02:39');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (288,3,'OVINOSAL QP + VITAMINA ADE','ovinosal-qp-vitamina-ade','QP - 392','Envases de 1 kg y 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:00:23','2025-12-09 20:38:29');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (289,3,'ÓXIDO DE MAGNESIO','oxido-de-magnesio','QP - 186','Envases de 1 kg, de 25 kg y de 1.000 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:00:56','2026-01-02 18:05:20');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (290,3,'PANTOTENATO DE CALCIO','pantotenato-de-calcio','QP - 331','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:01:21','2026-01-02 18:06:32');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (291,3,'PERMANGANATO DE POTASIO','permanganato-de-potasio','QP - 191','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:02:18','2026-01-02 18:07:00');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (292,3,'PHOSBIC','phosbic','QP - 194','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:02:49','2026-01-02 18:09:17');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (293,3,'POTENZA DOG','potenza-dog','QP - 198','Envases de 1 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:03:12','2026-01-02 18:09:55');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (294,3,'POTENZA MASSIMA','potenza-massima','QP - 199','Envases de 3 kg y de 6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:03:36','2026-01-02 18:10:32');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (295,3,'PREMIX VITAMÍNICO PONEDORA QP','premix-vitaminico-ponedora-qp','QP - 311','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:03:52','2026-01-02 18:10:55');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (296,3,'PREMIX VITAMÍNICO CERDOS QP','premix-vitaminico-cerdos-qp','QP - 838','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:04:07','2026-01-02 18:12:04');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (297,3,'PREMIX VITAMÍNICO GATO QP','premix-vitaminico-gato-qp','QP - 791','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:04:34','2026-01-02 18:12:47');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (298,3,'PREMIX VITAMÍNICO PERRO QP','premix-vitaminico-perro-qp','QP - 315','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:04:57','2026-01-02 18:13:42');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (299,3,'PREMIX VITAMÍNICO SALMÓN QP','premix-vitaminico-salmon-qp','QP - 576','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:05:34','2026-01-02 18:15:08');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (300,3,'PROBIHORSE','probihorse','QP - 203','Envases de 1 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-05 20:05:54','2026-01-02 18:15:28');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (301,3,'PROPILENGLICOL USP','propilenglicol-usp','QP - 204','Envases de 5 kg, de  20 kg y de 215 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 15:33:58','2026-01-02 18:16:26');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (302,3,'PROPIONATO DE CALCIO','propionato-de-calcio','QP - 207','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (303,3,'QUALITY HORSE','quality-horse','QP - 451','Envases de 3 kg y de 6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 15:40:29','2026-01-02 18:17:42');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (304,3,'ZEOLITA','zeolita','QP - 531','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 15:46:23','2025-12-09 15:46:23');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (305,3,'QUALITY SAL CRIANZA ENGORDA','quality-sal-crianza-engorda','QP - 310','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 15:47:39','2025-12-09 15:47:39');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (306,3,'QUALITY SAL LECHERÍA','quality-sal-lecheria','QP - 309','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 15:48:43','2025-12-09 15:48:43');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (307,3,'QUALITY SAL PERÍODO SECO','quality-sal-periodo-seco','QP - 322','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:29:36','2025-12-09 17:29:36');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (308,3,'RELAX HORSE PLUS','relax-horse-plus','QP - 217','Envases de 3 kg y de 6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:31:59','2026-01-02 18:21:03');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (309,3,'RELAX HORSE','relax-horse','QP - 539','Frascos de 1 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:33:30','2025-12-09 17:33:30');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (310,3,'SALES MINERALES AVES QP','sales-minerales-aves-qp','QP - 159','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:34:20','2026-01-02 18:22:46');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (311,3,'SALES MINERALES CERDOS QP','sales-minerales-cerdos-qp','QP - 161','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:42:40','2026-01-02 18:23:10');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (312,3,'STRONG EGGS','strong-eggs','QP - 230','Envases de 1 y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:44:31','2026-01-02 18:23:43');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (313,3,'SUERO DE LECHE','suero-de-leche','QP - 231','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:46:32','2025-12-09 17:46:32');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (314,3,'SULFATO DE COBRE','sulfato-de-cobre','QP - 234','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:49:26','2026-01-02 18:25:13');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (315,3,'TAURINA','taurina','QP - 245','Envases de 1 kg ,de 5 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:55:30','2026-01-02 18:25:51');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (316,3,'L - TREONINA','l-treonina','QP - 249','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 17:59:58','2026-01-02 18:26:35');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (317,3,'L - TRIPTOFANO','l-triptofano','QP - 250','Envases de 1 kg ,de 5 kg y de 20 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 18:36:51','2026-01-02 18:27:03');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (318,3,'VASELINA LÍQUIDA ','vaselina-liquida','QP - 255','Envases de 1 L ,de  5 L y de 20 L',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 18:39:38','2026-01-02 18:27:43');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (319,3,'VASELINA SÓLIDA','vaselina-solida','QP - 341','Envases de 1 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 18:43:34','2025-12-09 18:43:34');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (320,3,'VITAMINA A','vitamina-a','QP - 267','Envases de 1 kg, de 5 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 18:45:25','2026-01-02 18:29:17');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (321,3,'VITAMINA B1','vitamina-b1','QP - 329','Envases de 1 kg, de 5 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 18:54:54','2026-01-02 18:29:40');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (322,3,'VITAMINA B12','vitamina-b12','QP - 273','Envases de 1 kg, de 5 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 18:56:49','2026-01-02 18:30:07');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (323,3,'VITAMINA C','vitamina-c','QP - 276','Envases de 1 kg, de 5 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 19:00:22','2026-01-02 18:30:28');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (324,3,'VITAMINA C MONOFOSFATO','vitamina-c-monofosfato','QP - 538','Envases de 1 kg, de 5 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 19:02:05','2026-01-02 18:31:17');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (325,3,'VITAMINA D3','vitamina-d3','QP - 270','Envases de 1 kg, de 5 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 19:03:54','2026-01-02 18:31:36');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (326,3,'VITAMINA E','vitamina-e','QP - 271','Envases de 1 kg, de 5 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 19:10:38','2026-01-02 18:31:56');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (327,3,'VITAMINA K3','vitamina-k3','QP - 509','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 19:12:54','2026-01-02 18:34:36');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (328,3,'VITESEL ORGÁNICO','vitesel-organico','QP - 282','Envases de 3 kg y de 6 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 19:13:43','2026-01-02 18:35:37');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (329,3,'VITAMIX ADE','vitamix-ade','QP - 263','Envases de 1 kg y de 20 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 19:17:07','2026-01-02 18:36:11');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (330,3,'VITAMIX ADE + SELENIO','vitamix-ade-selenio','QP - 264','Envases de 1 kg y de 20 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 19:20:03','2026-01-02 18:36:39');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (331,3,'GLUTAMATO MONOSÓDICO','glutamato-monosodico','QP - 753','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 20:29:49','2026-01-02 18:38:35');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (332,3,'ÓXIDO DE ZINC','oxido-de-zinc','QP - 187','Envases de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-09 20:47:15','2025-12-09 20:47:15');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (333,3,'ÁCIDO FÓLICO','acido-folico','QP - 667','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-10 13:41:36','2026-01-02 18:39:37');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (334,3,'VITAMINA B2','vitamina-b2','QP - 274','Envases de 1 kg y de 25 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-10 14:33:30','2026-01-02 18:40:37');
INSERT INTO `productos` (`producto_id`, `usuario_id`, `producto_nombre`, `producto_url`, `producto_sku`, `producto_presentacion_envases`, `producto_descripcion`, `producto_composicion`, `producto_aporte_nutricional`, `producto_instrucciones_uso`, `producto_presentacion`, `vida_util`, `almacenamiento`, `estado_fisico`, `analisis_quimico`, `contenido`, `dosificacion`, `precaucion`, `caracteristicas_microbiologicas`, `origen`, `producto_estado`, `created_at`, `updated_at`) VALUES (335,3,'APOÉSTER','apoester','QP - 748','Envases de 1 y de 20 kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'habilitado','2025-12-10 16:03:58','2026-01-02 18:40:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (406,220,9,'2025-11-26 11:29:29','2025-11-26 11:29:29');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (407,221,16,'2025-12-04 18:02:15','2025-12-04 18:02:15');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (408,222,16,'2025-12-04 18:06:41','2025-12-04 18:06:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (409,223,9,'2025-12-04 18:13:58','2025-12-04 18:13:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (410,224,16,'2025-12-04 18:14:50','2025-12-04 18:14:50');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (411,225,16,'2025-12-04 18:15:16','2025-12-04 18:15:16');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (413,227,9,'2025-12-04 18:17:10','2025-12-04 18:17:10');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (414,228,9,'2025-12-04 18:17:52','2025-12-04 18:17:52');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (415,229,12,'2025-12-04 18:19:02','2025-12-04 18:19:02');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (416,230,12,'2025-12-04 18:23:07','2025-12-04 18:23:07');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (417,231,9,'2025-12-04 18:23:42','2025-12-04 18:23:42');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (418,232,9,'2025-12-04 18:24:35','2025-12-04 18:24:35');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (419,233,12,'2025-12-04 19:19:18','2025-12-04 19:19:18');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (420,234,12,'2025-12-04 19:19:54','2025-12-04 19:19:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (421,235,9,'2025-12-04 19:20:38','2025-12-04 19:20:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (422,235,12,'2025-12-04 19:20:38','2025-12-04 19:20:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (423,235,15,'2025-12-04 19:20:38','2025-12-04 19:20:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (424,235,14,'2025-12-04 19:20:38','2025-12-04 19:20:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (425,235,13,'2025-12-04 19:20:38','2025-12-04 19:20:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (426,235,11,'2025-12-04 19:20:38','2025-12-04 19:20:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (427,236,9,'2025-12-04 19:22:00','2025-12-04 19:22:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (428,236,12,'2025-12-04 19:22:00','2025-12-04 19:22:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (429,236,15,'2025-12-04 19:22:00','2025-12-04 19:22:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (430,236,14,'2025-12-04 19:22:00','2025-12-04 19:22:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (431,236,13,'2025-12-04 19:22:00','2025-12-04 19:22:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (432,236,11,'2025-12-04 19:22:00','2025-12-04 19:22:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (433,236,10,'2025-12-04 19:22:00','2025-12-04 19:22:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (434,237,12,'2025-12-04 19:31:23','2025-12-04 19:31:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (435,237,13,'2025-12-04 19:31:23','2025-12-04 19:31:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (436,238,16,'2025-12-04 19:43:05','2025-12-04 19:43:05');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (437,239,12,'2025-12-04 19:46:43','2025-12-04 19:46:43');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (438,240,12,'2025-12-04 19:47:47','2025-12-04 19:47:47');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (439,241,12,'2025-12-04 19:48:11','2025-12-04 19:48:11');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (440,242,12,'2025-12-04 19:50:30','2025-12-04 19:50:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (441,243,12,'2025-12-04 19:50:58','2025-12-04 19:50:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (442,244,9,'2025-12-04 19:56:45','2025-12-04 19:56:45');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (443,244,12,'2025-12-04 19:56:45','2025-12-04 19:56:45');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (444,244,15,'2025-12-04 19:56:45','2025-12-04 19:56:45');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (445,244,14,'2025-12-04 19:56:45','2025-12-04 19:56:45');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (446,244,13,'2025-12-04 19:56:45','2025-12-04 19:56:45');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (447,244,11,'2025-12-04 19:56:45','2025-12-04 19:56:45');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (448,244,16,'2025-12-04 19:56:45','2025-12-04 19:56:45');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (449,245,17,'2025-12-04 19:57:49','2025-12-04 19:57:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (450,246,9,'2025-12-04 20:38:54','2025-12-04 20:38:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (451,246,12,'2025-12-04 20:38:54','2025-12-04 20:38:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (452,246,15,'2025-12-04 20:38:54','2025-12-04 20:38:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (453,246,14,'2025-12-04 20:38:54','2025-12-04 20:38:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (454,246,13,'2025-12-04 20:38:54','2025-12-04 20:38:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (455,246,11,'2025-12-04 20:38:54','2025-12-04 20:38:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (456,246,10,'2025-12-04 20:38:54','2025-12-04 20:38:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (457,247,9,'2025-12-04 20:41:41','2025-12-04 20:41:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (458,247,12,'2025-12-04 20:41:41','2025-12-04 20:41:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (459,247,15,'2025-12-04 20:41:41','2025-12-04 20:41:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (460,247,13,'2025-12-04 20:41:41','2025-12-04 20:41:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (461,248,12,'2025-12-04 20:43:01','2025-12-04 20:43:01');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (462,248,13,'2025-12-04 20:43:01','2025-12-04 20:43:01');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (463,249,12,'2025-12-04 20:43:51','2025-12-04 20:43:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (464,249,13,'2025-12-04 20:43:51','2025-12-04 20:43:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (465,250,9,'2025-12-04 20:44:55','2025-12-04 20:44:55');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (466,250,12,'2025-12-04 20:44:55','2025-12-04 20:44:55');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (467,250,15,'2025-12-04 20:44:55','2025-12-04 20:44:55');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (468,250,14,'2025-12-04 20:44:55','2025-12-04 20:44:55');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (469,250,13,'2025-12-04 20:44:55','2025-12-04 20:44:55');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (470,250,11,'2025-12-04 20:44:55','2025-12-04 20:44:55');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (471,251,9,'2025-12-04 20:45:40','2025-12-04 20:45:40');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (472,251,12,'2025-12-04 20:45:40','2025-12-04 20:45:40');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (473,251,15,'2025-12-04 20:45:40','2025-12-04 20:45:40');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (474,251,14,'2025-12-04 20:45:40','2025-12-04 20:45:40');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (475,251,10,'2025-12-04 20:45:40','2025-12-04 20:45:40');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (476,251,13,'2025-12-04 20:45:40','2025-12-04 20:45:40');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (477,251,11,'2025-12-04 20:45:40','2025-12-04 20:45:40');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (478,252,14,'2025-12-04 20:46:23','2025-12-04 20:46:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (479,253,9,'2025-12-04 20:47:00','2025-12-04 20:47:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (480,254,14,'2025-12-04 20:47:41','2025-12-04 20:47:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (481,255,11,'2025-12-04 20:51:10','2025-12-04 20:51:10');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (482,256,12,'2025-12-04 20:52:00','2025-12-04 20:52:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (483,257,11,'2025-12-04 20:52:34','2025-12-04 20:52:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (484,258,14,'2025-12-04 20:52:56','2025-12-04 20:52:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (485,259,11,'2025-12-04 20:53:29','2025-12-04 20:53:29');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (486,260,9,'2025-12-04 20:54:20','2025-12-04 20:54:20');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (487,260,12,'2025-12-04 20:54:20','2025-12-04 20:54:20');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (488,260,15,'2025-12-04 20:54:20','2025-12-04 20:54:20');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (489,260,14,'2025-12-04 20:54:20','2025-12-04 20:54:20');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (490,260,13,'2025-12-04 20:54:20','2025-12-04 20:54:20');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (491,260,11,'2025-12-04 20:54:20','2025-12-04 20:54:20');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (492,260,10,'2025-12-04 20:54:20','2025-12-04 20:54:20');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (493,261,12,'2025-12-04 20:54:43','2025-12-04 20:54:43');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (494,262,9,'2025-12-05 19:39:55','2025-12-05 19:39:55');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (495,263,9,'2025-12-05 19:40:17','2025-12-05 19:40:17');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (496,264,12,'2025-12-05 19:40:56','2025-12-05 19:40:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (497,265,9,'2025-12-05 19:43:41','2025-12-05 19:43:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (498,265,12,'2025-12-05 19:43:41','2025-12-05 19:43:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (499,265,15,'2025-12-05 19:43:41','2025-12-05 19:43:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (500,265,14,'2025-12-05 19:43:41','2025-12-05 19:43:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (501,265,13,'2025-12-05 19:43:41','2025-12-05 19:43:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (502,265,11,'2025-12-05 19:43:41','2025-12-05 19:43:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (503,265,10,'2025-12-05 19:43:41','2025-12-05 19:43:41');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (504,266,9,'2025-12-05 19:44:30','2025-12-05 19:44:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (505,266,12,'2025-12-05 19:44:30','2025-12-05 19:44:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (506,266,15,'2025-12-05 19:44:30','2025-12-05 19:44:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (507,266,14,'2025-12-05 19:44:30','2025-12-05 19:44:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (508,266,13,'2025-12-05 19:44:30','2025-12-05 19:44:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (509,266,11,'2025-12-05 19:44:30','2025-12-05 19:44:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (510,267,9,'2025-12-05 19:45:16','2025-12-05 19:45:16');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (511,267,12,'2025-12-05 19:45:16','2025-12-05 19:45:16');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (512,267,15,'2025-12-05 19:45:16','2025-12-05 19:45:16');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (513,267,14,'2025-12-05 19:45:16','2025-12-05 19:45:16');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (514,267,13,'2025-12-05 19:45:16','2025-12-05 19:45:16');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (515,267,10,'2025-12-05 19:45:16','2025-12-05 19:45:16');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (516,267,11,'2025-12-05 19:45:16','2025-12-05 19:45:16');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (517,268,9,'2025-12-05 19:45:46','2025-12-05 19:45:46');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (518,268,12,'2025-12-05 19:45:46','2025-12-05 19:45:46');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (519,268,15,'2025-12-05 19:45:46','2025-12-05 19:45:46');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (520,268,14,'2025-12-05 19:45:46','2025-12-05 19:45:46');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (521,268,10,'2025-12-05 19:45:46','2025-12-05 19:45:46');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (522,268,13,'2025-12-05 19:45:46','2025-12-05 19:45:46');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (523,268,11,'2025-12-05 19:45:46','2025-12-05 19:45:46');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (524,269,9,'2025-12-05 19:46:43','2025-12-05 19:46:43');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (525,270,9,'2025-12-05 19:47:19','2025-12-05 19:47:19');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (526,270,12,'2025-12-05 19:47:19','2025-12-05 19:47:19');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (527,270,15,'2025-12-05 19:47:19','2025-12-05 19:47:19');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (528,270,14,'2025-12-05 19:47:19','2025-12-05 19:47:19');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (529,270,10,'2025-12-05 19:47:19','2025-12-05 19:47:19');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (530,270,13,'2025-12-05 19:47:19','2025-12-05 19:47:19');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (531,271,9,'2025-12-05 19:48:00','2025-12-05 19:48:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (532,271,12,'2025-12-05 19:48:00','2025-12-05 19:48:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (533,271,15,'2025-12-05 19:48:00','2025-12-05 19:48:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (534,271,14,'2025-12-05 19:48:00','2025-12-05 19:48:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (535,271,13,'2025-12-05 19:48:00','2025-12-05 19:48:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (536,271,11,'2025-12-05 19:48:00','2025-12-05 19:48:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (537,271,10,'2025-12-05 19:48:00','2025-12-05 19:48:00');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (538,272,9,'2025-12-05 19:48:34','2025-12-05 19:48:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (540,272,15,'2025-12-05 19:48:34','2025-12-05 19:48:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (541,272,14,'2025-12-05 19:48:34','2025-12-05 19:48:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (542,272,10,'2025-12-05 19:48:34','2025-12-05 19:48:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (543,272,13,'2025-12-05 19:48:34','2025-12-05 19:48:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (544,272,11,'2025-12-05 19:48:34','2025-12-05 19:48:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (545,273,9,'2025-12-05 19:49:11','2025-12-05 19:49:11');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (546,274,9,'2025-12-05 19:49:33','2025-12-05 19:49:33');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (547,275,12,'2025-12-05 19:49:52','2025-12-05 19:49:52');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (548,276,15,'2025-12-05 19:50:16','2025-12-05 19:50:16');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (549,277,15,'2025-12-05 19:50:31','2025-12-05 19:50:31');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (550,278,15,'2025-12-05 19:50:46','2025-12-05 19:50:46');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (551,279,15,'2025-12-05 19:51:02','2025-12-05 19:51:02');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (552,280,14,'2025-12-05 19:51:22','2025-12-05 19:51:22');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (553,281,9,'2025-12-05 19:56:27','2025-12-05 19:56:27');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (554,282,9,'2025-12-05 19:58:08','2025-12-05 19:58:08');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (555,283,9,'2025-12-05 19:58:33','2025-12-05 19:58:33');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (556,284,11,'2025-12-05 19:58:56','2025-12-05 19:58:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (557,285,13,'2025-12-05 19:59:13','2025-12-05 19:59:13');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (558,286,13,'2025-12-05 19:59:42','2025-12-05 19:59:42');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (559,287,12,'2025-12-05 19:59:57','2025-12-05 19:59:57');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (560,288,14,'2025-12-05 20:00:23','2025-12-05 20:00:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (561,289,9,'2025-12-05 20:00:56','2025-12-05 20:00:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (562,289,12,'2025-12-05 20:00:56','2025-12-05 20:00:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (563,289,15,'2025-12-05 20:00:56','2025-12-05 20:00:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (564,289,14,'2025-12-05 20:00:56','2025-12-05 20:00:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (565,289,13,'2025-12-05 20:00:56','2025-12-05 20:00:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (566,289,11,'2025-12-05 20:00:56','2025-12-05 20:00:56');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (567,290,9,'2025-12-05 20:01:21','2025-12-05 20:01:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (568,290,12,'2025-12-05 20:01:21','2025-12-05 20:01:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (569,290,15,'2025-12-05 20:01:21','2025-12-05 20:01:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (570,290,14,'2025-12-05 20:01:21','2025-12-05 20:01:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (571,290,10,'2025-12-05 20:01:21','2025-12-05 20:01:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (572,290,13,'2025-12-05 20:01:21','2025-12-05 20:01:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (573,290,11,'2025-12-05 20:01:21','2025-12-05 20:01:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (574,291,17,'2025-12-05 20:02:18','2025-12-05 20:02:18');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (575,292,9,'2025-12-05 20:02:49','2025-12-05 20:02:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (576,292,12,'2025-12-05 20:02:49','2025-12-05 20:02:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (577,292,15,'2025-12-05 20:02:49','2025-12-05 20:02:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (578,292,14,'2025-12-05 20:02:49','2025-12-05 20:02:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (579,292,10,'2025-12-05 20:02:49','2025-12-05 20:02:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (580,292,13,'2025-12-05 20:02:49','2025-12-05 20:02:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (581,292,11,'2025-12-05 20:02:49','2025-12-05 20:02:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (582,293,13,'2025-12-05 20:03:13','2025-12-05 20:03:13');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (583,294,13,'2025-12-05 20:03:36','2025-12-05 20:03:36');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (584,295,9,'2025-12-05 20:03:52','2025-12-05 20:03:52');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (585,296,15,'2025-12-05 20:04:07','2025-12-05 20:04:07');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (586,297,13,'2025-12-05 20:04:34','2025-12-05 20:04:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (587,298,13,'2025-12-05 20:04:57','2025-12-05 20:04:57');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (588,299,10,'2025-12-05 20:05:34','2025-12-05 20:05:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (589,300,12,'2025-12-05 20:05:54','2025-12-05 20:05:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (590,301,16,'2025-12-09 15:33:58','2025-12-09 15:33:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (591,301,9,'2025-12-09 15:33:58','2025-12-09 15:33:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (592,301,12,'2025-12-09 15:33:58','2025-12-09 15:33:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (593,301,15,'2025-12-09 15:33:58','2025-12-09 15:33:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (594,301,14,'2025-12-09 15:33:58','2025-12-09 15:33:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (595,301,10,'2025-12-09 15:33:58','2025-12-09 15:33:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (596,301,13,'2025-12-09 15:33:58','2025-12-09 15:33:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (597,301,11,'2025-12-09 15:33:58','2025-12-09 15:33:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (598,302,16,'2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (599,302,9,'2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (600,302,15,'2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (601,302,14,'2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (602,302,10,'2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (603,302,13,'2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (604,302,11,'2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (605,302,12,'2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (606,303,12,'2025-12-09 15:40:30','2025-12-09 15:40:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (607,304,9,'2025-12-09 15:46:23','2025-12-09 15:46:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (608,304,12,'2025-12-09 15:46:23','2025-12-09 15:46:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (609,304,15,'2025-12-09 15:46:23','2025-12-09 15:46:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (610,304,14,'2025-12-09 15:46:23','2025-12-09 15:46:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (611,304,10,'2025-12-09 15:46:23','2025-12-09 15:46:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (612,304,13,'2025-12-09 15:46:23','2025-12-09 15:46:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (613,304,11,'2025-12-09 15:46:23','2025-12-09 15:46:23');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (614,305,11,'2025-12-09 15:47:39','2025-12-09 15:47:39');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (615,306,11,'2025-12-09 15:48:43','2025-12-09 15:48:43');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (616,307,11,'2025-12-09 17:29:36','2025-12-09 17:29:36');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (617,308,12,'2025-12-09 17:31:59','2025-12-09 17:31:59');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (618,309,12,'2025-12-09 17:33:30','2025-12-09 17:33:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (619,310,9,'2025-12-09 17:34:20','2025-12-09 17:34:20');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (620,311,15,'2025-12-09 17:42:40','2025-12-09 17:42:40');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (621,312,9,'2025-12-09 17:44:31','2025-12-09 17:44:31');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (622,313,9,'2025-12-09 17:46:32','2025-12-09 17:46:32');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (623,313,12,'2025-12-09 17:46:32','2025-12-09 17:46:32');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (624,313,15,'2025-12-09 17:46:32','2025-12-09 17:46:32');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (625,313,14,'2025-12-09 17:46:32','2025-12-09 17:46:32');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (626,313,13,'2025-12-09 17:46:32','2025-12-09 17:46:32');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (627,313,11,'2025-12-09 17:46:32','2025-12-09 17:46:32');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (628,313,10,'2025-12-09 17:46:32','2025-12-09 17:46:32');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (629,314,9,'2025-12-09 17:49:26','2025-12-09 17:49:26');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (630,314,12,'2025-12-09 17:49:26','2025-12-09 17:49:26');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (631,314,15,'2025-12-09 17:49:26','2025-12-09 17:49:26');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (632,314,10,'2025-12-09 17:49:26','2025-12-09 17:49:26');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (633,314,13,'2025-12-09 17:49:26','2025-12-09 17:49:26');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (634,314,11,'2025-12-09 17:49:26','2025-12-09 17:49:26');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (635,315,12,'2025-12-09 17:55:30','2025-12-09 17:55:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (636,315,13,'2025-12-09 17:55:30','2025-12-09 17:55:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (637,316,9,'2025-12-09 17:59:58','2025-12-09 17:59:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (638,316,15,'2025-12-09 17:59:58','2025-12-09 17:59:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (639,316,10,'2025-12-09 17:59:58','2025-12-09 17:59:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (640,316,13,'2025-12-09 17:59:58','2025-12-09 17:59:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (641,316,12,'2025-12-09 17:59:58','2025-12-09 17:59:58');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (642,317,9,'2025-12-09 18:36:51','2025-12-09 18:36:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (643,317,12,'2025-12-09 18:36:51','2025-12-09 18:36:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (644,317,15,'2025-12-09 18:36:51','2025-12-09 18:36:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (645,317,14,'2025-12-09 18:36:51','2025-12-09 18:36:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (646,317,10,'2025-12-09 18:36:51','2025-12-09 18:36:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (647,317,13,'2025-12-09 18:36:51','2025-12-09 18:36:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (648,317,11,'2025-12-09 18:36:51','2025-12-09 18:36:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (649,317,16,'2025-12-09 18:36:51','2025-12-09 18:36:51');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (650,318,9,'2025-12-09 18:39:38','2025-12-09 18:39:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (651,318,16,'2025-12-09 18:39:38','2025-12-09 18:39:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (652,318,12,'2025-12-09 18:39:38','2025-12-09 18:39:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (653,318,15,'2025-12-09 18:39:38','2025-12-09 18:39:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (654,318,14,'2025-12-09 18:39:38','2025-12-09 18:39:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (655,318,10,'2025-12-09 18:39:38','2025-12-09 18:39:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (656,318,13,'2025-12-09 18:39:38','2025-12-09 18:39:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (657,318,11,'2025-12-09 18:39:38','2025-12-09 18:39:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (658,319,16,'2025-12-09 18:43:34','2025-12-09 18:43:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (659,319,9,'2025-12-09 18:43:34','2025-12-09 18:43:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (660,319,12,'2025-12-09 18:43:34','2025-12-09 18:43:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (661,319,15,'2025-12-09 18:43:34','2025-12-09 18:43:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (662,319,14,'2025-12-09 18:43:34','2025-12-09 18:43:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (663,319,13,'2025-12-09 18:43:34','2025-12-09 18:43:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (664,319,11,'2025-12-09 18:43:34','2025-12-09 18:43:34');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (665,320,9,'2025-12-09 18:45:25','2025-12-09 18:45:25');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (666,320,12,'2025-12-09 18:45:25','2025-12-09 18:45:25');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (667,320,15,'2025-12-09 18:45:25','2025-12-09 18:45:25');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (668,320,14,'2025-12-09 18:45:25','2025-12-09 18:45:25');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (669,320,10,'2025-12-09 18:45:25','2025-12-09 18:45:25');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (670,320,13,'2025-12-09 18:45:25','2025-12-09 18:45:25');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (671,320,11,'2025-12-09 18:45:25','2025-12-09 18:45:25');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (672,321,16,'2025-12-09 18:54:54','2025-12-09 18:54:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (673,321,9,'2025-12-09 18:54:54','2025-12-09 18:54:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (674,321,12,'2025-12-09 18:54:54','2025-12-09 18:54:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (675,321,15,'2025-12-09 18:54:54','2025-12-09 18:54:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (676,321,14,'2025-12-09 18:54:54','2025-12-09 18:54:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (677,321,10,'2025-12-09 18:54:54','2025-12-09 18:54:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (678,321,13,'2025-12-09 18:54:54','2025-12-09 18:54:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (679,321,11,'2025-12-09 18:54:54','2025-12-09 18:54:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (680,322,16,'2025-12-09 18:56:49','2025-12-09 18:56:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (681,322,9,'2025-12-09 18:56:49','2025-12-09 18:56:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (682,322,12,'2025-12-09 18:56:49','2025-12-09 18:56:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (683,322,15,'2025-12-09 18:56:49','2025-12-09 18:56:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (684,322,10,'2025-12-09 18:56:49','2025-12-09 18:56:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (685,322,13,'2025-12-09 18:56:49','2025-12-09 18:56:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (686,323,16,'2025-12-09 19:00:22','2025-12-09 19:00:22');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (687,323,9,'2025-12-09 19:00:22','2025-12-09 19:00:22');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (688,323,12,'2025-12-09 19:00:22','2025-12-09 19:00:22');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (689,323,15,'2025-12-09 19:00:22','2025-12-09 19:00:22');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (690,323,10,'2025-12-09 19:00:22','2025-12-09 19:00:22');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (691,323,13,'2025-12-09 19:00:22','2025-12-09 19:00:22');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (692,324,13,'2025-12-09 19:02:05','2025-12-09 19:02:05');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (693,324,12,'2025-12-09 19:02:05','2025-12-09 19:02:05');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (694,324,15,'2025-12-09 19:02:05','2025-12-09 19:02:05');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (695,324,9,'2025-12-09 19:02:05','2025-12-09 19:02:05');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (696,324,10,'2025-12-09 19:02:05','2025-12-09 19:02:05');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (697,325,9,'2025-12-09 19:03:54','2025-12-09 19:03:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (698,325,12,'2025-12-09 19:03:54','2025-12-09 19:03:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (699,325,15,'2025-12-09 19:03:54','2025-12-09 19:03:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (700,325,14,'2025-12-09 19:03:54','2025-12-09 19:03:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (701,325,13,'2025-12-09 19:03:54','2025-12-09 19:03:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (702,325,11,'2025-12-09 19:03:54','2025-12-09 19:03:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (703,325,10,'2025-12-09 19:03:54','2025-12-09 19:03:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (704,326,16,'2025-12-09 19:10:38','2025-12-09 19:10:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (705,326,9,'2025-12-09 19:10:38','2025-12-09 19:10:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (706,326,12,'2025-12-09 19:10:38','2025-12-09 19:10:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (707,326,15,'2025-12-09 19:10:38','2025-12-09 19:10:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (708,326,14,'2025-12-09 19:10:38','2025-12-09 19:10:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (709,326,10,'2025-12-09 19:10:38','2025-12-09 19:10:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (710,326,13,'2025-12-09 19:10:38','2025-12-09 19:10:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (711,326,11,'2025-12-09 19:10:38','2025-12-09 19:10:38');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (712,327,9,'2025-12-09 19:12:54','2025-12-09 19:12:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (713,327,15,'2025-12-09 19:12:54','2025-12-09 19:12:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (714,327,10,'2025-12-09 19:12:54','2025-12-09 19:12:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (715,327,13,'2025-12-09 19:12:54','2025-12-09 19:12:54');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (716,328,12,'2025-12-09 19:13:43','2025-12-09 19:13:43');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (717,329,9,'2025-12-09 19:17:07','2025-12-09 19:17:07');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (718,329,12,'2025-12-09 19:17:07','2025-12-09 19:17:07');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (719,329,15,'2025-12-09 19:17:07','2025-12-09 19:17:07');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (720,329,14,'2025-12-09 19:17:07','2025-12-09 19:17:07');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (721,329,10,'2025-12-09 19:17:07','2025-12-09 19:17:07');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (722,329,11,'2025-12-09 19:17:07','2025-12-09 19:17:07');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (723,330,12,'2025-12-09 19:20:03','2025-12-09 19:20:03');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (724,330,14,'2025-12-09 19:20:03','2025-12-09 19:20:03');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (725,330,11,'2025-12-09 19:20:03','2025-12-09 19:20:03');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (726,330,9,'2025-12-09 19:20:03','2025-12-09 19:20:03');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (727,330,15,'2025-12-09 19:20:03','2025-12-09 19:20:03');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (728,330,10,'2025-12-09 19:20:03','2025-12-09 19:20:03');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (729,229,9,'2025-12-09 19:28:21','2025-12-09 19:28:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (730,229,10,'2025-12-09 19:28:21','2025-12-09 19:28:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (731,229,13,'2025-12-09 19:28:21','2025-12-09 19:28:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (732,229,15,'2025-12-09 19:28:21','2025-12-09 19:28:21');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (733,331,9,'2025-12-09 20:29:49','2025-12-09 20:29:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (734,331,15,'2025-12-09 20:29:49','2025-12-09 20:29:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (735,331,14,'2025-12-09 20:29:49','2025-12-09 20:29:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (736,331,10,'2025-12-09 20:29:49','2025-12-09 20:29:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (737,331,13,'2025-12-09 20:29:49','2025-12-09 20:29:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (738,331,11,'2025-12-09 20:29:49','2025-12-09 20:29:49');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (739,332,9,'2025-12-09 20:47:15','2025-12-09 20:47:15');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (740,332,12,'2025-12-09 20:47:15','2025-12-09 20:47:15');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (741,332,15,'2025-12-09 20:47:15','2025-12-09 20:47:15');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (742,332,14,'2025-12-09 20:47:15','2025-12-09 20:47:15');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (743,332,10,'2025-12-09 20:47:15','2025-12-09 20:47:15');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (744,332,13,'2025-12-09 20:47:15','2025-12-09 20:47:15');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (745,332,11,'2025-12-09 20:47:15','2025-12-09 20:47:15');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (746,333,9,'2025-12-10 13:41:36','2025-12-10 13:41:36');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (747,333,12,'2025-12-10 13:41:36','2025-12-10 13:41:36');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (748,333,15,'2025-12-10 13:41:36','2025-12-10 13:41:36');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (749,333,13,'2025-12-10 13:41:36','2025-12-10 13:41:36');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (750,333,10,'2025-12-10 13:41:36','2025-12-10 13:41:36');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (751,334,9,'2025-12-10 14:33:30','2025-12-10 14:33:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (752,334,12,'2025-12-10 14:33:30','2025-12-10 14:33:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (753,334,15,'2025-12-10 14:33:30','2025-12-10 14:33:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (754,334,10,'2025-12-10 14:33:30','2025-12-10 14:33:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (755,334,13,'2025-12-10 14:33:30','2025-12-10 14:33:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (756,334,16,'2025-12-10 14:33:30','2025-12-10 14:33:30');
INSERT INTO `productos_categorias` (`id`, `producto_id`, `categoria_id`, `created_at`, `updated_at`) VALUES (757,335,9,'2025-12-10 16:03:58','2025-12-10 16:03:58');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (196,220,'productos/01KAZYSXYZ7A4GRZWG1SKWJZ1E.webp',1,'2025-11-26 11:29:29','2025-11-26 11:29:29');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (199,221,'productos/01KBN8Z2VJVZ9VAXCWGBS2QY43.png',1,'2025-12-04 18:11:07','2025-12-04 18:11:07');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (200,222,'productos/01KBN904AFQMHPSEJF1M0ZAKX4.png',1,'2025-12-04 18:11:41','2025-12-04 18:11:41');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (201,223,'productos/01KBN94A2CN0VTQ4WH9769J0E7.png',1,'2025-12-04 18:13:58','2025-12-04 18:13:58');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (202,224,'productos/01KBN95X6NR75CS724KZWVK54H.png',1,'2025-12-04 18:14:50','2025-12-04 18:14:50');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (203,225,'productos/01KBN96P00H1ATVHT0FM4G85XG.png',1,'2025-12-04 18:15:16','2025-12-04 18:15:16');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (205,227,'productos/01KBN9A5AJ1409PM5TJWH7SMK7.png',1,'2025-12-04 18:17:10','2025-12-04 18:17:10');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (206,228,'productos/01KBN9BEY47K4FXAH1GYXMJ1Z9.png',1,'2025-12-04 18:17:52','2025-12-04 18:17:52');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (207,229,'productos/01KBN9DK78P17GB6YXPR536EKR.png',1,'2025-12-04 18:19:02','2025-12-04 18:19:02');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (208,230,'productos/01KBN9N2NKY7FNABFMDMZVG9ZF.png',1,'2025-12-04 18:23:07','2025-12-04 18:23:07');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (209,231,'productos/01KBN9P43ZY26ER9656NQA1YHV.png',1,'2025-12-04 18:23:42','2025-12-04 18:23:42');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (210,232,'productos/01KBN9QR8GJRRH51CZC50VV8FP.png',1,'2025-12-04 18:24:35','2025-12-04 18:24:35');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (211,233,'productos/01KBNCVY0Q7E25GCAE0AQK32FK.png',1,'2025-12-04 19:19:18','2025-12-04 19:19:18');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (212,234,'productos/01KBNCX1JH0BMFWBCBPG8ZQHKW.png',1,'2025-12-04 19:19:54','2025-12-04 19:19:54');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (213,235,'productos/01KBNCYC6YBEYZYY0J2B05TXZN.png',1,'2025-12-04 19:20:38','2025-12-04 19:20:38');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (214,236,'productos/01KBND0W71Q5YHJ3R57R28ENE6.png',1,'2025-12-04 19:22:00','2025-12-04 19:22:00');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (215,237,'productos/01KBNDJ2J5KVHBNTRNDP056ZKR.png',1,'2025-12-04 19:31:23','2025-12-04 19:31:23');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (216,238,'productos/01KBNE7FSVGQ0F85V5CFYZ4A14.png',1,'2025-12-04 19:43:05','2025-12-04 19:43:05');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (217,239,'productos/01KBNEE4AW4GZJ4PZQJZ381JMP.png',1,'2025-12-04 19:46:43','2025-12-04 19:46:43');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (218,240,'productos/01KBNEG37Z2ZN0KZ270VFPFNEJ.png',1,'2025-12-04 19:47:47','2025-12-04 19:47:47');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (219,241,'productos/01KBNEGT7BY8X4DPJ5GSV7NSY7.png',1,'2025-12-04 19:48:11','2025-12-04 19:48:11');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (220,242,'productos/01KBNEN2908HB7RBXAFFMZ2JZY.png',1,'2025-12-04 19:50:30','2025-12-04 19:50:30');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (221,243,'productos/01KBNENX6HF36T7YTCVP0Z4KCG.png',1,'2025-12-04 19:50:58','2025-12-04 19:50:58');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (222,244,'productos/01KBNF0GE3DWVPGFBT1J9M2R0J.png',1,'2025-12-04 19:56:45','2025-12-04 19:56:45');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (223,245,'productos/01KBNF2FB733SQ52V31MHBXYP1.png',1,'2025-12-04 19:57:49','2025-12-04 19:57:49');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (224,246,'productos/01KBNHDPDPQTA61XGWXF8GNQNV.png',1,'2025-12-04 20:38:54','2025-12-04 20:38:54');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (225,247,'productos/01KBNHJS5SZRPRE4V15SMN2XDH.png',1,'2025-12-04 20:41:41','2025-12-04 20:41:41');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (226,248,'productos/01KBNHN7QDPX9EJGMTYFERMAQE.png',1,'2025-12-04 20:43:01','2025-12-04 20:43:01');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (227,249,'productos/01KBNHPR0PQB22CHM87CSZBYBH.png',1,'2025-12-04 20:43:51','2025-12-04 20:43:51');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (228,250,'productos/01KBNHRPN5Z4X66C7VRS5D1EQN.png',1,'2025-12-04 20:44:55','2025-12-04 20:44:55');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (229,251,'productos/01KBNHT2P29NFZ4VMX6AANWS6H.png',1,'2025-12-04 20:45:40','2025-12-04 20:45:40');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (230,252,'productos/01KBNHVCZX41P7HFJBNS2WKQMT.png',1,'2025-12-04 20:46:23','2025-12-04 20:46:23');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (231,253,'productos/01KBNHWH2VKZ7M94S6A4MF09R0.png',1,'2025-12-04 20:47:00','2025-12-04 20:47:00');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (232,254,'productos/01KBNHXRH8B94D38EKQK375THE.png',1,'2025-12-04 20:47:41','2025-12-04 20:47:41');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (233,255,'productos/01KBNJ4590NCKKMVJ487D5PBE7.png',1,'2025-12-04 20:51:10','2025-12-04 20:51:10');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (234,256,'productos/01KBNJ5NPY2ZAREF2WZFEDHW5F.png',1,'2025-12-04 20:52:00','2025-12-04 20:52:00');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (235,257,'productos/01KBNJ6PQ3PXV3ZC1MN7YFQC1Y.png',1,'2025-12-04 20:52:34','2025-12-04 20:52:34');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (236,258,'productos/01KBNJ7CYVVZGB9H6EVG05C63E.png',1,'2025-12-04 20:52:56','2025-12-04 20:52:56');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (237,259,'productos/01KBNJ8CKERQFM7RMVHEGJGV64.png',1,'2025-12-04 20:53:29','2025-12-04 20:53:29');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (238,260,'productos/01KBNJ9Y5M7EX14KMAFQ64GA69.png',1,'2025-12-04 20:54:20','2025-12-04 20:54:20');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (239,261,'productos/01KBNJAN6PNSS6AP004TDEJQDX.png',1,'2025-12-04 20:54:43','2025-12-04 20:54:43');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (240,262,'productos/01KBR0ED3GBT3FM35V3BXXBGE1.png',1,'2025-12-05 19:39:55','2025-12-05 19:39:55');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (241,263,'productos/01KBR0F2VWVRVG6XJZCFENGP4E.png',1,'2025-12-05 19:40:17','2025-12-05 19:40:17');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (242,264,'productos/01KBR0G91C8ZCPSPF20A1VAD30.png',1,'2025-12-05 19:40:56','2025-12-05 19:40:56');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (243,265,'productos/01KBR0N9FSB90X9DJ7HZSXF0Z1.png',1,'2025-12-05 19:43:41','2025-12-05 19:43:41');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (244,266,'productos/01KBR0PT54MTHAGPB0M9TRP9J5.png',1,'2025-12-05 19:44:30','2025-12-05 19:44:30');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (245,267,'productos/01KBR0R6DNGK2KC2899QY4JFN6.png',1,'2025-12-05 19:45:16','2025-12-05 19:45:16');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (246,268,'productos/01KBR0S3GTX09D3659JWHMEDV6.png',1,'2025-12-05 19:45:46','2025-12-05 19:45:46');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (247,269,'productos/01KBR0TVGDCPKX3QAY9B9JFENY.png',1,'2025-12-05 19:46:43','2025-12-05 19:46:43');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (248,270,'productos/01KBR0VYVYNKRN8TMFQN05SWPW.png',1,'2025-12-05 19:47:19','2025-12-05 19:47:19');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (249,271,'productos/01KBR0X6RCB7QXRSBQ63H6ETPZ.png',1,'2025-12-05 19:48:00','2025-12-05 19:48:00');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (250,272,'productos/01KBR0Y89SJRHPD0G3C790HY7A.png',1,'2025-12-05 19:48:34','2025-12-05 19:48:34');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (251,273,'productos/01KBR0ZC3Z5RZNNGQ19MJ1WNEX.png',1,'2025-12-05 19:49:11','2025-12-05 19:49:11');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (252,274,'productos/01KBR102125KKDC6W28QJ8QAD7.png',1,'2025-12-05 19:49:33','2025-12-05 19:49:33');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (253,275,'productos/01KBR10MHDD2WRND8YSCNAB7FK.png',1,'2025-12-05 19:49:52','2025-12-05 19:49:52');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (254,276,'productos/01KBR11BR1N0G2M4V1AF07JFG4.png',1,'2025-12-05 19:50:16','2025-12-05 19:50:16');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (255,277,'productos/01KBR11T4YZEBN7KMMG3J2ADZW.png',1,'2025-12-05 19:50:31','2025-12-05 19:50:31');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (256,278,'productos/01KBR1299RMPBYTPW7BN7WN9XP.png',1,'2025-12-05 19:50:46','2025-12-05 19:50:46');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (257,279,'productos/01KBR12RB3246Z67HYPXY2ENP7.png',1,'2025-12-05 19:51:02','2025-12-05 19:51:02');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (258,280,'productos/01KBR13C9NGRWERVJXXZYTVWKM.png',1,'2025-12-05 19:51:22','2025-12-05 19:51:22');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (259,281,'productos/01KBR1CNHRB2Q846RJ10TQRJNN.png',1,'2025-12-05 19:56:27','2025-12-05 19:56:27');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (260,282,'productos/01KBR1FR5Y65YGFG120QRAXGFQ.png',1,'2025-12-05 19:58:08','2025-12-05 19:58:08');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (261,283,'productos/01KBR1GGRA3BNH2XYBTCY0Z74P.png',1,'2025-12-05 19:58:33','2025-12-05 19:58:33');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (262,284,'productos/01KBR1H78ZK036VYWCGAFKNZES.png',1,'2025-12-05 19:58:56','2025-12-05 19:58:56');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (263,285,'productos/01KBR1HQTNNNF1CD82SFJPMT40.png',1,'2025-12-05 19:59:13','2025-12-05 19:59:13');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (264,286,'productos/01KBR1JM3T2YBG4B0X5TNC4YA5.png',1,'2025-12-05 19:59:42','2025-12-05 19:59:42');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (265,287,'productos/01KBR1K340QDZB18N3TD8M8HMR.png',1,'2025-12-05 19:59:57','2025-12-05 19:59:57');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (266,288,'productos/01KBR1KW39K0SAKYK6JCTRVX1Z.png',1,'2025-12-05 20:00:23','2025-12-05 20:00:23');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (267,289,'productos/01KBR1MW6RWFHEBV97SRPF0DF6.png',1,'2025-12-05 20:00:56','2025-12-05 20:00:56');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (268,290,'productos/01KBR1NN0FS0GVZFQHVKJ613CP.png',1,'2025-12-05 20:01:21','2025-12-05 20:01:21');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (269,291,'productos/01KBR1QCT10DJ39PHQGS0T59B4.png',1,'2025-12-05 20:02:18','2025-12-05 20:02:18');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (270,292,'productos/01KBR1RARVG3WARJEXPKAAV59P.png',1,'2025-12-05 20:02:49','2025-12-05 20:02:49');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (271,293,'productos/01KBR1S1Z2K7G09X72BK7AJXK7.png',1,'2025-12-05 20:03:13','2025-12-05 20:03:13');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (272,294,'productos/01KBR1SS6D3PQ0HFG10G1XEWR9.png',1,'2025-12-05 20:03:36','2025-12-05 20:03:36');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (273,295,'productos/01KBR1T90F60QZ7MC07EJ4TS53.png',1,'2025-12-05 20:03:52','2025-12-05 20:03:52');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (274,296,'productos/01KBR1TQ6Z4HJR9FSF4PVEER76.png',1,'2025-12-05 20:04:07','2025-12-05 20:04:07');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (275,297,'productos/01KBR1VHJD7NDB8NQFSH66NCP9.png',1,'2025-12-05 20:04:34','2025-12-05 20:04:34');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (276,298,'productos/01KBR1W883QHGBDZRC2KFMGYVR.png',1,'2025-12-05 20:04:57','2025-12-05 20:04:57');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (277,299,'productos/01KBR1XCBMX4ES22VSB446V5CN.png',1,'2025-12-05 20:05:34','2025-12-05 20:05:34');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (278,300,'productos/01KBR1XZ9D17TWBNBXWQ39AJZZ.png',1,'2025-12-05 20:05:54','2025-12-05 20:05:54');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (279,301,'productos/01KC1VYYB87G5YWJ7XSDYQPQFM.png',1,'2025-12-09 15:33:58','2025-12-09 15:33:58');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (280,302,'productos/01KC1W8SX0Y03S8MCEWRQ80V1P.png',1,'2025-12-09 15:39:21','2025-12-09 15:39:21');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (281,303,'productos/01KC1WAWD92ZHG5ECD1PYVCTDJ.png',1,'2025-12-09 15:40:30','2025-12-09 15:40:30');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (282,304,'productos/01KC1WNNFGPR95R6EBC9Z7BDTE.png',1,'2025-12-09 15:46:23','2025-12-09 15:46:23');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (283,305,'productos/01KC1WR09QK0RA6JWSQWWVG9GN.png',1,'2025-12-09 15:47:39','2025-12-09 15:47:39');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (284,306,'productos/01KC1WSYCQN4YBY3G0R933F7GW.png',1,'2025-12-09 15:48:43','2025-12-09 15:48:43');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (285,307,'productos/01KC22JNNNNVBRAS0D7NN2NYDR.png',1,'2025-12-09 17:29:36','2025-12-09 17:29:36');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (286,308,'productos/01KC22Q16QVAC5BN16XQS3RAYZ.png',1,'2025-12-09 17:31:59','2025-12-09 17:31:59');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (287,309,'productos/01KC22STF3B3JZ5F3VP2T0DNQC.png',1,'2025-12-09 17:33:30','2025-12-09 17:33:30');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (288,310,'productos/01KC22VAJ9PJABDC59RK3J4DYN.png',1,'2025-12-09 17:34:20','2025-12-09 17:34:20');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (289,311,'productos/01KC23AK807FGXQDZ2SXJ50CM9.png',1,'2025-12-09 17:42:40','2025-12-09 17:42:40');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (290,312,'productos/01KC23DZ26X7J3N8RSSZ3GF84S.png',1,'2025-12-09 17:44:31','2025-12-09 17:44:31');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (291,313,'productos/01KC23HNB0SRHX3E8TJEMXBN1K.png',1,'2025-12-09 17:46:32','2025-12-09 17:46:32');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (292,314,'productos/01KC23PZ3YQ4Z5D5W081VV3AB0.png',1,'2025-12-09 17:49:26','2025-12-09 17:49:26');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (293,315,'productos/01KC2423FVXSSQ5D9MN8TFNFX5.png',1,'2025-12-09 17:55:30','2025-12-09 17:55:30');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (294,316,'productos/01KC24A8KKESPEA4MZF21AZKG1.png',1,'2025-12-09 17:59:58','2025-12-09 17:59:58');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (295,317,'productos/01KC26DT6VMJASQK5MVV2XMGZK.png',1,'2025-12-09 18:36:51','2025-12-09 18:36:51');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (296,318,'productos/01KC26JX5J9M91BYWWFA3GYV4W.png',1,'2025-12-09 18:39:38','2025-12-09 18:39:38');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (297,319,'productos/01KC26T3RSXZTJ0T6CKPVZ3Z3V.png',1,'2025-12-09 18:43:34','2025-12-09 18:43:34');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (298,320,'productos/01KC26XFG43QE2BZBA6GJE3J2Q.png',1,'2025-12-09 18:45:25','2025-12-09 18:45:25');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (299,321,'productos/01KC27EVCHZWFWJHWE8XB8METQ.png',1,'2025-12-09 18:54:54','2025-12-09 18:54:54');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (300,322,'productos/01KC27JBMAK4JVG0TEPZAY3BAM.png',1,'2025-12-09 18:56:49','2025-12-09 18:56:49');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (301,323,'productos/01KC27RW1ZMJ1Z8Y0ME6A0T5NH.png',1,'2025-12-09 19:00:22','2025-12-09 19:00:22');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (302,324,'productos/01KC27W0BVCVG071GEQWWMNK7K.png',1,'2025-12-09 19:02:05','2025-12-09 19:02:05');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (303,325,'productos/01KC27ZB2H848AGCCAT117F70V.png',1,'2025-12-09 19:03:54','2025-12-09 19:03:54');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (304,326,'productos/01KC28BN7P0GKJ2PZD9TMQ99A5.png',1,'2025-12-09 19:10:38','2025-12-09 19:10:38');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (305,327,'productos/01KC28FTDFXDYZT4VC00AW0M9N.png',1,'2025-12-09 19:12:54','2025-12-09 19:12:54');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (306,328,'productos/01KC28H9RA3TVBZFQPVBDHWEJ1.png',1,'2025-12-09 19:13:43','2025-12-09 19:13:43');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (307,329,'productos/01KC28QGXD5T5VJ7MFXQ6Z79YG.png',1,'2025-12-09 19:17:07','2025-12-09 19:17:07');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (308,330,'productos/01KC28WX4HBWVSDKDRFJ1EKV6V.png',1,'2025-12-09 19:20:03','2025-12-09 19:20:03');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (309,331,'productos/01KC2CWMQ5PEWBY2VBAECZBVSA.png',1,'2025-12-09 20:29:49','2025-12-09 20:29:49');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (310,332,'productos/01KC2DWJMGK5VA6AKXGR4TFWVW.png',1,'2025-12-09 20:47:15','2025-12-09 20:47:15');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (311,333,'productos/01KC47XWSFZ44311K5RRCTVP5F.png',1,'2025-12-10 13:41:36','2025-12-10 13:41:36');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (312,334,'productos/01KC4AWYABTZNNV3EXFTTAR8R7.png',1,'2025-12-10 14:33:30','2025-12-10 14:33:30');
INSERT INTO `productos_fotos` (`id`, `producto_id`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES (313,335,'productos/01KC4G2JGS8Z7MX3RAM4QKBPV5.png',1,'2025-12-10 16:03:58','2025-12-10 16:03:58');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (56,'PREMIX VITAMÍNICO ADULTO SABORAID PET','QP-798','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','<b>Premix Vitamínico Adulto Saboraid Pet</b> es un suplemento nutricional, desarrollado para ser incorporado en el alimento extruido de perros adultos.
<br>
<br>
Contiene un mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.|Vitamina A, Vitamina D3, Vitamina E, Vitamina B1, Vitamina B2, Vitamina B6, Ácido Fólico, Pantotenato de Calcio, Niacina, Cloruro de Colina, Óxido de Zinc, Sulfato Ferroso, Sulfato de Cobre, Selenito de Sodio, Carbonato de Calcio. Aditivos: BHT, BHA, BIO-MOS®, Zeolita, Ácido Cítrico, Levadura de Cerveza.|1 kg de <b>Premix Vitamínico Adulto Saboraid Pet</b> aporta:
<br>
|La dosis recomendada es 1 kg de <b>Premix Vitamínico Adulto Saboraid Pet</b> por cada tonelada de alimento. Para una dosificación personalizada o en casos específicos, se recomienda consultar con un médico veterinario o un especialista en nutrición animal.|Producto disponible en sacos de 25 kg, elaborados con polietileno de alta resistencia y bolsa interior. |Para mantener la calidad y eficacia del producto, se recomienda almacenar el envase en un lugar fresco (idealmente entre 10°C y 25°C), seco y protegido de la luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto este envase, debe sellarse de manera hermética o transferir el contenido a un recipiente con cierre seguro. 
<br>
<br>
Mantener un estricto control de plagas en el área de almacenamiento.|12 meses desde la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Para manipular este producto, se recomienda:
<br>
<br>
Utilizar equipo de protección personal: guantes, gafas de seguridad y mascarilla (para polvo) para proteger vías respiratorias, ojos y piel de posibles irritaciones causadas por partículas.
<br>
<br>
Trabajar en un área con buena ventilación.
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de cada uso.
<br>
<br>
Primeros Auxilios (Contacto Ocular): En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Seguridad: Mantener producto fuera del alcance de niños y animales.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|1.000.000 UI","VITAMINA D3|100.000 UI","VITAMINA E|10.000 UI ","VITAMINA B1|185 mg","VITAMINA B2|400 mg","NIACINA|3 g","PANTOTENATO DE CALCIO|1,8 g","VITAMINA B6|208 mg","ÁCIDO FÓLICO|41 mg","COLINA|104 g","HIERRO|4 g","ZINC|19 g","COBRE|385 mg","SELENIO|20 mg","B.H.T|4 g","B.H.A|360 mg","BIO-MOS®|30 g","ÁCIDO CÍTRICO|600 mg","PROTEINA|12,4 g","ZEOLITA|10,3 g"],[],[],[],[],[]]','{"pages":"3","margins":["32px","0px","0px","432px","12px","0px","0px","492px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (84,'CARBONATO DE CALCIO FINO','QP - 65','DESCRIPCIÓN|CARACTERÍSTÍCA QUÍMICAS|CARACTERÍSTICAS FÍSICAS|RESIDUO EN TAMIZ|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El <b>Carbonato de Calcio Fino</b> es un aditivo nutricional producido a partir de Conchuela natural de alta pureza. Su proceso de fabricación no incluye tratamientos térmicos, y es finamente molido a malla 40 (400 micrones), asegurando una granulometría óptima para una mezcla homogénea y una excelente biodisponibilidad.
<br>
<br>
<b>Identificación del producto:</b>
<br>
Número CAS: 471-34-1
<br>
Fórmula química: CaCO3
<br>
<br>
En nutrición animal, su principal objetivo es aportar calcio, cuya presencia es indispensable para mejorar el rendimiento y la salud de diversas especies. En porcinos, es fundamental para un adecuado desarrollo esquelético, siendo vital durante las fases de gestación, lactancia y crecimiento. Para el ganado bovino, es un aditivo clave que ayuda a prevenir enfermedades carenciales como osteoporosis, raquitismo, osteomalacia y osteobrosis, contribuyendo al crecimiento, la gestación y otras funciones vitales y productivas. Asimismo, satisface las altas demandas de calcio de aves, especialmente en ponedoras activas, promoviendo la formación de cáscaras resistentes y el bienestar general del plantel. En Salmones tiene un rol crucial para el desarrollo y mantenimiento de huesos y cartílagos fuertes y saludables, especialmente en las etapas de crecimiento rápido de los salmones, desde alevines hasta peces en engorda.||||La dosificación del Carbonato de Calcio Fino debe ser establecida por un nutricionista o especialista en nutrición animal, considerando la especie, la etapa productiva, los requerimientos específicos y la formulación total de la dieta. |Producto disponible en sacos de 25 kg y en maxisacos de 1.000 kg.|Almacenar en un lugar fresco, seco y bien ventilado, sobre pallets y protegido de luz solar directa. Mantener el envase herméticamente cerrado para prevenir la absorción de humedad y la contaminación.|60 meses desde la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Para manipular este producto, se recomienda:
<br>
<br>
Utilizar equipo de protección personal: guantes, gafas de seguridad y mascarilla (para polvo) para proteger vías respiratorias, ojos y piel de posibles irritaciones causadas por partículas.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
Trabajar en un área con buena ventilación.
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de cada uso.
<br>
<br>
Primeros Auxilios (Contacto Ocular): En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Seguridad: Mantener producto fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|true|true|true|false|false|false|false|false','[[],["CARB. DE CALCIO (CaCO3)|89% - 92%","CALCIO (Ca)|35 - 37 %","CARB. DE MAGNESIO (MgCO3)|1% MÁX.","ÓXIDO FÉRRICO (Fe2O3)|1% MÁX.","SÍLICE (SiO3)|1% MÁX.","INSOLUBILIDAD|2,8% MÁX."],["APARIENCIA|POLVO FINO","COLOR|BLANCO A GRIS","PESO ESPECÍFICO|0,9 A 1 G/CC","HUMEDAD|2% MÁX."],["MALLA 40 (400 &micro;m)|11% MÁX.","MALLA 60 (250 &micro;m)|30% MÁX.","MALLA 80 (170 &micro;m)|42% MÁX."],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","8px","300px","0px","0px","0px","0px","0px"],"rowsxtable":["10","51","22","14","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (85,'NÚCLEO CABALLOS - DIVERSA GROUP','QP-801','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','<b>Núcleo Caballos - Diversa Group</b> es un suplemento vitamínico mineral, desarrollado para ser incorporado en el alimento de equinos.
<br>
<br>
Contiene un mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo de los caballos. Se presenta en forma de polvo fino y homogéneo, lo que facilita una adecuada incorporación y dispersión en el alimento.    |Vitaminas: A, D3, E, B1, B2, B6, B12, Ácido Fólico, Niacina, Cloruro de Colina y Biotina.
Sulfato de Manganeso, Óxido de Zinc, Sulfato Ferroso, Yodato de Calcio, Sulfato de Cobre, Fosfato Bicálcico, Óxido de Magnesio, Carbonato de Calcio, Harinilla de Trigo, Levadura de Cerveza, Etoxiquina, BHT, EDTA y Ácido Cítrico.|1 kg de <b>Núcleo Caballos - Diversa Group</b>  aporta:
<br>
|Se recomienda consultar con un médico veterinario o un especialista en nutrición animal.|Producto disponible en sacos de 25 kg, elaborados con polietileno de alta resistencia y bolsa interior. |Para mantener la calidad y eficacia del producto, se recomienda almacenar el envase en un lugar fresco (idealmente entre 10°C y 25°C), seco y protegido de la luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto este envase, debe sellarse de manera hermética o transferir el contenido a un recipiente con cierre seguro. 
<br>
<br>
Mantener un estricto control de plagas en el área de almacenamiento.|12 meses desde la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Para manipular este producto, se recomienda:
<br>
<br>
Utilizar equipo de protección personal: guantes, gafas de seguridad y mascarilla (para polvo) para proteger vías respiratorias, ojos y piel de posibles irritaciones causadas por partículas.
<br>
<br>
Trabajar en un área con buena ventilación.
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de cada uso.
<br>
<br>
Primeros Auxilios (Contacto Ocular): En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Seguridad: Mantener producto fuera del alcance de los niños y animales.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|800.000 UI","VITAMINA D3|66.000 UI","VITAMINA E|19.000 UI ","VITAMINA B1|850 mg","VITAMINA B2|3.500 mg","VITAMINA B6|650 mg","VITAMINA B12|50 mg","ÁCIDO FÓLICO|1.800 mg","NIACINA (B3)|2.000 mg","VITAMINA C|20.000 mg","COLINA |11.000 mg","CALCIO|68 g","MANGANESO|10.000 mg","COBALTO|30 mg","ZINC|11.000 mg","HIERRO|8.600 mg","COBRE|2.500 mg","MAGNESIO |6.500 mg","FÓSFORO|40 g","YODO|35 mg","LEVADURA DE CERVEZA INACTIVA|80.000 mg"],[],[],[],[],[]]','{"pages":"3","margins":["44px","0px","0px","396px","0px","0px","0px","540px"],"rowsxtable":["10","10","11","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (86,'L-VALINA','QP - 441','DESCRIPCIÓN|USOS Y APLICACIONES|PROPIEDADES FÍSICAS Y QUIMICAS|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO| VIDA ÚTIL|PRECAUCIONES','<b>L-Valina</b>, grado alimenticio animal, es un aminoácido esencial utilizado como aditivo en la alimentación de diversas especies animales, como cerdos, aves y rumiantes. Su función principal es asegurar una nutrición equilibrada, promoviendo el crecimiento, el desarrollo y mejorando la eficiencia de los alimentos.
<br>
<br>
<b>Identificación del producto:</b><br><br>

Nombre comercial: L-Valina<br>
Sinónimos: Ácido 2-Amino-3-metilbutanoico, Valina<br>
CAS#: 72-18-4<br>
Fórmula química: C5H11NO2<br>
Grado: Grado alimenticio (Feed Grade)<br>
Forma física: Polvo cristalino blanco<br>
|La L-Valina es ampliamente utilizada en:
<br>
<br>
Piensos completos: Para aves, cerdos, bovinos, peces y otros animales de producción.<br>
Suplementos nutricionales: Mejora el rendimiento y salud de los animales.<br>
Aplicaciones específicas: Ideal para equilibrar perfiles de aminoácidos en dietas bajas en proteínas.<br><br>

Beneficios clave:<br><br>

Esencial para el crecimiento y desarrollo muscular.<br>
Mejora la eficiencia alimenticia y la ganancia de peso.<br>
Fortalece el sistema inmunológico.<br>
Reduce el estrés metabólico en animales de producción.|Apariencia: Polvo cristalino blanco<br>
Solubilidad: Soluble en agua, ligeramente soluble en etanol. Insoluble en solventes orgánicos no polares.<br>
Estabilidad: Estable bajo condiciones normales de almacenamiento. Sensible a la humedad.<br>
Densidad aparente: 0,8 - 1 g/cm³<br>
Tamaño de partícula: 97% pasa a través de un tamiz de 200 µm<br>
Contenido de L-Valina: 98% mínimo (expresado como L-Valina pura).<br>|Las dosis deben ser definidas por un veterinario o profesional de la nutrición según las necesidades específicas de cada aplicación.|Envase primario: Bolsa doble de LDPE (capa interna: película PE / capa externa: película PE).|Para mantener la calidad y eficacia del producto, se recomienda almacenar el envase en un lugar fresco (idealmente entre 10°C y 25°C), seco y protegido de la luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto este envase, debe sellarse de manera hermética o transferir el contenido a un recipiente con cierre seguro. 
<br>
<br>
Mantener un estricto control de plagas en el área de almacenamiento.|24 meses desde la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Para manipular este producto, se recomienda:
<br>
<br>
Utilizar equipo de protección personal: guantes, gafas de seguridad y mascarilla (para polvo) para proteger vías respiratorias, ojos y piel de posibles irritaciones causadas por partículas.
<br>
<br>
Trabajar en un área con buena ventilación.
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de cada uso.
<br>
<br>
Primeros Auxilios (Contacto Ocular): En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Seguridad: Mantener producto fuera del alcance de los niños y animales.','false|false|false|false|false|false|false|false','[[],[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","456px","0px","0px","0px","452px","72px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (87,'ÁCIDO ACÉTICO 90%','QP - 697','DESCRIPCIÓN|COMPOSICIÓN|INSTRUCCIONES DE USO|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El ácido acético (CH3COOH), es un compuesto orgánico ácido, soluble en agua, líquido, de aspecto incoloro que se produce a través de la carbonilación del metanol o por fermentación de bacterias.
<br>
<br>

El ácido acético (y su forma diluida, el vinagre) tiene varios usos en veterinaria debido a sus propiedades antisépticas, acidificantes y antimicrobianas. Es importante destacar que, en la mayoría de los casos, se utiliza en soluciones diluidas, ya que el ácido acético al 90% es corrosivo.
<br>
<br>

Entre las aplicaciones más usadas destacan:

En apicultura: prevención del desarrollo de mohos en el alimentador de colmenas de abejas y así controlar el desarrollo del parásito intracelular <i>Nosema apis</i>.
Otras aplicaciones: Limpieza de heridas, tratamiento de otitis en perros y gatos, infecciones fúngicas y bacterianas de la piel, acidificación del agua de bebida para aves y cerdos, tratamiento de cálculos urinarios en gatos, tratamiento de timpanitis en perros y caballos, repelente de pulgas y garrapatas, control de parásitos, desinfección de equipos e instalaciones. 
<br>
<br>
<b>Identificación del producto:</b> <br>Código CAS: 64-19-7 <br> Fórmula química: CH3COOH
|Ácido acético (CH3COOH): 90% p/p, agua (H2O): 10% p/p|Este producto, en concentración de 90%, es para <b>uso profesional exclusivo. Debe ser diluido a la concentración adecuada y segura por un médico veterinario, zootecnista o especialista calificado antes de cualquier aplicación en animales, alimentos, agua de bebida, equipos o instalaciones.</b>
<br>
<br> 
Las dosis, métodos y vías de aplicación varían significativamente según la especie, el objetivo del tratamiento o conservación, y deben seguirse estrictamente las recomendaciones de un profesional.|Botellas de 1 kg y bidones de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), seco, bien ventilado, y protegido de la luz solar directa. 
<br>
<br>
Mantener el envase bien cerrado en un lugar seguro, alejado de materiales incompatibles (bases fuertes, agentes oxidantes, metales reactivos).
<br>
<br> 
Evitar el contacto directo con el suelo. Una vez abierto el envase, volver a sellar herméticamente o mantener en un recipiente adecuado y resistente a productos químicos.
<br>
<br>
 Almacenar fuera del alcance de niños y animales.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|El ácido acético al 90% es una sustancia altamente corrosiva y tóxica por ingestión e inhalación. Evite el contacto directo con la piel, ojos, mucosas y ropa. No inhale los vapores.
Equipo de Protección Personal (EPP) Obligatorio:


Utilice guantes resistentes a productos químicos (ej. butilo, nitrilo grueso).
<br>
<br>
Use protección ocular (gafas de seguridad tipo goggle o, preferiblemente, una pantalla facial completa).
<br>
<br>
Asegure una ventilación adecuada en el área de trabajo. En caso de riesgo de exposición a vapores, utilice protección respiratoria con filtro adecuado para gases ácidos (ej. cartucho tipo B o ABEK).
<br>
<br>
Utilice ropa de protección que cubra todo el cuerpo y calzado de seguridad resistente a productos químicos.
<br>
<br>
En caso de ingestión accidental: NO INDUZCA EL VÓMITO. Enjuague la boca con abundante agua. NO administre nada por vía oral a una persona inconsciente. Busque atención médica inmediatamente. Muestre la etiqueta del producto o la ficha de seguridad al personal médico.
<br>
<br>
En caso de contacto con los ojos: Lave inmediata y abundantemente con agua limpia a baja presión durante al menos 30 minutos, manteniendo los párpados abiertos. Si usa lentes de contacto, quítelos si es fácil hacerlo. Busque atención médica oftalmológica de emergencia inmediatamente después del enjuague prolongado.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
En caso de contacto con la piel: Retire la ropa y calzado contaminados inmediatamente. Lave la zona afectada con abundante agua (preferiblemente ducha de seguridad) durante al menos 30 minutos. Si la irritación, el dolor o las quemaduras (químicas) persisten, busque atención médica. Lave la ropa contaminada antes de volver a usarla o deséchela adecuadamente.
<br>
<br>
En caso de inhalación: Traslade a la persona afectada a un lugar con aire fresco. Mantenga al paciente abrigado y en reposo. Si no respira o la respiración es dificultosa, administre respiración artificial o oxígeno (si está capacitado) y busque atención médica inmediatamente.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","0px","308px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (88,'SULFATO DE CONDROITINA','QP - 96','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Sulfato de Condroitina es un glicosaminoglicano (GAG) de origen natural, que forma parte esencial de la matriz extracelular del cartílago, tendones, ligamentos y tejido conectivo. Se presenta como un polvo cristalino blanco o ligeramente amarillo, soluble en agua y con buena estabilidad bajo condiciones normales, aunque es sensible a la humedad.
<br>
<br>
En nutrición animal, es un suplemento ampliamente reconocido y utilizado para el soporte y la mejora de la salud articular, la elasticidad del cartílago y la función general del tejido conectivo. Es un componente clave en programas nutricionales para animales con alta exigencia física, aquellos en crecimiento acelerado o en etapas avanzadas de vida.
<br>
<br>
<b>Identificación del producto</b>:
<br>
<br>
Número CAS: 9007-28-7
<br>
Fórmula química: (C13H20NO14SNa)n
<br>
<br>
<b>Usos y aplicaciones en nutrición animal</b>: 
<br>
<br>
Piensos completos: Incorporado en formulaciones para diversas especies como perros, gatos, caballos, bovinos y aves, donde la salud articular es un factor crítico para el rendimiento o la calidad de vida.
<br>
<br>
Suplementos nutricionales: Diseñado para animales con problemas articulares diagnosticados (como osteoartritis), lesiones, periodos de recuperación post-quirúrgica, o como medida preventiva en razas predispuestas y animales de alto rendimiento.
<br>
<br>
Aplicaciones específicas: Beneficia a perros y gatos de razas grandes y gigantes, animales geriátricos, caballos deportivos (salto, doma, carrera), y animales de trabajo que experimentan un desgaste articular significativo.
<br>
<br>
<b>Beneficios</b>:
<br>
<br>
Promueve la salud articular y la regeneración del cartílago: Funciona como un componente estructural del cartílago, ayudando a mantener su hidratación y elasticidad. También puede estimular la producción de nuevos componentes cartilaginosos.
<br>
<br>
Reduce la inflamación y el dolor articular: Posee propiedades antiinflamatorias que ayudan a mitigar el dolor y la hinchazón asociados con el desgaste articular y la osteoartritis.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
Mejora la movilidad y la flexibilidad: Al contribuir a la salud del cartílago y reducir las molestias, favorece una mayor amplitud de movimiento en las articulaciones, esencial para el bienestar y el rendimiento físico.
<br>
<br>
Inhibe la degradación del cartílago: Puede ayudar a proteger el cartílago existente de la acción de enzimas degradativas, ralentizando el progreso de la enfermedad articular.|95% Sulfato de condroitina|La dosificación del Sulfato de Condroitina debe ser determinada por un <b>veterinario o un profesional de la nutrición animal</b>. Es crucial considerar la especie, el tamaño, la edad, el nivel de actividad física, la severidad de la condición articular y la respuesta individual del animal para establecer una dosis efectiva y segura.|Producto disponible en bolsas aluminizadas de 1 kg y cajas de 25 kg con bolsa plástica interior.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.

','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","0px","0px","0px","320px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (89,'PLANTILLA GENERAL','QP - 345','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','|||||||','false|false|false|false|false|false|false|false','[[],[],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (90,'ÁCIDO CÍTRICO','QP - 7','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Ácido Cítrico es un ácido orgánico débil, presentado como un polvo blanco, cristalino e inodoro. Se obtiene por fermentación de carbohidratos.
<br>
<br>
En nutrición animal, se valora por sus propiedades como <b>acidificante, conservante, quelante y potenciador del sabor.</b> Su uso principal se centra en la mejora de la digestibilidad de los nutrientes, la inhibición del crecimiento de microorganismos patógenos en el alimento y el tracto gastrointestinal, y la optimización del rendimiento productivo en diversas especies. Actúa reduciendo el pH del alimento y del estómago, lo que favorece la actividad enzimática, especialmente de la pepsina, y la solubilización de minerales. Además, contribuye a la palatabilidad de las dietas.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 77-92-9
<br>
Fórmula química: C6H8O7|Ácido Cítrico 99%.|La dosificación de Ácido Cítrico varía significativamente según la especie animal, la fase productiva y el objetivo deseado.
<br>
<br>
Se recomienda consultar siempre a un especialista en nutrición animal. |Producto disponible en sacos de papel kraft y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa. 
<br>
<br>
Evitar el contacto directo con el suelo. 
<br>
<br>
Es fundamental mantener el envase original cerrado herméticamente para evitar la absorción de humedad, ya que el ácido cítrico es higroscópico. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|36 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Manipulación: Utilizar equipo de protección personal adecuado (guantes, gafas de seguridad y mascarilla) para evitar el contacto directo con la piel, ojos y la inhalación de polvo.
<br>
<br>
Irritación: Puede causar irritación leve en piel y ojos. En caso de contacto, lavar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Inhalación: Evitar la inhalación de polvo. En caso de inhalación excesiva, trasladar a la persona a un área con aire fresco.
<br>
<br>
Ingestión: En caso de ingestión accidental, beber agua en abundancia y buscar asesoramiento médico si es necesario.
<br>
<br>
Compatibilidad: Asegurar la compatibilidad con otros ingredientes de la formulación para evitar reacciones indeseadas.
<br>
<br>
Eliminación: Disponer del producto y sus residuos de acuerdo con las normativas locales vigentes.
','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","412px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (91,'ÁCIDO FÓRMICO 85%','QP - 673','DESCRIPCIÓN|COMPOSICIÓN|INSTRUCCIONES DE USO|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El ácido fórmico al 85% es un líquido incoloro de olor penetrante y picante, utilizado en la producción animal como acidificante y conservante.
<br>
<br>
Se aplica la alimentación para reducir el pH del alimento, inhibiendo el crecimiento de bacterias patógenas como Salmonella y E. coli, mejorando la digestibilidad de los nutrientes y la salud intestinal de los animales.
<br>
<br>
En apicultura, el ácido fórmico es un acaricida orgánico muy utilizado para el control del ácaro parásito <i>Varroa destructor</i>, una de las principales amenazas para la salud y supervivencia de las colonias de abejas.
<br>
<br>
También se utiliza en la conservación de ensilaje, donde previene el deterioro por bacterias y hongos, manteniendo la calidad nutricional del forraje.
<br>
<br>
<br>
<b>Identificación del producto:</b>
<br>
Número CAS: 64-18-6
<br>
Fórmula química: CH2O2 o HCOOH

|Ácido Fórmico: 85%, Agua: 15%.|Producto para <b>uso profesional exclusivo. Debe ser diluido a la concentración adecuada y segura por un médico veterinario, zootecnista o especialista calificado antes de cualquier aplicación.</b>
<br>
<br>
Las dosis, métodos y vías de aplicación varían significativamente según la especie, el objetivo del tratamiento o conservación, y deben seguirse estrictamente las recomendaciones de un profesional.|Producto disponible en botellas de 1 kg y bidones 25 kg|Almacenar en un lugar fresco, seco y bien ventilado. Mantener el envase herméticamente cerrado.
<br>
<br>
Evitar la exposición directa a la luz solar y fuentes de calor.
<br>
<br>
Almacenar separado de bases fuertes, oxidantes y materiales combustibles.
<br>
<br>
Utilizar sistemas de contención adecuados para evitar derrames.|La vida útil del producto es de 24 meses a partir de la fecha de fabricación, siempre y cuando se almacene bajo las condiciones recomendadas y el envase permanezca sellado.|<b>Corrosivo</b>: El producto es corrosivo y puede causar quemaduras graves en la piel, los ojos y las vías respiratorias.
<br>
<br>
<b>Equipo de Protección Personal (EPP)</b>: Usar siempre guantes de nitrilo, gafas de seguridad, protector facial, delantal de goma y botas de seguridad al manipular el producto.
<br>
<br>
<b>Ventilación</b>: Trabajar en áreas con buena ventilación o con un sistema de extracción de aire.
<br>
<br>
<b>Primeros Auxilios</b>: En caso de contacto con la piel, lavar con abundante agua. En caso de contacto con los ojos, enjuagar inmediatamente con agua durante al menos 15 minutos. En caso de inhalación, trasladar a la persona a un lugar con aire fresco. En caso de ingestión, no inducir el vómito y buscar atención médica de inmediato.
<br>
<br>
<b>Producto de uso veterinario</b>: Este producto está destinado exclusivamente para uso veterinario y debe ser manipulado por un profesional capacitado.
','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","344px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (92,'ÁCIDO OXÁLICO','QP - 050','DESCRIPCIÓN|COMPOSICIÓN|INSTRUCCIONES DE USO|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El ácido oxálico, también conocido como ácido etanodioico, sal de limón o sal amarga, es un ácido dicarboxílico orgánico con dos átomos de carbono. Se presenta comúnmente como un sólido cristalino blanco, soluble en agua.
<br>
<br>
<b>Identificación del producto:</b>
<br>
Número CAS: 144-62-7
<br>
Fórmula química: H2C2O4
<br>
<br>
El ácido oxálico es una sustancia <b>tóxica por ingestión y contacto con la piel, y provoca lesiones oculares graves</b>. Su manejo debe ser extremadamente cuidadoso. Debido a sus propiedades quelantes (capacidad de unirse a iones metálicos), ácidas y su acción desincrustante y blanqueadora, tiene diversas aplicaciones.
<br>
<br>
Entre las aplicaciones más comunes en el ámbito veterinario y agropecuario, se incluyen:
<br>
<br>
<b>En Apicultura</b>: Es un acaricida ampliamente utilizado para el control del ácaro Varroa destructor (varroosis) en colmenas de abejas. Se aplica principalmente por goteo o sublimación en concentraciones y métodos específicos para asegurar la eficacia y la seguridad de las abejas.
<br>
<b>Limpieza de Equipos y Superficies</b>: Dada su capacidad para disolver óxidos y remover manchas, puede ser utilizado en soluciones diluidas para la limpieza y desincrustación de equipos de ordeño, bebederos, comederos y otras superficies en instalaciones pecuarias, siempre con un enjuague posterior muy exhaustivo para evitar residuos tóxicos.
<br>
<b>Decapado y Blanqueo de Maderas</b>: Aunque menos común en aplicaciones directas con animales, su uso para blanquear y restaurar la madera en estructuras de granjas puede ser relevante, siempre con las máximas precauciones para evitar la exposición animal y humana.
|Ácido Oxálico (H2C2O4): 99,7% p/p. |Este producto es para <b>uso profesional exclusivo. Es crucial manipularlo con extrema precaución y siempre siguiendo las instrucciones específicas del fabricante del equipo de aplicación o las directrices de un médico veterinario, zootecnista o especialista calificado</b>. Las dosis, métodos y vías de aplicación (especialmente en apicultura) varían significativamente y deben seguirse estrictamente las recomendaciones para garantizar la seguridad y eficacia, minimizando cualquier riesgo para los animales o el medio ambiente.|Producto disponible en frascos plásticos de 1 kg.|Almacenar en un lugar fresco, seco, bien ventilado y protegido de la luz solar directa. Mantener el envase bien cerrado en un lugar seguro, <b>alejado del alcance de niños y animales</b>. Evitar el contacto directo con el suelo. Almacenar <b>separado de materiales incompatibles</b> como bases fuertes, agentes oxidantes fuertes, hipoclorito de sodio (lejía), sales de metales pesados y productos que contengan metales como el hierro.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.
|El ácido oxálico es una sustancia <b>nociva en caso de ingestión o en contacto con la piel, provoca lesiones oculares graves, y puede provocar daños en los órganos tras exposiciones prolongadas o repetidas</b>. Evite el contacto directo con la piel, ojos, mucosas y ropa. No inhale el polvo.
<br>
<br>
<b>Equipo de Protección Personal (EPP) Obligatorio</b>:
<br>
<br>
Utilice <b>guantes resistentes a productos químicos</b> (ej. nitrilo, neopreno).
<br>
Use <b>protección ocular</b> (gafas de seguridad tipo goggle o una <b>pantalla facial completa</b>).
<br>
Asegure una <b>ventilación adecuada</b> en el área de trabajo o utilice <b>protección respiratoria</b> con un filtro de partículas adecuado (ej. P2/P3) si hay riesgo de inhalación de polvo.
<br>
<br>
Utilice <b>ropa de protección</b> que cubra todo el cuerpo y calzado de seguridad.
<br>
<b>En caso de ingestión accidental: NO INDUZCA EL VÓMITO</b>. Enjuague la boca con agua. NO administre leche o agua. NO administre nada por vía oral a una persona inconsciente. Busque atención médica <b>inmediatamente</b>. Muestre la etiqueta del producto o la ficha de seguridad al personal médico.
<br>
<br>
<b>En caso de contacto con los ojos</b>: Lave inmediata y abundantemente con agua limpia a baja presión durante al menos <b>15 minutos</b>, manteniendo los párpados abiertos. Si usa lentes de contacto, quítelos si es fácil hacerlo. <b>Busque atención médica oftalmológica de emergencia inmediatamente después del enjuague prolongado</b>.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<b>En caso de contacto con la piel</b>: Retire la ropa y calzado contaminados inmediatamente. Lave la zona afectada con abundante agua y jabón suave durante al menos <b>15 minutos</b>. Si la irritación, el dolor o las quemaduras (químicas) persisten, busque atención médica. Lave la ropa contaminada antes de volver a usarla o deséchela adecuadamente.
<br>
<br>
<b>En caso de inhalación (polvo)</b>: Traslade a la persona afectada a un lugar con aire fresco. Mantenga al paciente abrigado y en reposo.
<br>
<b','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","288px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (93,'SOLERGY','QP - 757','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','SOLERGY es un suplemento nutricional desarrollado para aportar energía a los animales a través de su dieta habitual. Permite la obtención de energía extra por una mayor eficiencia en el aprovechamiento energético de los procesos catabólicos que ocurren en el animal. 
<br>
<br>
<b>Modo de acción</b>
<br>
<br>
SOLERGY consta de sustratos gluconeogénicos y moléculas fitogenéticas. SOLERGY aumenta la producción de energía mediante el suministro de componentes energéticos (gluconeogénicos) y de un mejor aprovechamiento energético de la dieta por la modulación génica derivada de la acción de moléculas fotogénicas.



|Precursores gluconeogénicos, fitogénicos antioxidantes y antinflamatorios, fitogénicos moduladores del metabolismo, propilenglicol, propionato de calcio, diatomita, sepiolita.|<b>Especies objetivo</b>:
<br>
<br>
<b>Rumiantes</b>: 1-3 g / 25 kg PV / día
<br>
<br>
<b>Cerda lactante</b>: 20 – 40 g / animal / día
<br>
<br>
<b>Avicultura</b>:
<br>
<br>
Ponedoras: reemplazo de la grasa añadida a la dieta, ratio 1:10. 
<br>
Ponedoras: adición de 500 g/t on top en estrés por calor
<br>
Pollitas de recría: 300 a 500 g/t.
<br>
<br>
<b>Avicultura de carne</b>: reemplazo de la grasa añadida, ratio 1:10 de acuerdo a los siguientes niveles de inclusión:
<br>
<br>
Pollos de 1 a 10 días: de 1,5 a 2,5 kg Solergy/t
<br>
Pollos de 10 a 28 días: de 0,6 a 1,5 kg Solergy/t
<br>
Pollos de más de 28 días: de 0,6 a 1 kg Solergy/t. 
<br>
<br>
<b>Reemplazo total o parcial de las grasas añadidas a razón de 1 kg de Solergy por cada 10 kg de grasa o aceite. Para formulación se debe considerar un valor energético de 77,5 Mcal/kg</b> 

|Sacos BOPP de 20 kg.|Para mantener la calidad y eficacia del producto, se recomienda almacenar el envase en un lugar fresco (idealmente entre 10°C y 25°C), seco y protegido de la luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto este envase, debe sellarse de manera hermética o transferir el contenido a un recipiente con cierre seguro.
<br>
<br>
Mantener un estricto control de plagas en el área de almacenamiento.|Tiene una validez de 24 meses desde la fecha de fabricación si las condiciones de almacenamiento son las especificadas.
|Este producto es seguro para los usos indicados. El producto está exento de organismos modificados genéticamente (GMO) y de productos de origen animal. Cumple con las directivas 2002/32/EC, 2003/57/CE y 2003/100/CE del Parlamento Europeo y del Consejo sobre sustancias indeseables en la alimentación animal (metales pesados y dioxinas). 
<br>
<br>
Para manipular este producto, se recomienda:
<br>
<br>
Utilizar equipo de protección personal: guantes, gafas de seguridad y mascarilla (para polvo) para proteger vías respiratorias, ojos y piel de posibles irritaciones causadas por partículas.
<br>
<br>
Trabajar en un área con buena ventilación.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de cada uso.
<br>
<br>
Primeros Auxilios (Contacto Ocular): En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Seguridad: Mantener producto fuera del alcance de los niños y animales.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","272px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (94,'ANTIOX EC','QP - 650','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','ANTIOX EC es un potente antioxidante especialmente formulado para la industria de la alimentación animal, diseñado para proteger la calidad y extender la vida útil de los ingredientes y piensos. Su formulación avanzada combina la acción sinérgica de la Vitamina C y la Vitamina E, reconocidas por su capacidad de capturar radicales libres. Estos radicales son moléculas inestables que se forman durante la oxidación natural de las materias primas y alimentos procesados, acelerando su deterioro, la pérdida de nutrientes y el desarrollo de rancidez.
<br>
<br>
Antiox EC también incorpora ácido cítrico, Butilhidroxianisol (BHA) y Butilhidroxitolueno (BHT) , que complementan y potencian el efecto antioxidante, ofreciendo una protección integral contra la degradación oxidativa.
<br>
<br>
Al neutralizar eficazmente los radicales libres, ANTIOX EC ayuda a mantener la frescura, el sabor, el color y crucialmente, el valor nutricional de los alimentos para animales por más tiempo, asegurando una mayor estabilidad y eficacia en la dieta.|Ácido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT), Vitamina C, Vitamina E. Carbonato de Calcio. |La dosificación recomendada de ANTIOX EC es de 500 gramos a 1 kgpor cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de la especie animal.| Producto disponible en sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|18 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y de otros animales no objetivo.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","416px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (95,'ANTIOX QP','QP - 030','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Antiox QP es una solución antioxidante avanzada, específicamente formulada para la alimentación animal. Este producto está diseñado para ofrecer una protección robusta y completa contra la oxidación, la principal causa del deterioro de la calidad y la reducción de la vida útil en materias primas y piensos. Su composición única incluye una mezcla sinérgica de potentes antioxidantes sintéticos como BHA (Butilhidroxianisol) y BHT (Butilhidroxitolueno), que actúan neutralizando eficazmente los radicales libres.
<br>
<br>
Además, Antiox QP incorpora Ácido Cítrico, que funciona como secuestrante de iones metálicos que actúan como pro-oxidantes, potenciando así la acción de los antioxidantes primarios y ofreciendo una defensa más integral contra la rancidez y la degradación. |Ácido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT), Vitamina E. Carbonato de Calcio.|La dosificación recomendada de Antiox QP es de 500 gramos a 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de la especie animal.|Producto disponible en sacos de polietileno de 25 kg y en bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","464px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (96,'L-ARGININA','QP - 033','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La L-Arginina es un aminoácido semi-esencial o condicionalmente esencial, dependiendo de la especie animal y su estado fisiológico. Químicamente identificada como L-ARGININA y con fórmula molecular C6H14N4O2, este aminoácido desempeña un papel fundamental en numerosos procesos metabólicos críticos para la salud, el crecimiento y el rendimiento productivo en diversas especies animales.
<br>
<br>
<b>Identificación del producto</b>:
<br>
Número CAS: 74-79-3
<br>
Fórmula química: C6H14N4O2
<br>
<br>
En nutrición de caballos, la L-Arginina es valorada principalmente por ser un precursor del óxido nítrico, lo cual tiene múltiples beneficios, por ejemplo:
<br>
<br>
Mejora de la capacidad pulmonar: Al optimizar el flujo sanguíneo pulmonar, la L-arginina puede contribuir a una mayor eficiencia en el intercambio de gases, lo que se traduce en una mejor oxigenación y, por ende, una mayor capacidad pulmonar durante el esfuerzo. 
<br>
<br>
Reducción de riesgo de Hemorragia Pulmonar Inducida por el Ejercicio (EIPH, por sus siglas en inglés).
<br>
Reducción de la fatiga: Una mejor entrega de oxígeno a los músculos puede ayudar a mantener la energía y retrasar la aparición de la fatiga.
<br>
Apoyo a la recuperación: Al mejorar la circulación y tener propiedades antioxidantes, la L-arginina puede contribuir a una recuperación más rápida después de un ejercicio intenso.
<br>
Salud vascular general: Más allá de los pulmones, la L-arginina apoya la salud del sistema cardiovascular en general, lo cual es vital para el caballo atleta.
<br>
<br>
En otras especies:
<br>
<br>
Síntesis proteica: Es un componente esencial para la formación de proteínas, contribuyendo directamente al desarrollo muscular y al crecimiento general. Esto es crucial en todas las especies de producción, destacándose en aves (pollos de engorde, ponedoras), porcinos, ganado bovino (carne y leche), peces y camarones, donde maximizar la conversión alimenticia y el desarrollo de masa magra es un objetivo principal.
<br>
<br>
Ciclo de la urea: Participa activamente en la desintoxicación del amoníaco, un subproducto tóxico del metabolismo proteico, facilitando su eliminación y manteniendo la salud hepática. Esta función es vital en mamíferos (porcinos, bovinos, caninos, felinos) y aves, especialmente bajo dietas con alto contenido proteico.
|L-Arginina: 100% (Grado nutricional/feed grade)|La dosificación de L-Arginina debe ser establecida por un veterinario o un especialista en nutrición animal, considerando el peso, la edad, el nivel de actividad física (ejercicio intenso, entrenamiento), la condición fisiológica y los objetivos específicos del animal. Como precursor del óxido nítrico, las dosis deben ser cuidadosamente ajustadas para maximizar los beneficios en la función cardiovascular y respiratoria, así como en la recuperación muscular.|Envase primario: Bolsa doble de LDPE (Polietileno de Baja Densidad), con una capa interna de película PE y una capa externa de película PE, asegurando protección contra la humedad.
<br>
<br>
Envase secundario: Cartón de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|36 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y de otros animales no objetivo.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","368px","0px","0px","0px","0px","336px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (97,'B - COMPLEX','QP - 040','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','B - COMPLEX es un suplemento vitamínico peletizado, formulado para prevenir deficiencias de las vitaminas del complejo B en equinos. También se utiliza como complemento nutricional durante periodos de convalecencia, para estimular el apetito y promover un crecimiento saludable. Las vitaminas del complejo B son esenciales ya que regulan el metabolismo de carbohidratos, proteínas y grasas, y son vitales para el buen funcionamiento de los sistemas nervioso e inmunológico, así como para la actividad muscular.|Vitamina B1 (Tiamina), Vitamina B2 (Riboflavina), Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de Calcio), Vitamina B6 (Piridoxina), Vitamina B7 (Biotina), Vitamina B12 (Cianocobalamina), Cloruro de Colina, Levadura de Cerveza, Harinilla de Trigo y Propionato de Calcio.
|1 kg de B - COMPLEX aporta:
|B - COMPLEX se administra por vía oral, pudiendo ser suministrado directamente o mezclado con el alimento.
<br>
<br>
Equinos pequeños y medianos: 50 gramos al día.
<br>
Equinos adultos: Hasta 100 gramos al día.|Producto disponible en baldes plásticos de 3 kg y 6 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.| 12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Mantener fuera del alcance de los niños y animales.
<br>
<br>
Seguir estrictamente las dosis recomendadas. No exceder la dosis diaria sugerida sin la supervisión de un veterinario.
<br>
<br>
Si observa alguna reacción adversa, suspenda su uso y consulte a un médico veterinario.
<br>
<br>
Producto exclusivo para uso en caballos. No apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA B1 (TIAMINA)|300 MG","VITAMINA B2 (RIVOFLAMINA)|1.000 MG","VITAMINA B3 (NIACINA)|2.000 MG","VITAMINA B5 (PANT. DE CALCIO)|1.000 MG","VITAMINA B6 (PIRIDOXINA)|1.000 MG","VITAMINA B7 (BIOTINA)|10.000 MG","VITAMINA B12 (CIANOCOB.)|500 MG","COLINA|152 G"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","332px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (98,'MYCO PRO','QP - 164','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Myco Pro es un secuestrante de micotoxinas en polvo, diseñado para proteger la salud y optimizar el rendimiento de los animales de producción. Su fórmula única actúa directamente en el tracto intestinal, neutralizando una amplia gama de micotoxinas polares y apolares, incluyendo Aflatoxina, Zearalenona, Toxina T2 y Ocratoxina.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Rendimiento y Productividad Optimizados: Al neutralizar las toxinas, Myco Pro minimiza el impacto negativo en la salud del animal, lo que se traduce en un mejor crecimiento y una mayor eficiencia productiva.
<br>
<br>
Soporte y Recuperación Hepática: La fórmula ayuda a mantener y restaurar la función hepática, un órgano vital que se ve gravemente afectado por las micotoxinas.
<br>
<br>
Control de la Humedad en el Alimento: Los componentes de Myco Pro contribuyen a regular los niveles de humedad en el alimento terminado, ayudando a prevenir el crecimiento de hongos y la formación de nuevas micotoxinas.
<br>
<br>
Máxima Eficacia con Baja Dosis: Su alta capacidad de adsorción permite una tasa de inclusión reducida, lo que lo hace una solución altamente rentable y eficiente.
<br>
<br>
<b>Mecanismo de Acción:</b>
<br>
<br>
Myco Pro combina de manera sinérgica ingredientes de alta calidad para ofrecer una protección completa:
<br>
<br>
Pared Celular de Saccharomyces cerevisiae y Harina de Alga Chlorella vulgaris: Estos potentes componentes de origen natural se unen de forma irreversible a las micotoxinas, formando complejos estables que son excretados de manera segura.
<br>
<br>
Aluminosilicato de Sodio, Calcio Hidratado y Zeolita: Estos minerales de alta pureza actúan como adsorbentes adicionales, mejorando la capacidad de atrapar las toxinas.
<br>
<br>
Antioxidantes y Conservantes: El Propionato de Calcio, Ácido Cítrico, BHA y BHT trabajan en conjunto para mantener la calidad y la frescura del alimento, previniendo la proliferación de hongos y la formación de micotoxinas en el propio pienso.|Harina de Alga <i>Chlorella vulgaris</i>, Pared Celular de <i>Saccharomyces cerevisiae</i>, Levadura de Cerveza Inactiva, Aluminosilicato de Sodio y Calcio Hidratado, Propionato de Calcio, Zeolita. Ácido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT). |La dosificación recomendada de Myco Pro es 500 gramos por tonelada de alimento a modo de prevención. Si existe evidencia de presencia de micotoxinas en el alimento, la dosificación recomendada es 1 kg por tonelada de alimento.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.
','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","384px","0px","0px","0px","0px","396px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (112,'PLANTILLAS NUCLEOS','QP - 0123','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||La dosificación recomendada de PLANTILLAS NUCLEOS es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|18 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y de otros animales no objetivo.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (114,'SULFATO DE GLUCOSAMINA','QP - 769','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Sulfato de Glucosamina es un monosacárido aminado, presente de forma natural en el organismo y componente fundamental del cartílago articular. Se presenta como un polvo cristalino blanco o ligeramente amarillo, soluble en agua y estable bajo condiciones normales, aunque sensible a la humedad. En nutrición animal, se utiliza ampliamente como un suplemento clave para la salud articular y ósea. Es especialmente valioso para animales en crecimiento rápido, aquellos con alta actividad física o en etapas avanzadas de la vida donde el desgaste articular es común.
<br>
<br>
<b>Usos y aplicaciones en nutrición animal:</b>
<br>
<br>
Piensos completos: Incorporado en formulaciones para diversas especies como aves, cerdos, bovinos, peces, y especialmente en dietas para mascotas (perros y gatos).
<br>
Suplementos nutricionales: Formulados específicamente para animales con problemas articulares, lesiones, recuperación post-quirúrgica o para el mantenimiento de la salud articular a largo plazo.
<br>
Aplicaciones específicas: Ideal para razas grandes y gigantes de perros, caballos deportivos, animales de trabajo, y mascotas geriátricas que experimentan desgaste articular o que tienen predisposición a enfermedades osteoarticulares.
<br>
<br>
<b>Beneficios:</b>
<br>
<br>
Promueve la salud articular: Es un precursor de los glicosaminoglicanos (GAGs) y proteoglicanos, componentes esenciales del cartílago articular. Estimula la producción de nuevo cartílago y ayuda a mantener su integridad estructural.
<br>
Reduce la inflamación y el dolor: Contribuye a disminuir la inflamación en las articulaciones dañadas, lo que alivia el dolor y mejora el confort del animal.
<br>
Mejora la movilidad: Al mantener la salud del cartílago y reducir el dolor, contribuye a una mayor flexibilidad y movilidad en las articulaciones, crucial para la calidad de vida de animales mayores o con alta demanda física.
<br>
Fortalece los huesos: Aunque su función principal es articular, un sistema esquelético saludable se beneficia indirectamente de la integridad de las articulaciones.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Código CAS: 31284-96-5
<br>
Fórmula química: C6H14NO5&middot;3H2SO4
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<b>Propiedades físicas y químicas:</b>
<br>
<br>
Forma física: Polvo cristalino blanco o ligeramente amarillo
<br>
Apariencia: Polvo cristalino uniforme
<br>
Solubilidad: Soluble en agua, ligeramente soluble en etanol. Insoluble en solventes orgánicos no polares.
<br>
Estabilidad: Estable bajo condiciones normales de almacenamiento, sensible a la humedad.
<br>
Densidad aparente: &#8764;0.8-1.0 g/cm3
<br>
Tamaño de partícula: &ge;97% pasa a través de un tamiz de 200 µm
<br>
Contenido de Glucosamina: &ge;98% (expresado como sulfato de glucosamina puro)
<br>
Pérdida por secado: &#8804;1.0%
|98% Sulfato de Glucosamina.|La dosificación del Sulfato de Glucosamina debe ser determinada por un veterinario o un profesional de la nutrición animal, basándose en la especie, tamaño, edad, nivel de actividad, condición articular específica y respuesta individual del animal.
<br><br>
Modo de administración: Puede ser mezclado directamente en el alimento o agua de bebida del animal. Asegure una mezcla homogénea para una ingesta consistente.|Producto disponible en bolsas aluminizadas de 1 kg y cajas de 25 kg con bolsa plástica interior.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y de animales no objetivo.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","0px","476px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (115,'NÚCLEO PERRO ADULTO LA YAPITA','QP - 0139','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||La dosificación recomendada de NÚCLEO PERRO ADULTO LA YAPITA es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|18 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y de otros animales no objetivo.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (119,'INULINA DE ACHICORIA','QP - 508','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Inulina de Achicoria es un tipo de fibra soluble que se extrae de la raíz de la planta de achicoria (<i>Cichorium intybus</i>). Se clasifica como un carbohidrato no digerible y pertenece a una clase de compuestos llamados fructanos (cadenas de moléculas de fructosa). Al no ser digerida en el intestino delgado, la inulina pasa al intestino grueso donde fermenta.
<br>
<br>
<b>Identificación del producto:</b>
<br>
Número CAS: 9005-80-5
<br>
Fórmula química: C6H11O5(C6H10O5)nOH
<br>
<br>
En nutrición animal, la Inulina de Achicoria se usa principalmente como un prebiótico. Los prebióticos son ingredientes no digeribles que estimulan selectivamente el crecimiento y la actividad de bacterias beneficiosas en el intestino, como las bifidobacterias y los lactobacilos.
<br>
<br>
<b>Beneficios:</b>
<br>
<br>
Mejora de la salud intestinal: Al fomentar una microbiota intestinal sana, la inulina ayuda a equilibrar la población de bacterias "buenas" y "malas", lo que puede prevenir trastornos gastrointestinales.
<br>
<br>
Refuerzo del sistema inmunitario: Un intestino sano está directamente relacionado con un sistema inmunitario fuerte, ya que gran parte de las defensas del cuerpo se encuentran en el tracto gastrointestinal.
<br>
<br>
Mejor absorción de nutrientes: La fermentación de la inulina puede mejorar la absorción de minerales importantes como el calcio y el magnesio.
<br>
<br>
Control del peso: En algunos animales, como los perros, la inulina puede ayudar a promover la sensación de saciedad, lo que podría ayudar a prevenir la obesidad.
<br>
<br>
En general, su inclusión en la dieta de los animales, como perros, gatos, rumiantes o aves, contribuye a una mejor digestión y a la salud general del animal.|Inulina: 84%. Glucosa + fructosa + sacarosa: 6 - 9%.|La dosificación de la inulina de achicoria debe ser determinada por un veterinario o un profesional de la nutrición animal, basándose en la especie, tamaño, edad, nivel de actividad, condición articular específica y respuesta individual del animal.


Modo de administración: Puede ser mezclado directamente en el alimento o agua de bebida del animal. Asegure una mezcla homogénea para una ingesta consistente.|Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.
|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|60 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","372px","0px","0px","0px","500px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (127,'BLOCK CRIANZA ENGORDA','QP - 53','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Block Crianza Engorda es un bloque nutricional compacto, desarrollado específicamente para complementar la alimentación de ganado vacuno en sus etapas de crecimiento y engorda, tanto en corral como en pastoreo. Su fórmula, altamente palatable, contiene todos los macro y micro minerales esenciales para bovinos, además de estar enriquecida con vitaminas A, D3 y E para asegurar un desarrollo óptimo y compensar posibles deficiencias nutricionales.
<br>
<br>
Su uso habitual contribuye a mejorar significativamente la salud y el rendimiento de los animales. Entre sus beneficios destacan:
<br>
<br>
Mejora de la condición corporal y reproductiva: Aumenta la eficiencia reproductiva y la tasa de preñez.
<br>
<br>
Aumento en la producción de leche: Mantiene una producción elevada y de calidad.
<br>
<br>
Mejora de la salud de crías: Favorece el nacimiento de terneros más sanos y con mayor peso.
<br>
<br>
Fortalecimiento general: Mejora el pelaje, la salud de las pezuñas y de las glándulas mamarias.|Vitaminas: A, D3, E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de zinc, Selenito de sodio, Sulfato de calcio, Sulfato de cobre, Sulfato de manganeso, Yodato de calcio. Melaza en Polvo|1 kg de Block Crianza Engorda aporta:
 |Dejar a libre disposición de los animales para que regulen su consumo.
<br>
<br>
Consumo promedio: El consumo diario puede variar entre 50 y 100 gramos por animal, dependiendo del tamaño y la etapa de desarrollo.
<br>
<br>
Ubicación: Colocar los bloques sobre una superficie que los separe del suelo y en un lugar protegido de la lluvia. Deben estar siempre cerca de los bebederos.
<br>
<br>
Distribución: Distribuir los bloques de manera uniforme en el área de pastoreo para evitar sobrepastoreo en zonas específicas.|El producto se comercializa en cajas de cartón que contienen bloques de aproximadamente 10 kg.|Almacenar en un lugar fresco, seco y ventilado. Proteger de la luz solar directa y la humedad. Mantener en su envase original, bien cerrado, hasta su uso.|24 meses (2 años) desde su fecha de fabricación, si se mantiene en las condiciones de almacenamiento recomendadas.|Mantener fuera del alcance de niños y de otros animales no destinados a su consumo.
<br>
<br>
No utilizar si el producto muestra signos de deterioro o si el empaque ha sido violado.
<br>
<br>
Se recomienda consultar con un médico veterinario o nutricionista animal para un plan de suplementación adecuado a las necesidades específicas de su rebaño.
<br>
<br>
<b>Producto de uso exclusivo para alimentación animal.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|250.000 UI","VITAMINA D3|100.000 UI","VITAMINA E|1.000 UI","CALCIO|80 G MIN.","FÓSFORO|30 G MIN.","MAGNESIO|12 G MIN.","COBALTO|19 MG","COBRE|750 MG","MANGANESO|1.260 MG","SELENIO|40 MG","YODO|33 MG","ZINC|2.160 MG"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","324px","0px","0px","0px","484px"],"rowsxtable":["10","10","6","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (128,'EQUIMIN ADULTO','QP - 477','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Equimin Adulto es un suplemento nutricional en polvo, indicado para caballos adultos. Su fórmula completa y balanceada favorece un óptimo estado de salud, mejorando el metabolismo, el sistema inmune y la condición general del animal. 
<br>
<br>
<b>Beneficios clave:</b>
<br>
<br>
Biotina: Conocida por su rol crucial en el mantenimiento de cascos sanos y fuertes, además de mejorar la calidad del pelaje.
<br>
<br>
Calcio y Fósforo: Fundamentales para el desarrollo y mantenimiento de huesos y dientes fuertes. Ayudan a prevenir problemas óseos y articulares.
<br>
<br>
Zinc, Cobre, Manganeso y Hierro: Minerales esenciales que participan en procesos metabólicos clave, mejorando la producción de glóbulos rojos, el sistema inmune y la salud de la piel.
<br>
<br>
Selenio Orgánico: Un potente antioxidante que protege las células del daño, apoyando la función muscular y el sistema inmunológico.
<br>
<br>
Magnesio y Cobalto: Ayudan en el metabolismo energético y la función nerviosa, contribuyendo a la calma y el buen rendimiento muscular.|Vitamina B7 (Biotina), Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selplex ® (Selenio Orgánico), Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Sulfato Ferroso, Yodato de Calcio. |1 kg de Equimin Adulto aporta: |Se recomienda utilizar 50 a 100 gramos por animal al día de acuerdo a su actividad física y siempre bajo la supervisión de un médico veterinario o nutricionista. |Producto disponible en baldes plásticos de 3 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses en las condiciones de almacenamiento previamente descritas.|Mantener fuera del alcance de los niños y animales.
<br>
<br>
Seguir estrictamente las dosis recomendadas. No exceder la dosis diaria sugerida sin la supervisión de un veterinario.
<br>
<br>
Si observa alguna reacción adversa, suspenda su uso y consulte a un médico veterinario.
<br>
<br>
<b>Producto exclusivo para uso en caballos. No apto para consumo humano.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA B7 (BIOTINA)|6 g","CALCIO|150 g","FÓSFORO|75 g","MAGNESIO|37 g","COBALTO|100 mg","COBRE|2,5 g","HIERRO|4 g","MANGANESO|4 g","SELENIO|2 g","YODO|100 mg","ZINC|4 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","492px","0px","0px","0px","284px","0px"],"rowsxtable":["10","10","11","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (129,'ARTRIDOG','QP - 0151','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||1 kg de Artridog, aporta:
 |La dosificación recomendada de PLANTILLAS NUCLEOS es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|18 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y de otros animales no objetivo.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["COLÁGENO HIDROLIZADO|3.400 MG","SULFATO DE CONDROITINA|500 MG","SULFATO DE GLUCOSAMINA|600 MG","VITAMINA C|300 MG"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (130,'BIOCALFOS','QP - 047','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Biocalfos es un aditivo nutricional desarrollado para ser una excelente fuente de fósforo y calcio biológicamente disponibles. Está especialmente indicado para caballos en todas sus etapas de desarrollo. Su fórmula está diseñada para contrarrestar la baja absorción de fósforo en los alimentos tradicionales, asegurando que los animales cumplan con sus requerimientos fisiológicos para un crecimiento óptimo, la solidez de los huesos, una mortalidad reducida y un mejor rendimiento en reproductores.|Fosfato Monocálcico, Fosfato Bicálcico, Vitamina D3, Lisina HCL.|1 kg de Biocalfos, aporta:
 |Se administra junto con el alimento en dosis de 30 gramos diarios por animal. La dosis final debe ser ajustada por un médico veterinario o nutricionista, según las necesidades específicas.|Producto disponible en baldes de 2 kg.|Almacenar en un lugar fresco y seco, alejado de la luz solar directa y de fuentes de calor. Mantener el envase bien cerrado para proteger el producto de la humedad y evitar la formación de grumos.|24 meses desde su fecha de fabricación en las condiciones de almacenamiento descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CALCIO|&ge; 180 g","FÓSFORO|&ge;  180 g","LISINA HCL|160 g","VITAMINA D3|500.000 UI"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","392px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (131,'EQUIMIN POTRILLO','QP - 112','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Equimin Potrillo es un suplemento nutricional en polvo, indicado para potrillos y potrancas. Su fórmula completa y balanceada favorece un óptimo estado de salud, mejorando el metabolismo, el sistema inmune y la condición general del animal.
<br>
<br>
<b>Beneficios clave:</b>
<br>
<br>
Biotina: Conocida por su rol crucial en el mantenimiento de cascos sanos y fuertes, además de mejorar la calidad del pelaje.
<br>
<br>
Calcio y Fósforo: Fundamentales para el desarrollo y mantenimiento de huesos y dientes fuertes. Ayudan a prevenir problemas óseos y articulares.
<br>
<br>
Zinc, Cobre, Manganeso y Hierro: Minerales esenciales que participan en procesos metabólicos clave, mejorando la producción de glóbulos rojos, el sistema inmune y la salud de la piel.
<br>
<br>
Selenio Orgánico: Un potente antioxidante que protege las células del daño, apoyando la función muscular y el sistema inmunológico.
<br>
<br>
Magnesio y Cobalto: Ayudan en el metabolismo energético y la función nerviosa, contribuyendo a la calma y el buen rendimiento muscular.|Vitamina B7 (Biotina), Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selplex ® (Selenio Orgánico), Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Sulfato Ferroso, Yodato de Calcio. |1 kg de Equimin Potrillo, aporta:
 |Se recomienda utilizar 50 a 100 gramos por animal al día de acuerdo a su actividad física y siempre bajo la supervisión de un médico veterinario o nutricionista. |Producto disponible en baldes plásticos de 3 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.
|24 meses en las condiciones de almacenamiento previamente descritas.|Mantener fuera del alcance de los niños y animales.
<br>
<br>
Seguir estrictamente las dosis recomendadas. No exceder la dosis diaria sugerida sin la supervisión de un veterinario.
<br>
<br>
Si observa alguna reacción adversa, suspenda su uso y consulte a un médico veterinario.
<br>
<br>
<b>Producto exclusivo para uso en caballos. No apto para consumo humano.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA B7 (BIOTINA)|3.6 g","CALCIO|174 g","FÓSFORO|113 g","MAGNESIO|22 g","COBALTO|60 mg","COBRE|1.5 g","HIERRO|2.4 g","MANGANESO|2.4 g","SELENIO|1.2 g","YODO|60 mg","ZINC|2.4 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","492px","0px","0px","0px","284px","0px"],"rowsxtable":["10","10","11","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (132,'HEPAMICS','QP - 745','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Hepamics es un nutracéutico en pellets diseñado para proteger y potenciar la salud hepática de los equinos. Su fórmula, a base de ingredientes naturales, va más allá de un simple suplemento. Actúa de manera integral para ayudar al hígado a cumplir su función de desintoxicación y regeneración celular.
<br>
<br>
<b>Modo de acción:</b>
<br>
<br>
Su fórmula única combina ingredientes activos conocidos por sus propiedades protectoras y reparadoras:
<br>
<br>
Silimarina (extracto de Cardo Mariano): Este potente antioxidante protege las células del hígado (hepatocitos) del daño causado por las toxinas. Funciona creando una barrera protectora que neutraliza los radicales libres y favorece la regeneración celular, ayudando a crear nuevos hepatocitos sanos.
<br>
<br>
Boldo (Peumus boldus): Con su principio activo, la boldina, el boldo mejora la digestión de manera natural. Estimula la producción y secreción de bilis, lo cual es esencial para una digestión eficiente y para el correcto procesamiento de las grasas.
<br>
<br>
Factores Lipotrópicos (Colina, Inositol, Metionina): Estos componentes esenciales previenen la acumulación de grasa en el hígado, un factor que puede comprometer su función. Ayudan a movilizar y metabolizar las grasas, manteniendo el hígado limpio y saludable.|Cloruro de Colina, Hoja de Boldo, Inositol, DL-Metionina, Silimarina. Aceite Vegetal, Harina de Soya, Harinilla de Trigo, Maíz. Propionato de Calcio.|1 kg de Hepamics aporta:
 |La dosificación recomendada es de 100 gramos por caballo al día. Hepamics se administra de manera oral, en forma individual o mezclado con el alimento. 
<br>
<br>
El uso correcto de Hepamics, permitirá una remisión de los síntomas clínicos, junto a la corrección del apetito lo que se comienza a evidenciar a partir del séptimo día. La normalización de parámetros bioquímicos y las pruebas de funcionalidad hepática se podrán observar después de 3 a 4 semanas.|Producto disponible en baldes de 3 y 6 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Mantener fuera del alcance de los niños y animales.
<br>
<br>
Seguir estrictamente las dosis recomendadas. No exceder la dosis diaria sugerida sin la supervisión de un veterinario.
<br>
<br>
Si observa alguna reacción adversa, suspenda su uso y consulte a un médico veterinario.
<br>
<br>
<b>Producto exclusivo para uso en caballos. No apto para consumo humano.</b>','false|false|true|false|false|false|false|false','[[],[],["COLINA|3.500 mg","BOLDINA|400 mg","INOSITOL|2.000 mg","DL-METIONINA|2.500 mg","SILIMARINA|2.000 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","308px","0px","0px","0px","464px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (134,'EFFORT MAX','QP - 380','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Effort Max es un suplemento nutricional peletizado, especialmente formulado para caballos de alto rendimiento sometidos a trabajos intensos, carreras y situaciones de estrés. Su principal función es reforzar la salud y función de los capilares pulmonares.
<br>
<br>
Este producto está diseñado para prevenir la Hemorragia Pulmonar Inducida por el Ejercicio (HPIE), un padecimiento común en equinos de deporte. La HPIE se produce por la ruptura de capilares pulmonares, generando sangramiento en el árbol traqueobronquial. Effort Max actúa fortaleciendo los capilares, mejorando la circulación y optimizando la oxigenación, lo que se traduce en mayor resistencia y un mejor desempeño atlético. Además, posee un potente efecto antioxidante.|L - Arginina, Vitamina C, Vitamina K3, Bioflavonoides cítricos. Harina de Soya, Maíz. Propionato de Calcio.|1 kg de Effort Max, aporta:
 |Se recomienda una dosis de 100 gramos por caballo al día. La dosificación puede variar dependiendo de las necesidades específicas de cada animal. Consulte a su médico veterinario o nutricionista para un plan de alimentación adecuado.|Producto disponible en baldes plásticos de 3 kg y 6 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses a partir de la fecha de fabricación, bajo las condiciones de almacenamiento recomendadas.|<b>Uso exclusivo en equinos.</b> No administrar a otros animales.
<br>
<br>
Mantener el producto <b>fuera del alcance de niños.</b>
<br>
<br>
No utilizar el producto si el envase ha sido alterado o dañado.
<br>
<br>
Consultar a un profesional en salud animal antes de iniciar la suplementación.
<br>
<br>
Este producto no reemplaza una dieta balanceada.
<br>
<br>
En caso de reacción adversa, suspenda su uso y consulte a su médico veterinario.','false|false|true|false|false|false|false|false','[[],[],["ARGININA|20.000 mg","BIOFLAVONOIDES CITRICO|50.000 mg","VITAMINA C|100.000 mg","VITAMINA K3|100 mg"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","300px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (135,'CAPRINOSAL QP + VITAMINA ADE','QP - 693','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Caprinosal + Vitamina A D E es un suplemento nutricional en polvo diseñado para complementar la alimentación de caprinos en todas sus etapas productivas: crianza, reproducción, gestación y lactancia.
<br>
<br>
Su fórmula balanceada incluye todos los macro y microminerales esenciales, enriquecida con vitaminas A, D3 y E, lo que ayuda a prevenir deficiencias nutricionales y a asegurar un desarrollo óptimo del rebaño. Su uso regular contribuye a mejorar la salud y el rendimiento general de los animales, ofreciendo beneficios como:
<br>
<br>
Mejora de la condición corporal y reproductiva: Aumenta la eficiencia reproductiva y la tasa de preñez.
<br>
<br>
Aumento en la producción de leche: Mantiene una producción de leche elevada y de calidad.
<br>
<br>
Mejora de la salud de crías: Favorece el nacimiento de crías más sanas y con mayor peso.
<br>
<br>
Fortalecimiento general: Contribuye a mejorar el pelaje, las pezuñas y la salud de las glándulas mamarias.|Vitamina A, Vitamina D3, Vitamina E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicalcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Sulfato Ferroso, Yodato de Potasio, Azufre.|1 kg de Caprinosal QP + Vitamina ADE, aporta:
|Se recomienda mezclar el producto con la ración diaria:
<br>
<br>
Caprinos adultos: 60 g / animal / día.
<br>
Cabras en período reproductivo: 80 g / animal / día.
<br>
Cabritos: 30 g / animal / día.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco y seco, protegido de la luz solar directa. Mantener el envase cerrado para conservar la calidad y las propiedades del producto.|24 meses a partir de la fecha de elaboración, siempre que se sigan las condiciones de almacenamiento recomendadas.|Mantener fuera del alcance de los niños y animales.
<br>
<br>
Siga la dosificación recomendada para evitar cualquier riesgo para la salud del animal.
<br>
<br>
<b>Producto de uso exclusivo para nutrición animal. No apto para consumo humano.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|40.000 UI","VITAMINA D3|5.000 UI","VITAMINA E|3.000 UI","AZUFRE|22 g","CALCIO|193 g","CLORO|28 g","FÓSFORO|85 g","MAGNESIO|60 g","SODIO|18 g","COBALTO|8 mg","MANGANESO|1 g","SELENIO|16 mg","YODO|12 mg","ZINC|2 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","336px","0px","0px","0px","0px"],"rowsxtable":["10","10","7","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (136,'FOAL MILK','QP - 115','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Foal Milk es un sustituto lácteo de alta calidad, diseñado para apoyar el desarrollo de potrillos y potrancas con bajo crecimiento, debilidad o nutrición deficiente. Su fórmula, cuidadosamente balanceada, replica la composición de la leche materna, aportando los nutrientes esenciales para un crecimiento saludable y vigoroso desde las primeras etapas de vida.
<br>
<br>
<b>Beneficios clave:</b>
<br>
<br>
Excelente relación Proteína-Grasa: Con un 21,50% de proteína y un 20,20% de grasa, esta fórmula proporciona la energía concentrada y los bloques de construcción necesarios para un desarrollo muscular y óseo óptimo, replicando la composición energética de la leche de yegua.
<br>
<br>
Aporte de Lisina: La lisina, un aminoácido esencial con un mínimo de 1,82%, es crucial para el crecimiento, la formación de tejidos y el desarrollo de huesos fuertes.
<br>
<br>
Minerales Quelados: Estos minerales, como el Calcio (0,94%) y el Fósforo (0,62%), están unidos a proteínas para una absorción superior, lo que garantiza el correcto desarrollo del esqueleto y previene problemas de crecimiento.
<br>
<br>
Beta-Caroteno: Este antioxidante se convierte en Vitamina A en el cuerpo del potro, ayudando a fortalecer el sistema inmunológico y a mejorar la salud ocular y de la piel.
<br>
<br>
Vitaminas y Minerales: La fórmula está enriquecida con vitaminas y minerales esenciales para un desarrollo completo, apoyando el metabolismo, la salud del pelaje y la vitalidad del potrillo.
<br>
<br>
Alta Palatabilidad: Su sabor y textura están pensados para asegurar que los potrillos lo acepten fácilmente, fomentando una nutrición constante y sin rechazo.|Suero en Polvo, Grasa Vegetal Refinada (palma, coco), Proteina de Trigo, Proteina de Soya, Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12.|1 kg de Foal Milk, aporta:
|Diluir 1 kg de Foal Milk en 8 litros de agua, a temperatura de 40° a 45°.
<br>
<br>
Esquema de alimentación:
<br>
<br>
Semana 1: suministrar 6 tomas diarias de 1 litro cada una.
<br>
Semana 2: suministrar 6 tomas diarias de 1,5 litros cada una.
<br>
Semana 3: suministrar 6 tomas diarias de 2 litros cada una.
<br>
Semana 4: suministrar 6 tomas diarias de 2,5 litros cada una.
<br>
<br>
Continuar con regimen de semana 4 hasta los 2 meses o acorde a indicación de médico veterinario o nutricionista.|Producto disponible en baldes de 5 kg y de 10 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Mantener fuera del alcance de los niños y animales.
<br>
<br>
Seguir estrictamente las dosis recomendadas. No exceder la dosis diaria sugerida sin la supervisión de un veterinario.
<br>
<br>
Si observa alguna reacción adversa, suspenda su uso y consulte a un médico veterinario.
<br>
<br>
<b>Producto exclusivo para uso en caballos. No apto para consumo humano.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|25.000 UI","VITAMINA D3|8.000 UI","VITAMINA E|90 UI","VITAMINA K3|2 mg","VITAMINA B1|14 mg","VITAMINA B2|10 mg","VITAMINA B3 (NIACINA)|40 mg","VITAMINA B5 (PANT. DE CALCIO)|20 mg","VITAMINA B6|8 mg","VITAMINA B7 (BIOTINA)|6 mg","VITAMINA B9 (ÁCIDO FÓLICO)|1 mg","VITAMINA  B12|50 mcg","COLINA|400 mg","VITAMINA C|300 mg","COBRE QUELADO|75 mg","HIERRO QUELADO|80 mg","MANGANESO QUELADO|60 mg","SELENIO|0,5 mg","YODO|1 mg","ZINC|75 mg","BETACAROTENO|40 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","388px","0px","0px","296px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (137,'NÚCLEO PERRO QP','QP - 469','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Perro QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros de todas las razas y edades.

Contiene una mezcla balanceada de todas las vitaminas y minerales esenciales que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Ácido cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
|1 kg de Núcleo Perro QP aporta:
|La dosificación recomendada de Núcleo Perro QP varía según la edad de los animales: 
<br>
<br>
Perro cachorro (hasta 1 año): 1,5 kg por 1.000 kg de alimento.
<br>
Perro adulto (1 a 7 años): 1 kg por 1.000 kg de alimento.
<br>
Perro senior (desde 7 años): 1,2 kg por 1.000 kg de alimento.|Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|2.750.000 UI","VITAMINA D3|275.000 UI","VITAMINA E|17.500 UI","VITAMINA K3|500 mg","VITAMINA B1|1.335 mg","VITAMINA B2|15.000 mg","VITAMINA B3 (NIACINA)|7.450 mg","VITAMINA B5 (PANT. DE CALCIO)|8.150 mg","VITAMINA B6|7.600 mg","VITAMINA B7 (BIOTINA)|15 mg","VITAMINA B9 (ÁCIDO FÓLICO)|95 mg","VITAMINA B12 |12 mg","BIOCOLINA ®|10.000 mg","CALCIO|220 g","COBALTO |4 mg","COBRE|2 g","HIERRO|23 g","MANGANESO|1 g","SELENIO|8 mg","YODO|234 mg","ZINC|31 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","388px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (139,'NÚCLEO BOVINO CRIANZA ENGORDA QP','QP - 760','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Bovino Crianza Engorda QP es un suplemento vitamínico-mineral de alta calidad, diseñado específicamente para optimizar la nutrición del ganado bovino de carne en sus etapas de crianza y engorde. Su formulación en polvo fino y homogéneo favorece un integración adecuada con el alimento, ayudando de esta manera que cada animal reciba los nutrientes necesarios para un óptimo desarrollo.
<br>
<br>
<b>Beneficios clave</b>
<br>
<br>
Núcleo Bovino Crianza Engorda QP se distingue por poseer una composición balanceada y el uso de ingredientes de alta biodisponibilidad, lo que permite una máxima absorción y aprovechamiento de los nutrientes. Sus principales beneficios son:
<br>
<br>
Desarrollo muscular y óseo mejorado: El balance óptimo de vitaminas A, D3, y minerales como el calcio y el fósforo, fomenta el crecimiento de una estructura ósea robusta y un desarrollo muscular eficiente. Esto es crucial para alcanzar el peso ideal de manera más rápida y saludable.
<br>
<br>
Mayor eficiencia de conversión alimenticia: La suplementación con minerales traza como el zinc, cobre y manganeso, en conjunto con vitaminas esenciales, optimiza el metabolismo de los nutrientes, permitiendo que el ganado transforme el alimento en masa muscular de forma más eficiente. Esto reduce el costo de alimentación por kilo de peso ganado.
<br>
<br>
Mejora de la salud y la inmunidad: Componentes como la vitamina E y el selenio actúan como antioxidantes, fortaleciendo el sistema inmunitario del animal para protegerlo contra enfermedades. Esto se traduce en menor mortalidad y en un mejor bienestar general del rebaño.
<br>
<br>
Mantiene la estabilidad del producto: La inclusión de aditivos como el Propionato de Calcio y los antioxidantes BHA/BHT garantizan que el producto se mantenga fresco y estable por más tiempo, preservando la calidad de cada nutriente desde la fábrica hasta el comedero de su ganado.|Vitamina A, Vitamina D3, Vitamina E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Yodato de Calcio, Sulfato de calcio. Propionato de Calcio, Ácido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
|1 kg de Núcleo Bovino Crianza Engorda QP, aporta:
|La dosificación recomendada de Núcleo Bovino Crianza Engorda QP es 100 a 200 gramos por animal al día, según alimentación regular del ganado e indicaciones del médico veterinario o nutricionista.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|250.000 UI","VITAMINA D3|50.000 UI","VITAMINA E|1.000 UI","CALCIO|117 g","CLORO|244 g","FÓSFORO|41 g","MAGNESIO|50 g","SODIO|156 g","COBALTO|13 mg","COBRE|750 mg","MANGANESO|1,3 g","SELENIO|27 mg","YODO|165 mg","ZINC|2 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","360px","0px","0px","460px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (140,'NÚCLEO BROILER FINAL QP','QP - 431','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Broiler Final QP es un suplemento vitamínico-mineral, formulado específicamente para pollos de engorde en su etapa final de crecimiento (desde el día 31 hasta su comercialización). Se presenta en forma de polvo fino y homogéneo, favoreciendo de esta manera una integración adecuada con el alimento.
<br>
<br>
Su composición, rica en vitaminas, minerales y antioxidantes, asegura que las aves alcancen su máximo potencial genético, mejorando el rendimiento productivo y la calidad de la carne.
<br>
<br>
<b>Beneficios clave:</b>
<br>
<br>
Rápido y óptimo desarrollo muscular: contiene vitaminas del complejo B (B1, B2, B3, B5, B6, B7, B9, B12), las cuales son esenciales para el metabolismo de carbohidratos, grasas y proteínas. Al asegurar una conversión eficiente del alimento en energía, contribuyen directamente a un crecimiento muscular rápido y sostenido. Además, minerales como Cobre, Hierro, Manganeso y Zinc, son cofactores en diversas enzimas clave para el desarrollo muscular y la salud general del ave. El zinc, por ejemplo, es crucial para la síntesis de proteínas.
<br>
<br>
Fortalecimiento del sistema inmunológico: La Vitamina A y la Vitamina E actúan como poderosos antioxidantes que protegen a las células del estrés oxidativo. Esto fortalece las defensas naturales del pollo, haciéndolo más resistente a enfermedades comunes en la etapa de engorde. El selenio y el Cobre son minerales que también tienen un rol fundamental en la respuesta inmune, ayudando a las aves a mantenerse sanas en su entorno productivo.
<br>
<br>
Mejora de la calidad de la canal y el bienestar animal: La Vitamina K3 es vital para la coagulación sanguínea, previniendo hemorragias. El calcio por otra parte es esencial para el desarrollo de huesos fuertes y sanos, un factor crítico para el bienestar de las aves con crecimiento acelerado.
<br>
<br>
Protección de nutrientes: El Ácido Cítrico, BHA y BHT son potentes antioxidantes que no solo protegen a los nutrientes del producto de la degradación, sino que también contribuyen a la calidad de la carne al reducir la oxidación lipídica.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Núcleo Broiler Final QP, aporta:
|La dosificación recomendada de Núcleo Broiler Final QP es de 2 kg por cada 1.000 kg de alimento. Para un uso óptimo y seguro, consulte con un médico veterinario o nutricionista, según las condiciones productivas y nutricionales de su plantel.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12  meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|4.987.500 UI","VITAMINA D3|1.732.500 UI","VITAMINA E|10.500 UI","VITAMINA K3|1.523 mg","VITAMINA B1|1.103 mg","VITAMINA B2|2.678 mg","VITAMINA B3 (NIACINA)|15.750 mg","VITAMINA B5 (PANT. DE CALCIO)|5.250 mg","VITAMINA B6|1.838 mg","VITAMINA B7 (BIOTINA)|53 mg","VITAMINA B9 (ÁCIDO FÓLICO)|525 mg","VITAMINA B12 |11 mg","BIOCOLINA ®|39.375 mg","CALCIO|220 g (máximo)","COBALTO |8 mg","COBRE|3 g","HIERRO|15 g","MANGANESO|45 g","SELENIO|18 mg","YODO|55 mg","ZINC|30 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","312px","0px","0px","444px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (141,'NÚCLEO BROILER INICIAL QP','QP - 430','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Broiler Inicial QP es un suplemento vitamínico-mineral, formulado específicamente para pollos de engorde en su etapa inicial de crecimiento (hasta el día 30 aproximadamente). Se presenta en forma de polvo fino y homogéneo, favoreciendo de esta manera una integración adecuada con el alimento.
<br>
<br>
Su composición, rica en vitaminas, minerales y antioxidantes, asegura que las aves alcancen su máximo potencial genético, mejorando el rendimiento productivo y la calidad de la carne.
<br>
<br>
<b>Beneficios clave:</b>
<br>
<br>
Rápido y óptimo desarrollo muscular: contiene vitaminas del complejo B (B1, B2, B3, B5, B6, B7, B9, B12), las cuales son esenciales para el metabolismo de carbohidratos, grasas y proteínas. Al asegurar una conversión eficiente del alimento en energía, contribuyen directamente a un crecimiento muscular rápido y sostenido. Además, minerales como Cobre, Hierro, Manganeso y Zinc, son cofactores en diversas enzimas clave para el desarrollo muscular y la salud general del ave. El zinc, por ejemplo, es crucial para la síntesis de proteínas.
<br>
<br>
Fortalecimiento del sistema inmunológico: La Vitamina A y la Vitamina E actúan como poderosos antioxidantes que protegen a las células del estrés oxidativo. Esto fortalece las defensas naturales del pollo, haciéndolo más resistente a enfermedades comunes en la etapa de engorde. El selenio y el Cobre son minerales que también tienen un rol fundamental en la respuesta inmune, ayudando a las aves a mantenerse sanas en su entorno productivo.
<br>
<br>
Mejora de la calidad de la canal y el bienestar animal: La Vitamina K3 es vital para la coagulación sanguínea, previniendo hemorragias. El calcio por otra parte es esencial para el desarrollo de huesos fuertes y sanos, un factor crítico para el bienestar de las aves con crecimiento acelerado.
<br>
<br>
Protección de nutrientes: El Ácido Cítrico, BHA y BHT son potentes antioxidantes que no solo protegen a los nutrientes del producto de la degradación, sino que también contribuyen a la calidad de la carne al reducir la oxidación lipídica.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Núcleo Broiler Inicial QP aporta:
|La dosificación recomendada de Núcleo Broiler Inicial QP es de 2 kg por cada 1.000 kg de alimento. Para un uso óptimo y seguro, consulte con un médico veterinario o nutricionista, según las condiciones productivas y nutricionales de su plantel.
| Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12  meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|5.225.000 UI","VITAMINA D3|1.815.000 UI","VITAMINA E|11.000 UI","VITAMINA K3|1.595 mg","VITAMINA B1|1.155 mg","VITAMINA B2|2.805 mg","VITAMINA B3 (NIACINA)|16.500 mg","VITAMINA B5 (PANT. DE CALCIO)|5.500 mg","VITAMINA B6|1.925 mg","VITAMINA B7 (BIOTINA)|55 mg","VITAMINA B9 (ÁCIDO FÓLICO)|550 mg","VITAMINA B12 |11 mg","BIOCOLINA ®|41.250 mg","CALCIO|220 g","COBALTO |8 mg","COBRE|3 g","HIERRO|15 g","MANGANESO|45 g","SELENIO|18 mg","YODO|55 mg","ZINC|30g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","328px","0px","0px","448px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (142,'NÚCLEO CABALLOS QP','QP - 522','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Suplemento vitamínico mineral indicado para caballos de todas las edades y razas. Núcleo caballos se presenta en forma de polvo fino y homogéneo, lo que facilita una adecuada incorporación y dispersión en el alimento.
<br>
<br>
Núcleo caballos está fabricado con ingredientes de alta biodisponibilidad. contiene un balance óptimo de vitaminas y minerales esenciales para cubrir las necesidades nutricionales que pueden ser no satisfechas completamente por dietas comerciales o caseras, promoviendo de esta manera la salud integral de los caballos.

|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso y Yodato de Calcio. Ácido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Caballos QP, aporta:
|La dosificación recomendada de Núcleo Caballos QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|1.900.000 UI","VITAMINA D3|660.000 UI","VITAMINA E|2.000 UI","VITAMINA K3|600 mg","VITAMINA B1|400 mg","VITAMINA B2|1.100 mg","VITAMINA B3 (NIACINA)|6.000 mg","VITAMINA B5 (PANT. DE CALCIO)|1.960 mg","VITAMINA B6|700 mg","VITAMINA B7 (BIOTINA)|20 mg","VITAMINA B9 (ÁCIDO FÓLICO)|200 mg","VITAMINA B12 |3 mg","BIOCOLINA ®|15.000 mg","CALCIO|150 g","FÓSFORO|40 g","MAGNESIO|6,5 g","COBALTO |12 mg","COBRE|2 g","HIERRO|18 g","MANGANESO|1 g","SELENIO|25 mg","YODO|1,7 g","ZINC|11 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","336px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (143,'NÚCLEO CERDO CRIANZA QP','QP - 168','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Cerdo Crianza QP es un suplemento vitamínico-mineral en polvo, enriquecido con aditivos funcionales, formulado específicamente para cerdos en etapa de crianza que abarca desde los 6 kg hasta los 30 kg de peso aproximadamente. Este núcleo está diseñado para complementar las dietas base de maíz-soya, cubriendo los exigentes requerimientos nutricionales de los cerdos en esta etapa de desarrollo.
<br>
<br>
Su fórmula balanceada asegura una transición eficiente tras el destete, aportando los micronutrientes esenciales para soportar el rápido desarrollo de tejido magro y estructura ósea, preparando al animal para una etapa de engorda de alto rendimiento.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Maximización del Metabolismo y Síntesis de Proteínas: Gracias a su perfil completo de Vitaminas del Complejo B (B1, B2, B6, B12, Niacina, Ácido Pantoténico) y Biotina, el producto actúa como un catalizador del metabolismo energético y proteico. Esto es fundamental en la recría para que el lechón aproveche eficientemente los nutrientes de la dieta y mantenga una curva de crecimiento constante sin retrasos.
<br>
<br>
Soporte al Desarrollo Esquelético y Articular: Provee una matriz mineral sólida mediante el aporte de Manganeso, Zinc y Vitamina D3. Esta combinación es crítica para asegurar una correcta mineralización ósea y articulaciones fuertes, previniendo problemas de aplomos (cojeras) que suelen manifestarse cuando el cerdo gana peso rápidamente en las fases posteriores.
<br>
<br>
Integridad de Epitelios y Protección Antioxidante: La sinergia entre la Vitamina A y el Zinc favorece la regeneración y salud de la piel y las mucosas (primera barrera de defensa del animal). A su vez, el aporte de Vitamina E y Selenio refuerza el sistema antioxidante, ayudando al lechón a combatir el estrés oxidativo propio del crecimiento acelerado y los desafíos ambientales.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12. Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Cerdo Crianza QP aporta:
|La dosificación recomendada de Núcleo Cerdo Crianza QP es 2 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|4.400.000 UI","VITAMINA D3|720.000 UI","VITAMINA E|14.000 UI","VITAMINA K3|1.160 mg","VITAMINA B1|1.400 mg","VITAMINA B2|4.160 mg","VITAMINA B3 (NIACINA)|28.000 mg","VITAMINA B5 (PANT. DE CALCIO)|16.000 mg","VITAMINA B6|2.800 mg","VITAMINA B7 (BIOTINA)|100 mg","VITAMINA B9 (ÁCIDO FÓLICO)|400 mg","VITAMINA B12 |4 mg","CALCIO|110 g","COBALTO|13 mg","COBRE|3 g","HIERRO|33 g","MANGANESO|13 g","SELENIO |27 mg","YODO|55 mg","ZINC|51 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","380px","0px","0px","432px","0px","0px"],"rowsxtable":["10","10","12","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (144,'NÚCLEO CERDO ENGORDA QP','QP - 298','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Cerdo Engorda QP es un suplemento vitamínico-mineral en polvo, indicado para cerdos en la etapa de Engorda y Finalización. Su formulación satisface los requerimientos de vitaminas y minerales desde los 30 kg hasta la faena (120 kg aprox.), la fase de mayor consumo de alimento en la vida productiva del animal.
<br>
<br>
Este núcleo actúa como el complemento esencial para dietas de terminación, aportando los micronutrientes necesarios para optimizar la conversión alimenticia, asegurar la deposición eficiente de tejido magro y mantener la salud estructural del animal hasta el momento de la venta.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Optimización de la Conversión Alimenticia (CA): En la etapa de engorda, la eficiencia energética es vital. El aporte balanceado de Vitaminas del Complejo B (especialmente B1, B2, Niacina y Ácido Pantoténico) actúa directamente sobre el metabolismo de los carbohidratos y lípidos de la dieta base. Esto permite que el cerdo aproveche al máximo la energía del alimento para la ganancia diaria de peso, reduciendo el desperdicio metabólico.
<br>
<br>
Integridad de Aplomos y Soporte de Peso: Un problema común en la engorda final son las cojeras por el alto peso corporal. La combinación de Vitamina D3, Manganeso y Zinc fortalece la densidad ósea y la salud de las pezuñas. Esto asegura que el esqueleto pueda soportar la carga de 100-120 kg sin problemas locomotores, permitiendo que el cerdo se desplace correctamente hacia el comedero hasta el último día.
<br>
<br>
Calidad de Canal y Resistencia al Estrés: La inclusión estratégica de antioxidantes como Vitamina E y Selenio ayuda a proteger el tejido muscular contra la oxidación y el estrés celular, factores que pueden afectar la calidad final de la carne (color y retención de agua) post-faena. Además, estos nutrientes mantienen el sistema inmune alerta, asegurando un animal vigoroso y sano hasta el final del ciclo.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12. Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Cerdo Engorda QP aporta:
|La dosificación recomendada de Núcleo Cerdo Engorda QP es 2 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|3.300.000 UI","VITAMINA D3|540.000 UI","VITAMINA E|10.500 UI","VITAMINA K3|870 mg","VITAMINA B1|1.050 mg","VITAMINA B2|3.120 mg","VITAMINA B3 (NIACINA)|21.000 mg","VITAMINA B5 (PANT. DE CALCIO)|12.000 mg","VITAMINA B6|2.100 mg","VITAMINA B7 (BIOTINA)|50 mg","VITAMINA B9 (ÁCIDO FÓLICO)|300 mg","VITAMINA B12 |3 mg","CALCIO|110 g","COBALTO|13 mg","COBRE |3 g","HIERRO|33 g","MANGANESO|13 g","SELENIO|27 mg","YODO|55 mg","ZINC|51 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","420px","0px","0px","412px","0px","0px"],"rowsxtable":["10","10","12","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (145,'NÚCLEO CERDO LECHÓN QP','QP - 171','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Cerdo Lechón QP es un suplemento vitamínico-mineral en polvo, especialmente formulado para la etapa de crecimiento inicial de los cerdos, desde su nacimiento hasta alcanzar los 6 kg de peso aproximadamente.
<br>
<br>
Su fórmula concentrada y homogénea provee todas las vitaminas y minerales esenciales, asegurando que los lechones reciban el soporte nutricional necesario para un desarrollo sano, vigoroso y eficiente en esta etapa crítica.
<br>
<br>
<b>Beneficios clave:</b>
<br>
<br>
Promueve un crecimiento y desarrollo óptimo: Las Vitaminas del Complejo B (B1, B2, B3, B5, B6, B7, B9, B12) y minerales como el Hierro, el Zinc y el Manganeso son cruciales para el metabolismo energético y la formación de tejidos. Esto favorece un crecimiento rápido y un correcto desarrollo óseo y muscular, lo que se traduce en lechones más fuertes y saludables.
<br>
<br>
Fortalece el sistema inmune: La Vitamina A, la Vitamina E y el Selenio son poderosos antioxidantes que protegen las células y fortalecen las defensas naturales. Esto ayuda a los lechones a resistir enfermedades y a mantenerse saludables, lo cual es fundamental en un periodo de alta vulnerabilidad.
<br>
<br>
Mejora la salud digestiva y la absorción de nutrientes: El Ácido Cítrico mejora la salud intestinal y la digestibilidad del alimento, permitiendo que los lechones aprovechen al máximo los nutrientes de su dieta. El Carbonato de Cobalto es vital para la síntesis de vitamina B12, clave en el metabolismo.
<br>
<br>
Asegura la calidad del producto y su estabilidad: Los antioxidantes BHA y BHT protegen las vitaminas del producto, garantizando que el núcleo mantenga su potencia y eficacia por más tiempo.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12. Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Cerdo Lechón QP aporta:
|La dosificación recomendada de Núcleo Cerdo Lechón QP es de 2 kg por cada 1.000 kg de alimento. Para un uso óptimo y seguro, consulte con un médico veterinario o nutricionista, según las condiciones productivas y nutricionales de su plantel.| Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|5.500.000 UI","VITAMINA D3|900.000 UI","VITAMINA E|17.500 UI","VITAMINA K3|1.450 mg","VITAMINA B1|1.750 mg","VITAMINA B2|5.200 mg","VITAMINA B3 (NIACINA)|35.000 mg","VITAMINA B5 (PANT. DE CALCIO)|20.000 mg","VITAMINA B6|3.500 mg","VITAMINA B7 (BIOTINA)|120 mg","VITAMINA B9 (ÁCIDO FÓLICO)|500 mg","VITAMINA B12 |5 mg","CALCIO|110 g","COBALTO |13 mg","COBRE|3 g","HIERRO|33 g","MANGANESO |13 g","SELENIO|27 mg","YODO|55 mg","ZINC|51 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","408px","0px","0px","0px","280px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (146,'NÚCLEO CERDO REPRODUCTOR QP','QP - 307','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Cerdo Reproductor QP es un suplemento vitamínico-mineral en polvo, especialmente formulado para cubrir los exigentes requerimientos nutricionales de la cerda en sus dos fases críticas: Gestación y Lactancia.
<br>
<br>
Este núcleo actúa como un modulador metabólico integral. En gestación, asegura el aporte de micronutrientes esenciales para el desarrollo fetal y la preparación de la glándula mamaria; en lactancia, provee las reservas minerales y cofactores vitamínicos necesarios para soportar la alta producción de leche sin comprometer la condición corporal de la madre. Es la herramienta clave para maximizar la longevidad de la cerda y la calidad de la camada al destete.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Integridad Podal y Longevidad Productiva (Efecto "Cascos Fuertes"): Gracias a su fortificación estratégica con altos niveles de Biotina (Vit. B7) en sinergia con Zinc y Manganeso, el producto promueve una queratinización superior de las pezuñas y fortalece las articulaciones. Esto es vital para prevenir cojeras, soportar el aumento de peso durante la gestación y reducir la tasa de eliminación de cerdas por problemas de aplomos.
<br>
<br>
Maximización de la Prolificidad y Viabilidad Embrionaria: El aporte reforzado de Ácido Fólico (Vit. B9) y Vitamina A actúa directamente en la prevención de la mortalidad embrionaria temprana, favoreciendo camadas más numerosas y uniformes. Adicionalmente, la combinación de Vitamina E y Selenio potencia la salud reproductiva, mejorando la implantación y facilitando la limpieza uterina post-parto.
<br>
<br>
Eficiencia Metabólica y Producción de Leche: Durante la lactancia, la cerda enfrenta un estrés metabólico severo. El perfil completo de Vitaminas del Complejo B (B1, B2, Niacina, Pantotenato, B12) optimiza el uso de la energía y la proteína del alimento para la síntesis de leche. Simultáneamente, el balance de Vitamina D3 y Calcio asegura una correcta movilización mineral, previniendo la descalcificación ósea y garantizando una producción láctea abundante para el crecimiento de los lechones.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12. Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
|1 kg de Núcleo Cerdo Reproductor QP aporta:
|La dosificación recomendada de Núcleo Cerdo Reproductor QP es 2 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|5.500.000 UI","VITAMINA D3|900 UI","VITAMINA E|17.500 UI","VITAMINA K3|1.450 mg","VITAMINA B1|1.750 mg","VITAMINA B2|5.200 mg","VITAMINA B3 (NIACINA)|35.000 mg","VITAMINA B5 (PANT. DE CALCIO)|20.000 mg","VITAMINA B6|3.500 mg","VITAMINA B7 (BIOTINA)|150 mg","VITAMINA B9 (ÁCIDO FÓLICO)|500 mg","VITAMINA B12 |5 mg","CALCIO|110 g","COLBALTO|13 mg","COBRE|3 g","HIERRO|33 g","MANGANESO|13 g","SELENIO|27 mg","YODO|55 mg","ZINC|51 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","364px","0px","0px","428px","0px","0px"],"rowsxtable":["10","10","12","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (147,'NÚCLEO CODORNIZ QP','QP - 313','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Codorniz QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Núcleo Codorniz QP, aporta:
|La dosificación recomendada de Núcleo Codorniz QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|3.800.000 UI","VITAMINA D3|1.320.000 UI","VITAMINA E|8.000 UI","VITAMINA K3|1.160 mg","VITAMINA B1|840 mg","VITAMINA B2|2.040 mg","VITAMINA B3 (NIACINA)|12.000 mg","VITAMINA B5 (PANT. DE CALCIO)|4.000 mg","VITAMINA B6|1.400 mg","VITAMINA B7 (BIOTINA)|40 mg","VITAMINA B9 (ÁCIDO FÓLICO)|400mg","VITAMINA B12 |8 mg","BIOCOLINA ®|30.000 mg","CALCIO|220 g","COBALTO |8,4 mg","COBRE|3,15 g","HIERRO|15 g","MANGANESO|45 g","SELENIO|18 mg","YODO|55 mg","ZINC|30 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (148,'NÚCLEO CONEJO QP','QP - 535','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo perro Adulto QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitaminas: A, D3, E, K3, B1, B2, B3 (Niacina), B5 (Pantotenato de calcio), B6, B7 (Biotina), B9 (ácido fólico), B12 y Biocolina. Minerales: Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso y Yodato de Calcio. Antioxidantes: BHT, BHA, Ácido Cítrico.|1 kg de Núcleo Conejo QP, aporta:
|La dosificación recomendada de Núcleo Perro Adulto QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|2.750.000 UI","VITAMINA D3|275.000 UI","VITAMINA E|15.000 UI","VITAMINA K3|500 mg","VITAMINA B1|1.000 mg","VITAMINA B2|1.500 mg","VITAMINA B3 (NIACINA)|12.000 mg","VITAMINA B5 (PANT. DE CALCIO)|7.000 mg","VITAMINA B6|7.500 mg","VITAMINA B7 (BIOTINA)|15 mg","VITAMINA B9 (ÁCIDO FÓLICO)|500 mg","VITAMINA B12 |12 mg","BIOCOLINA|10.000 mg","CALCIO|251 g","COBALTO |8,4 mg","COBRE|4 g","HIERRO|45 g","MANGANESO|4 g","SELENIO|18 mg","YODO|480 mg","ZINC|60 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (149,'NÚCLEO GATO QP','QP - 325','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Gato QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de gatos de distintas razas y edades. Contiene una mezcla balanceada de todas las vitaminas y minerales esenciales que contribuyen al óptimo desarrollo y funcionamiento del organismo felino.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de Cobalto, Óxido de zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Potasio. Taurina. Ácido cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
|1 kg de Núcleo Gato QP aporta:
|La dosificación recomendada de Núcleo Gato QP varía según la edad de los animales:
<br>
<br>
Gato cachorro (hasta 1 año): 1,5 kg por 1.000 kg de alimento.
<br>
Gato adulto (1 a 7 años): 1 kg por 1.000 kg de alimento.
<br>
Gato senior (desde 7 años): 1,2 kg por 1.000 kg de alimento.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|4.100.000 UI","VITAMINA D3|220.000 UI","VITAMINA E|22.500 UI","VITAMINA K3|1.100 mg","VITAMINA B1|4.000 mg","VITAMINA B2|1.000 mg","VITAMINA B3 (NIACINA)|36.000 mg","VITAMINA B5 (PANT. DE CALCIO)|4.150 mg","VITAMINA B6|2.550 mg","VITAMINA B7 (BIOTINA)|79 mg","VITAMINA B9 (ÁCIDO FÓLICO)|1.100 mg","VITAMINA B12 |22 mg","BIOCOLINA ®|10.000 mg","CALCIO|220 g","COBALTO |4 mg","COBRE|3 g","HIERRO|15 g","MANGANESO|3 g","SELENIO|8 mg","YODO|562 mg","ZINC|31 g","TAURINA|5 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","388px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (152,'NÚCLEO NOVILLO QP','QP - XXXX','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Novillo QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitaminas: A, D3, E, K3, B1, B2, B3 (Niacina), B5 (Pantotenato de calcio), B6, B7 (Biotina), B9 (ácido fólico), B12 y Biocolina. Minerales: Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso y Yodato de Calcio. Antioxidantes: BHT, BHA, Ácido Cítrico.|1 kg de Núcleo Novillo QP, aporta:
|La dosificación recomendada de Núcleo Novillo QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|200.000 UI","VITAMINA D3|50.000 UI","VITAMINA E|1.000 UI","CALCIO|106 g","CLORO|61 g","FÓSFORO|16 g","MAGNESIO|70 g","SODIO|39 g","COBALTO|4 mg","COBRE|750 mg","MANGANESO|1 g","SELENIO|9 mg","YODO|82 mg","ZINC|2 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (153,'NÚCLEO PEQUEÑOS RUMIANTES QP','QP - 581','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Pequeños Rumiantes QP es un suplemento vitaminico-mineral en polvo, formulado específicamente para satisfacer los requerimientos nutricionales de ovinos y caprinos en todas sus etapas productivas (cría, recría, gestación y lactancia).
<br>
<br>
Su fórmula balanceada está diseñada para optimizar la salud ruminal y corregir las deficiencias minerales típicas de los forrajes, aportando los macro y micronutrientes esenciales para sostener la producción de leche, lana/pelo y carne. Es un suplemento seguro que respeta la fisiología delicada de los pequeños rumiantes, previniendo desórdenes metabólicos comunes en sistemas de pastoreo o estabulados.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Salud Ruminal y Síntesis de Vitamina B12 (Efecto Cobalto): A diferencia de los monogástricos, los rumiantes dependen del Cobalto para sintetizar su propia Vitamina B12 en el rumen. Este núcleo asegura un aporte óptimo de Carbonato de Cobalto, vital para prevenir la anemia y la pérdida de apetito ("mal de pino"), garantizando que las bacterias del rumen funcionen eficientemente para digerir la fibra del forraje.
<br>
<br>
Prevención de Patologías Musculares y Metabólicas: La inclusión estratégica de Selenio y Vitamina E protege a las crías (corderos y cabritos) contra la "Enfermedad del Músculo Blanco" (distrofia muscular nutricional) y mejora la fertilidad en los adultos. Adicionalmente, el aporte de Óxido de Magnesio es fundamental para prevenir la tetania hipomagnesémica ("tetania de los pastos"), un trastorno mortal común en épocas de rebrote de pasturas o estrés por frío.
<br>
<br>
Calidad de Lana/Pelo y Resistencia Podal: El aporte reforzado de Zinc y Yodo mejora la calidad de la fibra (lana en ovejas, pelo en cabras) y fortalece la queratina de las pezuñas. Esto es crítico para reducir la incidencia de cojeras (como el Pietín o Foot Rot) y asegurar animales robustos capaz de desplazarse para pastorear, mientras que la base de Calcio y Fósforo asegura un esqueleto fuerte y una producción láctea sostenida.|Vitamina A, Vitamina D3, Vitamina E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Manganeso, Yodato de Potasio. Propionato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Pequeños Rumiantes QP aporta:
|La dosificación recomendada de Núcleo Pequeños Rumiantes QP es 2 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.
|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|310.000 UI","VITAMINA D3|65.000 UI","VITAMINA E|1.250 UI","CALCIO|106 g","CLORO|61 g","FÓSFORO|16 g","MAGNESIO|60 g","SODIO|39 g","COBALTO|3 mg","MANGANESO|1 g","SELENIO|7 mg","YODO|71 mg","ZINC|2 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","384px","0px","0px","408px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (156,'NÚCLEO POLLITA INICIAL QP','QP - 173','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Pollita Inicial QP es una premezcla vitamínico-mineral de alto desempeño, formulada específicamente para cubrir los requerimientos nutricionales críticos de gallinas ponedoras en su etapa de arranque (desde el día 1 hasta la semana 8 de vida).
<br>
<br>
Este producto actúa como el pilar fundamental en la fabricación del alimento balanceado de iniciación, asegurando que las aves alcancen el peso y la talla estándar de la raza. Su fórmula integral combina microminerales esenciales, un perfil completo de vitaminas hidrosolubles y liposolubles, y tecnología de protección hepática para garantizar un desarrollo esquelético robusto y un sistema inmunológico competente antes de la etapa de recría.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Desarrollo Esquelético y Estructural Superior: Gracias al aporte balanceado de Vitamina D3, Manganeso, Zinc y Calcio, este núcleo maximiza la mineralización ósea temprana. Esto es vital para formar la "estructura de reserva" de calcio que la gallina necesitará futuramente para la cáscara del huevo, previniendo problemas de patas y fatiga de jaula en la adultez.
<br>
<br>
Protección Hepática y Eficiencia Metabólica (Tecnología Biocolina®): La inclusión de Biocolina® y las vitaminas del complejo B, potencia el metabolismo de las grasas y protege el hígado de la pollita desde sus primeras semanas, un órgano clave que será sometido a alto estrés metabólico durante el ciclo de postura.
<br>
<br>
Salud Intestinal y Conservación de Nutrientes: La inclusión de Ácido Cítrico favorece la acidificación del tracto digestivo, mejorando la digestibilidad de los nutrientes y creando una barrera contra bacterias patógenas. Además, el sistema antioxidante dual (BHA + BHT) protege las vitaminas de la oxidación, asegurando que lleguen activas al organismo del animal para un arranque vigoroso y uniforme del lote.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Pollita Inicial QP aporta:
|La dosificación recomendada de Núcleo Pollita Inicial QP es 2 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|5.225.000 UI","VITAMINA D3|1.815.000 UI","VITAMINA E|11.000 UI","VITAMINA K3|1.595 mg","VITAMINA B1|1.155 mg","VITAMINA B2|2.805 mg","VITAMINA B3 (NIACINA)|16.500 mg","VITAMINA B5 (PANT. DE CALCIO)|5.500 mg","VITAMINA B6|1.925 mg","VITAMINA B7 (BIOTINA)|55 mg","VITAMINA B9 (ÁCIDO FÓLICO)|550 mg","VITAMINA B12 |11 mg","BIOCOLINA ®|41.250 mg","CALCIO|220 g","COBALTO |8 mg","COBRE|3 g","HIERRO|15 g","MANGANESO|45 g","SELENIO|18 mg","YODO|55 mg","ZINC|30 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","380px","0px","0px","412px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (157,'NÚCLEO POLLITA INICIAL QP + FITASA','QP - 321','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Pollita Inicial QP + Fitasa es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Fitasa. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Pollita Inicial QP + Fitasa, aporta:
|La dosificación recomendada de Núcleo Pollita Inicial QP + Fitasa es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|5.225.000 UI","VITAMINA D3|1.815.000 UI","VITAMINA E|11.000 UI","VITAMINA K3|1.595 mg","VITAMINA B1|1.155 mg","VITAMINA B2|2.805 mg","VITAMINA B3 (NIACINA)|16.500 mg","VITAMINA B5 (PANT. DE CALCIO)|5.500 mg","VITAMINA B6|1.925 mg","VITAMINA B7 (BIOTINA)|55 mg","VITAMINA B9 (ÁCIDO FÓLICO)|550 mg","VITAMINA B12 |11 mg","BIOCOLINA ®|41.250 mg","CALCIO|220 g ","COBALTO |8 mg","COBRE|3 g","HIERRO|15 g","MANGANESO|45 g","SELENIO|18 mg","YODO|55 mg","ZINC|30 g","FITASA|30 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (159,'NÚCLEO POLLITA RECRÍA QP','QP - 175','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Pollita Recría QP es una premezcla vitamínico-mineral formulada con precisión para la etapa de levante y desarrollo juvenil de la gallina ponedora (desde la semana 9 hasta la 16/18).
<br>
<br>
Este producto está diseñado para acompañar el cambio metabólico del ave, donde el crecimiento esquelético se desacelera para dar paso al desarrollo muscular y a la maduración del tracto reproductivo. Su balance específico de nutrientes busca consolidar la uniformidad del lote y preparar las reservas fisiológicas necesarias para afrontar el estrés del inicio de postura, evitando el engrasamiento prematuro.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Maduración del Sistema Reproductivo: Mediante niveles ajustados de Vitamina A, Vitamina E y Selenio, este núcleo favorece el desarrollo correcto del ovario y el oviducto antes del primer huevo. Esto es fundamental para asegurar una ovulación eficiente y una alta persistencia de postura una vez que el ave entre en producción.
<br>
<br>
Calidad de Plumaje y Salud de Piel (Integridad Externa): En la etapa de recría es vital completar el emplume. La combinación de Biotina (B7), Ácido Fólico (B9), Zinc y Yodo asegura una cobertura de plumas densa y uniforme. Un buen plumaje es crítico para la termorregulación; si el ave tiene frío por mal plumaje, desperdiciará energía comiendo más, lo que afecta la rentabilidad.
<br>
<br>
Control de Grasa y Prevención del Hígado Graso: Dado que en la recría el riesgo de obesidad aumenta, la Biocolina® junto con las vitaminas del Complejo B (B1, B2, B12) juegan un rol crucial como moduladores del metabolismo lipídico. Ayudan a movilizar las grasas hacia la formación de tejido magro y evitan la acumulación excesiva de lípidos en el hígado, previniendo el "Síndrome de Hígado Graso" y prolapsos futuros.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Pollita Recría QP aporta:
|La dosificación recomendada de Núcleo Pollita Recría QP es 2 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.

|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|4.987.500 UI","VITAMINA D3|1.732.500 UI","VITAMINA E|10.500 UI","VITAMINA K3|1.523 mg","VITAMINA B1|1.103 mg","VITAMINA B2|2.678 mg","VITAMINA B3 (NIACINA)|15.750 mg","VITAMINA B5 (PANT. DE CALCIO)|5.250 mg","VITAMINA B6|1.838 mg","VITAMINA B7 (BIOTINA)|53 mg","VITAMINA B9 (ÁCIDO FÓLICO)|525 mg","VITAMINA B12 |11 mg","BIOCOLINA ®|39.375 mg","CALCIO|220 g","COBALTO |8 mg","COBRE|3 g","HIERRO|15 g","MANGANESO|45 g","SELENIO|18 mg","YODO|55 mg","ZINC|30 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","420px","0px","0px","412px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (160,'NÚCLEO PONEDORA P2','QP - 656','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Ponedora P2 es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Lisina, Metionina. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Ponedora P2, aporta:
|La dosificación recomendada de Núcleo Ponedora P2 es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|1.900.000 UI","VITAMINA D3|660.000 UI","VITAMINA E|4.000 UI","VITAMINA K3|580 mg","VITAMINA B1|420 mg","VITAMINA B2|1.020 mg","VITAMINA B3 (NIACINA)|6.000 mg","VITAMINA B5 (PANT. DE CALCIO)|2.000 mg","VITAMINA B6|700 mg","VITAMINA B7 (BIOTINA)|20 mg","VITAMINA B9 (ÁCIDO FÓLICO)|200 mg","VITAMINA B12 |4 mg","BIOCOLINA ®|15.000 mg","CALCIO|88 g ","COBALTO |3 mg","COBRE|1 g","HIERRO|6 g","MANGANESO|18g","SELENIO|7 mg","YODO|22 mg","ZINC|12 g","LISINA HCL|200 g","DL-METIONINA|400 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (161,'NÚCLEO PONEDORA P3','QP - 604','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Ponedora P3 es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Lisina, Metionina, Treonina. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Ponedora P3, aporta:
|La dosificación recomendada de Núcleo Ponedora P3 es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|1.729.000 UI","VITAMINA D3|600.600 UI","VITAMINA E|3.640 UI","VITAMINA K3|528 mg","VITAMINA B1|382 mg","VITAMINA B2|928 mg","VITAMINA B3 (NIACINA)|5.460 mg","VITAMINA B5 (PANT. DE CALCIO)|1.820 mg","VITAMINA B6|637 mg","VITAMINA B7 (BIOTINA)|18 mg","VITAMINA B9 (ÁCIDO FÓLICO)|182 mg","VITAMINA B12 |4 mg","BIOCOLINA ®|13.650 mg","CALCIO|80 g ","COBALTO |3 mg","COBRE|1 g","HIERRO|5 g","MANGANESO|16 g","SELENIO|7 mg","YODO|20 mg","ZINC|11 g","LISINA HCL|182 g","DL-METIONINA|364 g","TREONINA|90 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (162,'NÚCLEO PONEDORA P4','QP - 605','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Ponedora P4 es una solución nutricional integral diseñada para simplificar la elaboración de alimento para gallinas ponedoras. Esta premezcla fortificada va más allá de un núcleo tradicional ya que además de aportar el perfil completo de vitaminas y minerales, integra los aminoácidos limitantes (Metionina, Lisina, Treonina) y aditivos zootécnicos esenciales como la Fitasa.
<br>
<br>
Presentado como un polvo fino y homogéneo de alta fluidez, asegura una dispersión uniforme en la mezcla final, garantizando que cada ave reciba una nutrición precisa sin la necesidad de realizar múltiples pesajes de micro-ingredientes en planta.
<br>
<br>
<b>Beneficios clave:</b>
<br>
<br>
Simplificación Operativa (todo en uno): Reduce los errores de formulación y pesaje en planta al incorporar Metionina, Lisina y Treonina en el núcleo. Facilita el manejo de inventario al consolidar múltiples aditivos críticos en un solo saco.
<br>
<br>
Máximo Potencial Productivo: El balance preciso de aminoácidos sintéticos impulsa directamente el tamaño del huevo y la masa ovárica, permitiendo expresar el máximo potencial genético de las gallinas.
<br>
<br>
Eficiencia Enzimática: La incorporación de Fitasa mejora la biodisponibilidad del fósforo fítico presente en los granos, permitiendo una formulación más eficiente y económica, reduciendo la excreción de fósforo al ambiente.
<br>
<br>
Salud Hepática y Metabólica: Mantiene la inclusión de Biocolina®, asegurando la protección hepática necesaria para soportar la alta exigencia metabólica de la postura intensiva.

|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Lisina HCL, DL-Metionina, L-Treonina. Fitasa. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Ponedora P4 aporta:
|La dosificación recomendada de Núcleo Ponedora P4 es 5,5 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|1.729.000 UI","VITAMINA D3|600.600 UI","VITAMINA E|3.640 UI","VITAMINA K3|528 mg","VITAMINA B1|382 mg","VITAMINA B2|928 mg","VITAMINA B3 (NIACINA)|5.460 mg","VITAMINA B5 (PANT. DE CALCIO)|1.820 mg","VITAMINA B6|637 mg","VITAMINA B7 (BIOTINA)|18 mg","VITAMINA B9 (ÁCIDO FÓLICO)|182 mg","VITAMINA B12 |4 mg","BIOCOLINA ®|13.650 mg","CALCIO|80 g","COBALTO |3 mg","COBRE|1 g","HIERRO|5 g","MANGANESO|16 g","SELENIO|7 mg","YODO|20 mg","ZINC|11 g","LISINA HCL|182 g","DL-METIONINA|364 g","L-TREONINA|90 g","FITASA|10 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","400px","0px","0px","408px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (163,'NÚCLEO PONEDORA QP','QP - 176','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Ponedora QP es un suplemento vitamínico-mineral diseñado para maximizar el rendimiento de gallinas en etapa de postura comercial. Su fórmula integra una matriz óptima de vitaminas liposolubles e hidrosolubles, microminerales esenciales y macrominerales. Se presenta en forma de polvo fino y homogeneo para una óptima dispersión en el alimento final.
<br><br>
<b>Beneficios clave:</b>
<br><br>
Calidad de cáscara: la sinergia entre la Vitamina D3, el Calcio, el Manganeso y el Zinc favorece una calcificación eficiente, logrando huevos con cáscaras más resistentes y reduciendo el porcentaje de huevos rotos.
<br><br>
Protección hepática: gracias a la inclusión de Biocolina®, ayuda a prevenir el síndrome de hígado graso, mejorando la movilización de grasas y la salud metabólica del ave durante los ciclos largos de postura.
<br><br>
Persistencia en la postura: aporta el perfil completo del complejo B y vitaminas antioxidantes (A y E) necesarias para mantener la curva de producción estable por más tiempo y mejorar la viabilidad del lote.
<br><br>
Eficiencia alimenticia: Los minerales traza (como el Zinc, Cobre y Selenio) participan en la optimización de los procesos enzimáticos, asegurando que la gallina aproveche al máximo los nutrientes de la ración base (maíz/soya).|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio. Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Núcleo Ponedora QP aporta:
|La dosificación recomendada de Núcleo Ponedora QP es 2 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosificación exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|4.750.000 UI","VITAMINA D3|1.650.000 UI","VITAMINA E|10.000 UI","VITAMINA K3|1.450 mg","VITAMINA B1|1.050 mg","VITAMINA B2|2.550 mg","VITAMINA B3 (NIACINA)|15.000 mg","VITAMINA B5 (PANT. DE CALCIO)|5.000 mg","VITAMINA B6|1.750 mg","VITAMINA B7 (BIOTINA)|50 mg","VITAMINA B9 (ÁCIDO FÓLICO)|500 mg","VITAMINA B12 |10 mg","BIOCOLINA ®|37.500 mg","CALCIO|220 g ","COBALTO |8,4 mg","COBRE|3.15 g","HIERRO|15 g","MANGANESO|45 g","SELENIO|18 mg","YODO|55 mg","ZINC|30 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","492px","0px","0px","408px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (164,'NÚCLEO PONEDORA QP + FITASA','QP - 180','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Ponedora QP + Fitasa es un aditivo nutricional integral formulado para maximizar la eficiencia biológica en gallinas de postura. Su composición combina una matriz balanceada de vitaminas y minerales esenciales con la acción enzimática de la Fitasa, creando una sinergia que optimiza el aprovechamiento de los nutrientes de la dieta.
<br><br>
Este suplemento asegura el aporte diario de micronutrientes críticos para la producción de huevo, al mismo tiempo que incrementa la biodisponibilidad del fósforo y otros minerales presentes en los insumos vegetales, favoreciendo una nutrición precisa y de alto desempeño.
<br><br>
<b>Beneficios clave:</b>
<br><br>
Mayor Disponibilidad de Fósforo: Gracias a la incorporación de Fitasa, el producto libera eficientemente el fósforo fítico contenido en los granos y oleaginosas, mejorando su absorción intestinal y permitiendo un uso más eficiente de los recursos nutricionales.
<br><br>
Soporte Metabólico y Productivo: Provee el perfil completo de vitaminas hidrosolubles y liposolubles, junto con minerales traza, necesarios para sostener altas tasas de postura y mantener la vitalidad de las aves durante todo el ciclo productivo.
<br><br>
Salud Hepática Reforzada: Contiene Biocolina®, un ingrediente de origen natural que optimiza la función del hígado y el metabolismo de las grasas, protegiendo al ave contra el desgaste metabólico típico de la producción intensiva.
<br><br>
Calidad de la Cáscara: La combinación de Vitamina D3, Calcio y microminerales (Manganeso, Zinc), sumada a la mejor absorción mineral facilitada por la enzima, promueve la formación de cáscaras resistentes y de calidad comercial superior.|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Fitasa. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Ponedora QP + Fitasa aporta:
|La dosificación recomendada de Núcleo Ponedora QP + Fitasa es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en  sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|4.750.000 UI","VITAMINA D3|1.650.000 UI","VITAMINA E|10.000 UI","VITAMINA K3|1.450 mg","VITAMINA B1|1.050 mg","VITAMINA B2|2.550 mg","VITAMINA B3 (NIACINA)|15.000 mg","VITAMINA B5 (PANT. DE CALCIO)|5.000 mg","VITAMINA B6|1.750 mg","VITAMINA B7 (BIOTINA)|50 mg","VITAMINA B9 (ÁCIDO FÓLICO)|500 mg","VITAMINA B12 |10 mg","BIOCOLINA ®|37.500 mg","CALCIO|220 g ","COBALTO |8,4 mg","COBRE|3,15 g","HIERRO|15 g","MANGANESO|45 g","SELENIO|18 mg","YODO|55 mg","ZINC|30 g","FITASA|30 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","364px","0px","0px","408px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (165,'NÚCLEO PONEDORA QP + PIGMENTO','QP - 179','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Ponedora QP + Pigmento es una premezcla vitamínico-mineral de alta precisión, desarrollada específicamente para cubrir los requerimientos nutricionales de gallinas en etapa de postura comercial. Su fórmula balanceada integra una matriz completa de vitaminas (liposolubles e hidrosolubles) y minerales traza, potenciada con la adición de Cantaxantina, garantizando no solo la salud del ave sino también el valor comercial del huevo.
<br>
<br>
Se presenta enforma de polvo fino y homogéneo, favorecneido una adecuada dispersión en el alimento final, evitando la segregación de nutrientes y asegurando un consumo uniforme en el lote.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio, Carbonato de cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Cantaxantina. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno C(BHT).|1 kg de Núcleo Ponedora QP + Pigmento aporta:
|La dosificación recomendada de Núcleo Ponedora QP + Pigmento es de 2 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|4.750.000 UI","VITAMINA D3|1.650.000 UI","VITAMINA E|10.000 UI","VITAMINA K3|1.450 mg","VITAMINA B1|1.050mg","VITAMINA B2|2.550 mg","VITAMINA B3 (NIACINA)|15.000 mg","VITAMINA B5 (PANT. DE CALCIO)|5.000 mg","VITAMINA B6|1.750 mg","VITAMINA B7 (BIOTINA)|50 mg","VITAMINA B9 (ÁCIDO FÓLICO)|500 mg","VITAMINA B12 |10 mg","BIOCOLINA ®|37.500 mg","CALCIO|220 g ","COBALTO |8,4 mg","COBRE|3,15 g","HIERRO|15 g","MANGANESO|45 g","SELENIO|18 mg","YODO|55 mg","ZINC|30 g","CANTAXANTINA|15.000 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","324px","0px","0px","0px","484px"],"rowsxtable":["10","10","11","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (166,'NÚCLEO TERNERO QP','QP - 762','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Ternero QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Manganeso, Yodato de Potasio. Propionato de Calcio, Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Ternero QP, aporta:
|La dosificación recomendada de Núcleo Ternero QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|250.000 UI","VITAMINA D3|75.000 UI","VITAMINA E|1.250 UI","CALCIO|106 g","CLORO|61 g","FÓSFORO|16 g","MAGNESIO|60 g","SODIO|39 g","COBALTO|3,3 mg","COBRE|500 mg","MANGANESO|992 mg","SELENIO|7,2 mg","YODO|71 mg","ZINC|2 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (167,'NÚCLEO VACA LECHERA QP','QP - 521','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Vaca Lechera QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Yodato de Calcio. Propionato de Calcio, Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Vaca Lechera QP, aporta:
|La dosificación recomendada de Núcleo Vaca Lechera QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|300.000 UI","VITAMINA D3|65.000 UI","VITAMINA E|1.250 UI","CALCIO|240 g","CLORO|61 g","FÓSFORO|16 g","MAGNESIO|60 g","SODIO|39 g","COBALTO|3 mg ","COBRE|840 mg","MANGANESO|980 mg","SELENIO|6,5 mg","YODO|71 mg","ZINC|1.995 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (168,'NÚCLEO YEGUAS Y POTRILLOS QP','QP - 417','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Yeguas y Potrillos QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E. Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Sulfato de Cobre, Sulfato de Manganeso, Yodato de Potasio. Lisina, Selplex ® (Selenio Orgánico). Bio-mos ® (Cepas de <i>Saccharomyces cereviciae</i>), Extracto de Alga <i>Chlorella Vulgaris</i>, Pared Celular de <i>Saccharomyces Cerevisiae</i>, Propionato de Calcio, Zeolita, Nucleotidos, Yea Sacc ® (Probioticos de <i>Saccharomyces cereviciae</i>  Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Yeguas y Potrillos QP, aporta:
|La dosificación recomendada de Núcleo Yeguas y Potrillos QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|1.600.000 UI","VITAMINA D3|160.000 UI","VITAMINA E|20.000 UI","CALCIO|120 g","CLORO|24 g","FÓSFORO|72 g","MAGNESIO|100 g","SODIO|15 g","COBRE|4 g","MANGANESO|10,5 g","SELENIO|4 mg","YODO|242 mg","ZINC|12 g","LISINA HCL|80 g","NUCLEÓTIDOS|20 g","ß-GLUCANOS Y MANANO OLIGOSACÁRIDOS|3 g","ATRAPADOR DE MICOTOXINAS|10 g","PROBIÓTICOS (<i>Saccharomyces cerevisiae</i>)|3 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (169,'OVINOSAL QP + VITAMINA ADE','QP - 392','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Ovinosal QP + Vitamina ADE es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Potasio, Cloruro de Sodio, Fosfato Bicalcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Manganeso, Sulfato Ferroso, Yodato de Calcio.|1 kg de Ovinosal QP + Vitamina ADE, aporta:
|La dosificación recomendada de Ovinosal QP + Vitamina ADE es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|40.000 UI","VITAMINA D3|10.000 UI","VITAMINA E|3.000 UI","CALCIO|50 g","CLORO|159 g","FÓSFORO|18 g","MAGNESIO|9 g","SODIO|101 g","COBALTO|2,5 mg","MANGANESO|510 mg","SELENIO|5,4 mg","YODO|48 mg","ZINC|1 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (170,'POTENZA DOG','QP - 198','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Potenza Dog es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Carnitina, Creatina, Taurina. Harina de Soya, Levadura de Cerveza. Propionato de Calcio.|1 kg de Potenza Dog, aporta:
|La dosificación recomendada de Potenza Dog es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CREATINA|150 g","CARNITINA|38 g","TAURINA |15 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (171,'POWER YEAST HORSE','QP - 558','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Power Yeast Horse es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Yea Sacc ® (Probioticos de <i>Saccharomyces cereviciae</i>).|Valores referenciales:
|La dosificación recomendada de Power Yeast Horse es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["PROTEÍNA|40%","CARBOHIDRATOS|35%","GRASA|0.02%","FIBRA CRUDA|0.35%","CENIZAS|8%","ENERÍA BRUTA|4.690 Kcal/kg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (172,'PREMIX MINERAL GATO QP','QP - 318','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Mineral Gato QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Sulfato Ferroso, Yodato de Potasio|1 kg de Premix Mineral Gato QP, aporta:
|La dosificación recomendada de Premix Mineral Gato QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CALCIO|220 g","COBALTO |7 mg","COBRE|5 g","HIERRO|30 g","MANGANESO|6 g","SELENIO|15 mg","YODO|1.124 mg","ZINC|61,8 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (175,'PREMIX MINERAL PERRO QP','QP - 771','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Mineral Perro QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Sulfato Ferroso, Yodato de Calcio.|1 kg de Premix Mineral Perro QP, aporta:
|La dosificación recomendada de Premix Mineral Perro QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CALCIO|220 g    ","COBALTO |7 mg","COBRE|4 g","HIERRO|45 g","MANGANESO|2,5 g","SELENIO|15 mg","YODO|468 mg","ZINC|62,5 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (178,'PREMIX MINERAL SALMONES QP','QP - 320','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Mineral Salmones QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Yodato de Calcio.
|1 kg de Premix Mineral Salmones QP, aporta:
|La dosificación recomendada de Premix Mineral Salmones QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CALCIO|220 g","COBALTO |24 mg","COBRE|2 g","HIERRO|50 g","MANGANESO|50 g","SELENIO|50 mg","YODO|385 mg","ZINC|103 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","508px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (179,'PREMIX VITAMÍNICO BROILER FINAL QP','QP - 420','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Broiler Final QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Premix Vitamínico Broiler Final QP, aporta:
|La dosificación recomendada de Premix Vitamínico Broiler Final QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|9.975.000 UI","VITAMINA D3|3.465.000 UI","VITAMINA E|21.000 UI","VITAMINA K3|3.045 mg","VITAMINA B1|2.205 mg","VITAMINA B2|5.355 mg","VITAMINA B3 (NIACINA)|31.500 mg","VITAMINA B5 (PANT. DE CALCIO)|10.500 mg","VITAMINA B6|3.675 mg","VITAMINA B7 (BIOTINA)|105 mg","VITAMINA B9 (ÁCIDO FÓLICO)|1.050 mg","VITAMINA B12 |21 mg","BIOCOLINA ®|78.750 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (180,'PREMIX VITAMÍNICO BROILER INICIAL QP','QP - 419','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Broiler Inicial QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Premix Vitamínico Broiler Inicial QP, aporta:
|La dosificación recomendada de Premix Vitamínico Broiler Inicial QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|10.450.000 UI","VITAMINA D3|3.630.000 UI","VITAMINA E|22.000 UI","VITAMINA K3|3.190 mg","VITAMINA B1|2.310 mg","VITAMINA B2|5.610 mg","VITAMINA B3 (NIACINA)|33.000 mg","VITAMINA B5 (PANT. DE CALCIO)|11.000 mg","VITAMINA B6|3.850 mg","VITAMINA B7 (BIOTINA)|110 mg","VITAMINA B9 (ÁCIDO FÓLICO)|1.100 mg","VITAMINA B12 |22 mg","BIOCOLINA ®|82.500 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (181,'PREMIX VITAMÍNICO GATO QP','QP - 791','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Gato QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de calcio, Taurina. Ácido cítrico, Butilhidroxianisol Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
|1 kg de Premix Vitamínico Gato QP, aporta:
|La dosificación recomendada de Premix Vitamínico Gato QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|8.200.000 UI","VITAMINA D3|440.000 UI","VITAMINA E|45.000 UI","VITAMINA K3|2.200 mg","VITAMINA B1|8.000 mg","VITAMINA B2|2.000 mg","VITAMINA B3 (NIACINA)|72.000 mg","VITAMINA B5 (PANT. DE CALCIO)|8.300 mg","VITAMINA B6|5.100 mg","VITAMINA B7 (BIOTINA)|157 mg","VITAMINA B9 (ÁCIDO FÓLICO)|2.200 mg","VITAMINA B12 |44 mg","BIOCOLINA ®|20.000 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (184,'PREMIX VITAMÍNICO PERRO QP','QP - 315','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Perro QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de calcio. Ácido cítrico, Butilhidroxianisol Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
|1 kg de Premix Vitamínico Perro QP, aporta:
|La dosificación recomendada de Premix Vitamínico Perro QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|5.500.000 UI","VITAMINA D3|550.000 UI","VITAMINA E|35.000 UI","VITAMINA K3|1.000 mg","VITAMINA B1|2.670 mg","VITAMINA B2|30.000 mg","VITAMINA B3 (NIACINA)|14.900 mg","VITAMINA B5 (PANT. DE CALCIO)|16.300 mg","VITAMINA B6|15.200 mg","VITAMINA B7 (BIOTINA)|30 mg","VITAMINA B9 (ÁCIDO FÓLICO)|190 mg","VITAMINA B12 |24 mg","BIOCOLINA ®|20.000 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (187,'PREMIX VITAMíNICO POLLITA INICIAL QP','QP - 297','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Pollita Inicial QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Premix Vitamínico Pollita Inicial QP, aporta:
|La dosificación recomendada de Premix Vitamínico Pollita Inicial QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|10.450.000 UI","VITAMINA D3|3.630.000 UI","VITAMINA E|22.000 UI","VITAMINA K3|3.190 mg","VITAMINA B1|2.310 mg","VITAMINA B2|5.610 mg","VITAMINA B3 (NIACINA)|33.000 mg","VITAMINA B5 (PANT. DE CALCIO)|11.000 mg","VITAMINA B6|3.850 mg","VITAMINA B7 (BIOTINA)|110 mg","VITAMINA B9 (ÁCIDO FÓLICO)|1.100 mg","VITAMINA B12 |22 mg","BIOCOLINA ®|82.500 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (188,'PREMIX VITAMíNICO POLLITA RECRÍA QP','QP - 312','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Pollita Recría QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Premix Vitamínico Pollita Recría QP, aporta:
|La dosificación recomendada de Premix Vitamínico Pollita Recría QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|9.975.000 UI","VITAMINA D3|3.465.000 UI","VITAMINA E|21.000 UI","VITAMINA K3|3.045 mg","VITAMINA B1|2.205 mg","VITAMINA B2|5.355 mg","VITAMINA B3 (NIACINA)|31.500 mg","VITAMINA B5 (PANT. DE CALCIO)|10.500 mg","VITAMINA B6|3.675 mg","VITAMINA B7 (BIOTINA)|105 mg","VITAMINA B9 (ÁCIDO FÓLICO)|1050 mg","VITAMINA B12 |21 mg","BIOCOLINA ®|78.750 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (189,'PREMIX VITAMÍNICO PONEDORA QP','QP - 311','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Ponedora QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Premix Vitamínico Ponedora QP, aporta:
|La dosificación recomendada de Premix Vitamínico Ponedora QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|9.500.000 UI","VITAMINA D3|3.300.000 UI","VITAMINA E|20.000 UI","VITAMINA K3|2.900 mg","VITAMINA B1|2.100 mg","VITAMINA B2|5.100 mg","VITAMINA B3 (NIACINA)|30.000 mg","VITAMINA B5 (PANT. DE CALCIO)|10.000 mg","VITAMINA B6|3.500 mg","VITAMINA B7 (BIOTINA)|100 mg","VITAMINA B9 (ÁCIDO FÓLICO)|1.000 mg","VITAMINA B12 |20 mg","BIOCOLINA ®|75.000 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (190,'PREMIX VITAMÍNICO PONEDORA QP + FITASA','QP - 362','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Ponedora QP + Fitasa es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de Calcio. Fitasa. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Premix Vitamínico Ponedora QP + Fitasa, aporta:
|La dosificación recomendada de Premix Vitamínico Ponedora QP + Fitasa es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|9.500.000 UI","VITAMINA D3|3.300.000 UI","VITAMINA E|20.000 UI","VITAMINA K3|2.900 mg","VITAMINA B1|2.100 mg","VITAMINA B2|5.100 mg","VITAMINA B3 (NIACINA)|30.000 mg","VITAMINA B5 (PANT. DE CALCIO)|10.000 mg","VITAMINA B6|3.500 mg","VITAMINA B7 (BIOTINA)|100 mg","VITAMINA B9 (ÁCIDO FÓLICO)|1.000 mg","VITAMINA B12 |20 mg","BIOCOLINA ®|75.000 mg","FITASA|30 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (191,'PROBIHORSE','QP - 203','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Probihorse es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|100% cepas de <i>Saccharomyces cerevisiae</i>|1 kg de Probihorse, aporta:
|La dosificación recomendada de Núcleo Perro Adulto QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|2.750.000 UI","VITAMINA D3|275.000 UI","VITAMINA E|15.000 UI","VITAMINA K3|500 mg","VITAMINA B1|1.000 mg","VITAMINA B2|1.500 mg","VITAMINA B3 (NIACINA)|12.000 mg","VITAMINA B5 (PANT. DE CALCIO)|7.000 mg","VITAMINA B6|7.500 mg","VITAMINA B7 (BIOTINA)|15 mg","VITAMINA B9 (ÁCIDO FÓLICO)|500 mg","VITAMINA B12 |12 mg","BIOCOLINA|10.000 mg","CALCIO|251 g","COBALTO |8,4 mg","COBRE|4 g","HIERRO|45 g","MANGANESO|4 g","SELENIO|18 mg","YODO|480 mg","ZINC|60 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (192,'PREMIX VITAMÍNICO SALMONES QP','QP - 576','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Salmones QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Carbonato de calcio, Vitamina C Monofosfato. Ácido cítrico, Butilhidroxianisol Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
|1 kg de Premix Vitamínico Salmones QP, aporta:
|La dosificación recomendada de Premix Vitamínico Salmones QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|7.600.000 UI","VITAMINA D3|2.400.000 UI","VITAMINA E|16.000 UI","VITAMINA K3|2.400 mg","VITAMINA C MONOFOSFATO|70.000 mg","VITAMINA B1|1.600 mg","VITAMINA B2|4.080 mg","VITAMINA B3 (NIACINA)|24.000 mg","VITAMINA B5 (PANT. DE CALCIO)|7.840 mg","VITAMINA B6|2.800 mg","VITAMINA B7 (BIOTINA)|80 mg","VITAMINA B9 (ÁCIDO FÓLICO)|800 mg","VITAMINA B12 |16 mg","BIOCOLINA ®|60.000 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (193,'QUALITY HORSE','QP - 451','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Quality Horse es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12, Biocolina ®. Vitamina C, Availa-4 ® (Zinc orgánico + Cobre + Cobalto + Manganeso), Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenio (Selplex ®), Selenito de Sodio, Sulfato de Calcio, Sulfato de Cobre ,Sulfato de Manganeso, Yodato de Calcio. Alfafa, Gluten Meal, Harina de Soya, Maíz Molido. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT), Propionato de Calcio.|1 kg de Quality Horse, aporta:
|La dosificación recomendada de Quality Horse es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|1.500.000 UI","VITAMINA D3|300.000 UI","VITAMINA E|2.500 UI","VITAMINA K3|80 mg","VITAMINA B1|2.000 mg","VITAMINA B2|2.500 mg","VITAMINA B3 (NIACINA)|10.000 mg","VITAMINA B5 (PANT. DE CALCIO)|3.000 mg","VITAMINA B6|2.000 mg","VITAMINA B7 (BIOTINA)|6 mg","VITAMINA B9 (ÁCIDO FÓLICO)|60 mg","VITAMINA B12|600 mg","COLINA|12.000 mg","CALCIO|32.000 mg","FÓSFORO|25.000 mg","MAGNESIO|5.200 mg","POTASIO|6.800 mg","SODIO|8.000 mg","COBALTO|30 mg","COBRE|1.200 mg","HIERRO|8.200 mg","MANGANESO|2.600 mg","SELENIO|36 mg","YODO|60 mg","ZINC|5.400 mg","ARGININA|10.000 mg","CISTINA|2.600 mg","FENILALANINA|8.100 mg","HISTIDINA|4.500 mg","ISOLEUCINA|7.800 mg","LEUCINA|12.300 mg","LISINA|13.000 mg","METIONINA|4.000 mg","TIROSINA|5.500 mg","TREONINA|6.600 mg","TRIPTÓFANO|2.600 mg","VALINA|7.300 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (194,'QUALITY SAL CRIANZA ENGORDA','QP - 310','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Quality Sal Crianza Engorda es un aditivo formulado para ganado vacuno que contiene todos los minerales esenciales requeridos por los bovinos. Está especialmente desarrollado para vaquillas (desde el destete hasta el primer parto) y también para ganado destinado a carne, en etapas de crianza y engorda. Se presenta como polvo fino y homogéneo, lo que favorece una integración adecuada con el alimento.
<br>
<br>
<b>Beneficios clave:</b>
<br>
<br>
Soporte Integral al Desarrollo Osteomuscular: Gracias a su aporte balanceado de macrominerales (Calcio, Fósforo y Magnesio), el producto asegura una estructura ósea robusta necesaria para soportar la ganancia de peso acelerada en novillos de engorda y el desarrollo pélvico adecuado en vaquillas de reposición.
<br>
<br>
Optimización de la Eficiencia Metabólica e Inmune: La inclusión de microminerales esenciales (Zinc, Cobre, Manganeso, Selenio y Cobalto) actúa directamente sobre los sistemas enzimáticos y la respuesta inmune, favoreciendo la conversión alimenticia y reduciendo el estrés oxidativo durante las etapas de mayor exigencia fisiológica.
<br>
<br>
Preparación para el Desempeño Reproductivo (Específico vaquillas): Aporta los niveles críticos de Zinc y Manganeso necesarios para el desarrollo del epitelio reproductivo y la síntesis hormonal, preparando a la hembra para alcanzar una pubertad y primer servicio exitosos.|Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Yodato de Calcio.|1 kg de Quality Sal Crianza Engorda aporta:
|La dosificación recomendada de Quality Sal Crianza Engorda es 200 gramos por animal al día.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en sacos de polietileno de 25 kg y en bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación de ganado vacuno. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["AZUFRE|10 g","CALCIO|180 g","CLORO|122 g","FÓSFORO|45 g","MAGNESIO|75 g","SODIO|78 g","COBALTO|13 mg","COBRE|750 mg","MANGANESO|1,3 g","SELENIO|27 mg","YODO|165 mg","ZINC|2,2 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","284px","0px","0px","0px","488px"],"rowsxtable":["10","10","6","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (195,'QUALITY SAL LECHERÍA','QP - 309','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Quality Sal Lechería es un aditivo formulado para vacas lecheras de alta producción que contiene todos los minerales esenciales para esta etapa productiva de los bovinos. Se presenta como polvo fino y homogéneo, lo que favorece una integración adecuada con el alimento.|Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Yodato de Calcio.|1 kg de Quality Sal Lechería aporta:
|Dosificación recomendada de Quality Sal Lechería: 
<br>
<br>
Vacas en lactancia hasta 6.500 litros: 250 gramos por animal al día.<br>
Vacas en lactancia entre 6.500 y 8.000 litros: 300 gramos por animal al día.<br>
Vacas en lactancia sobre 8.000 litros: 350 gramos por animal al día.<br>
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en nutrición de bovinos. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["AZUFRE|10 g","CALCIO|155 g","CLORO|134 g","FÓSFORO|50 g","MAGNESIO|75 g","SODIO|85 g","COBALTO|21 mg","COBRE|1,2 g","MANGANESO|2,2 g","SELENIO|45 mg","YODO|275 mg","ZINC|3,6 g"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","316px","0px","0px","0px"],"rowsxtable":["10","10","6","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (196,'QUALITY SAL PERÍODO SECO','QP - 322','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Quality Sal Período Seco es un suplemento mineral formulado integralmente para vacas lecheras durante toda la etapa no lactante (últimos 60 días de la gestación). Su uso abarca desde el momento del secado hasta el parto, asegurando niveles óptimos de reservas minerales y vitamínicas para enfrentar la próxima lactancia. Se presenta como polvo fino y homogéneo, lo que favorece una integración adecuada con el alimento.
<br><br>
<b>Beneficios clave:</b>
<br><br>
Prevención de Hipocalcemia: Estimula la actividad de la Paratohormona (PTH) gracias a sus niveles controlados de Calcio y alto Magnesio.
<br><br>
Salud Uterina: Reduce la incidencia de retención de placenta mediante niveles óptimos de Selenio y Vitamina E.
<br><br>
Protección Mamaria: Favorece la formación del tapón de queratina y mejora la respuesta inmune de la ubre, reduciendo mastitis al inicio de la lactancia.
<br><br>
Desarrollo Fetal: Aporta los micro-minerales esenciales para el crecimiento final del ternero.|Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato de Manganeso, Yodato de Calcio. Vitamina A, Vitamina E, Vitamina D3. Propionato de calcio, Dextrosa Monohidratada, Saborizante de manzana.|1 kg de Quality Sal Pre Parto, aporta:
|La dosificación recomendada de Quality Sal Pre Parto es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["AZUFRE|39 g","CALCIO|1,5 g","CLORO|134 g","MAGNESIO|67 g","SODIO|86 g","COBALTO|18 mg","COBRE|1 g","MANGANESO|1,8 g","SELENIO|36 mg","YODO|220 mg","ZINC|3 g","VITAMINA A|500.000 UI","VITAMINA D3|100.000 UI","VITAMINA E|5.000 UI"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","316px","0px","0px","0px","488px"],"rowsxtable":["10","10","7","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (197,'RED EGGS PLUS','QP - 213','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Red eggs Plus es una fuente concentrada de Cantaxantina, diseñada para suplementar dietas de gallinas ponedoras con déficit de pigmentos naturales. Gracias a su formulación mediante microencapsulación en matriz de lignosulfonato de calcio y almidón, la partícula posee una alta estabilidad física y química. El producto soporta condiciones críticas de calor y cizallamiento mecánico durante el mezclado del alimento, asegurando que el pigmento llegue intacto al ave para lograr la coloración deseada en la yema del huevo.

|Cantaxantina, Carbonato de Calcio, Harinilla de Trigo.|1 kg de Red Eggs Plus, aporta:
|La dosificación recomendada de Red Eggs Plus varía entre 1 kg a 2,5 kg por 1.000 kg de alimento, dependiendo de la coloración de yema deseada.
| Producto disponible en sacos de polietileno de 20 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CANTAXANTINA|1.500 mg"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","452px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (198,'RELAX HORSE','QP - 539','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Relax Horse es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Triptófano. Carbonato de Calcio, Óxido de Magnesio, Sulfato Ferroso. Extracto de Malta. |1 kg de Relax Horse, aporta:
|La dosificación recomendada de Núcleo Perro Adulto QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|2.750.000 UI","VITAMINA D3|275.000 UI","VITAMINA E|15.000 UI","VITAMINA K3|500 mg","VITAMINA B1|1.000 mg","VITAMINA B2|1.500 mg","VITAMINA B3 (NIACINA)|12.000 mg","VITAMINA B5 (PANT. DE CALCIO)|7.000 mg","VITAMINA B6|7.500 mg","VITAMINA B7 (BIOTINA)|15 mg","VITAMINA B9 (ÁCIDO FÓLICO)|500 mg","VITAMINA B12 |12 mg","BIOCOLINA|10.000 mg","CALCIO|251 g","COBALTO |8,4 mg","COBRE|4 g","HIERRO|45 g","MANGANESO|4 g","SELENIO|18 mg","YODO|480 mg","ZINC|60 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (199,'SALES MINERALES AVES QP','QP - 159','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Sales Minerales Aves QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio.
|1 kg de Sales Minerales Aves QP, aporta:
|La dosificación recomendada de Sales Minerales Aves QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CALCIO|220 g ","COBALTO |16,8 mg","COBRE|6,3 g","HIERRO|30 g","MANGANESO|90 g","SELENIO|36 mg","YODO|110 mg","ZINC|60 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (200,'SALES MINERALES CERDOS QP','QP - 161','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Sales Minerales Cerdos QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Carbonato de Calcio, Carbonato de Cobalto, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio.|1 kg de Sales Minerales Cerdos QP, aporta:
|La dosificación recomendada de Sales Minerales Cerdos QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CALCIO|220 g","COBALTO |25,2 mg","COBRE|6,5 g","HIERRO|66 g","MANGANESO|25,6 g","SELENIO|54 mg","YODO|110 mg","ZINC|101 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (201,'STRONG EGGS','QP - 230','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Strongs Eggs es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina D3, Availa-4 ® (Zinc orgánico + Cobre + Cobalto + Manganeso), Carbonato de Calcio, Óxido de Magnesio.|1 kg de Strongs Eggs, aporta:
|La dosificación recomendada de Strongs Eggs es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA D3|2.500.000 UI","CALCIO|76.800 mg","MAGNESIO|5.000 mg","COBRE|36 mg","MANGANESO|56 mg","ZINC|250 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (202,'VITAMIX ADE','QP - 263','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Vitamix Ade es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E. Carbonato de Calcio.|1 kg de Vitamix Ade, aporta:
|La dosificación recomendada de Vitamix Ade es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|6.200.000 UI","VITAMINA D3|2.000.000 UI","VITAMINA E|30.000 UI","CALCIO|250 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (203,'VITAMIX ADE + SELENIO','QP - 264','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Vitamix Ade + Selenio es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E. Carbonato de Cobalto, Selenito de Sodio. Carbonato de Calcio.|1 kg de Vitamix Ade + Selenio, aporta:
|La dosificación recomendada de Vitamix Ade + Selenio es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|6.200.000 UI","VITAMINA D3|2.000.000 UI","VITAMINA E|30.000 UI","CALCIO|250 g","COBALTO |210 mg","SELENIO|450 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (207,'prueba222','','dsfsfs','dddd','true','[["dfdfd|ggggg","fff|ffffdd","dddd|ffff","|","|"]]','{"pages":"1","margins":["0px"],"rowsxtable":["10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (208,'HOOF HEALTH','QP - 144','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Hoof Health es un suplemento nutricional peletizado para equinos, diseñado para fortalecer, nutrir y proteger sus cascos desde adentro. Su fórmula especializada, rica en vitaminas, minerales y aminoácidos, proporciona los componentes esenciales para un crecimiento y una estructura de casco óptimos.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Fortalece la Estructura del Casco: La fórmula de Hoof Health contiene nutrientes clave como biotina y metionina, que son fundamentales para la formación de queratina, la proteína principal del casco. Esto resulta en cascos más duros, resistentes a las grietas y con una mejor integridad estructural.
<br>
<br>
Mejora la Condición General del Casco: Los minerales como el zinc orgánico, el cobre y el selenio orgánico tienen un papel crucial en la calidad del casco. Estos ingredientes trabajan en conjunto para mejorar la elasticidad, dureza y brillo, reduciendo la fragilidad y las descamaciones.
<br>
<br>
Promueve un Crecimiento Saludable: Los cascos débiles, agrietados o de crecimiento lento son un problema común. Hoof Health aporta los elementos necesarios para estimular un crecimiento de la pared de mayor calidad, más rápido y uniforme, ayudando a prevenir futuros daños.
<br>
<br>
Aporte de Nutrientes Esenciales: Hoof Health entrega una combinación de zinc, magnesio, manganeso, cobalto, vitamina B6 y lisina, que actúan de forma sinérgica para apoyar el metabolismo y la salud general del caballo, reflejándose directamente en la calidad de sus cascos y su pelaje.|Vitamina B2, Vitamina B7 (Biotina). Óxido de Magnesio, Óxido de Zinc. Metionina, Lisina. Aceite Vegetal, Harina de Trigo, Harinilla de Soya, Maíz. Propionato de Calcio.|1 kg de Hoof Health, aporta:
|La dosificación recomendada es de 100 gramos por caballo al día. 
<br>
Hoof Health se administra de manera oral, en forma individual o mezclado con el alimento. |Producto disponible en baldes de 3 y 6 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Mantener fuera del alcance de los niños y animales.
<br>
<br>
Seguir estrictamente las dosis recomendadas. No exceder la dosis diaria sugerida sin la supervisión de un veterinario.
<br>
<br>
Si observa alguna reacción adversa, suspenda su uso y consulte a un médico veterinario.
<br>
<br>
<b>Producto exclusivo para uso en caballos. No apto para consumo humano.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA B6|2.000 mg","VITAMINA B7 (BIOTINA)|400 mg","MAGNESIO|1.000 mg","SELENIO|5.000 mg","ZINC|3.500 mg","METIONINA|200.000 mg","LISINA|100.000 mg","AVAILA 4|2.500 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","480px","0px","0px","0px","340px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (209,'PROLYSES','QP - 141','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Prolyses es un suplemento nutricional peletizado para equino, formulado con nucleótidos concentrados, los bloques de construcción esenciales para la vida celular. Este producto va más allá de un suplemento tradicional; es un nutracéutico funcional diseñado para potenciar la salud, el rendimiento y la recuperación de los caballos de manera completamente natural.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Desarrollo Muscular Natural: Considerado un anabólico natural, Prolyses favorece una mayor síntesis de proteínas. A diferencia de los anabolizantes sintéticos, los nucleótidos actúan a nivel celular, optimizando la capacidad del caballo para construir y mantener masa muscular de forma sana y segura. Es la elección perfecta para potros en crecimiento y para caballos de alto rendimiento que necesitan una recuperación muscular eficiente.
<br>
<br>
Óptima Salud Digestiva: Los nucleótidos aceleran la regeneración de las células intestinales. Esto no solo ayuda a combatir trastornos digestivos, sino que también promueve el crecimiento de las microvellosidades del intestino, lo que se traduce en una mayor superficie para la absorción de nutrientes. Un sistema digestivo más sano significa una mejor asimilación de su alimento.
<br>
<br>
Apoyo al Sistema Inmune: Al ser fundamentales para la producción de células inmunitarias, Prolyses refuerza las defensas naturales de tu caballo. Es ideal para situaciones de estrés, viajes, cambios de ambiente o convalecencia, ayudando al animal a mantenerse fuerte y resistente.|Ácido Glutámico, Inositol, Nucleótidos, Péptidos de Levadura. Aceite Vegetal, Harinilla de Trigo. Propionato de Calcio.|La dosificación recomendada es de 50 gramos por caballo al día. Prolyses se administra de manera oral, en forma individual o mezclado con el alimento. |Producto disponible en baldes de 3 y 6 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Mantener fuera del alcance de niños y animales.
<br>
<br>
Seguir estrictamente las dosis recomendadas. No exceder la dosis diaria sugerida sin la supervisión de un veterinario.
<br>
<br>
Si observa alguna reacción adversa, suspenda su uso y consulte a un médico veterinario.
<br>
<br>
<b>Producto exclusivo para uso en caballos. No apto para consumo humano.</b>','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","288px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (210,'VITESEL ORGÁNICO','QP - 282','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Vitesel Orgánico es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina E, Selplex ® (Selenio Orgánico). Gluten Meal, Harinilla de Trigo, Maíz. Propionato de Calcio.|1 kg de Vitesel Orgánico, aporta:
|La dosificación recomendada de Vitesel Orgánico es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA E|30.000 UI","SELENIO|12 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (211,'JOINT PLUS','QP - 585','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Joint Plus es un nutracéutico peletizado para caballos, desarrollado para el soporte y mantenimiento de la salud articular. Su fórmula avanzada está especialmente indicada para caballos con desgaste articular, atletas equinos y aquellos con una alta exigencia física.
<br>
<br>
<b>Beneficios Clave del Producto</b>
<br>
<br>
La potente combinación de sus componentes actúa sinérgicamente para ofrecer una solución integral para las articulaciones de tu caballo:
<br>
<br>
Acción Reparadora y Protectora del Cartílago: El sulfato de glucosamina y el sulfato de condroitina son los componentes estructurales clave del cartílago. Actúan en conjunto para estimular la síntesis de nuevos cartílagos y proteger los existentes del deterioro, mejorando la funcionalidad y elasticidad de las articulaciones.
<br>
<br>
Fortalecimiento de Tendones y Ligamentos: La Vitamina C (ácido ascórbico) es un cofactor esencial en la producción de colágeno, la proteína fundamental para la formación y reparación de tejidos conectivos como tendones y ligamentos. Esto contribuye a la estabilidad y resistencia de toda la estructura articular.
<br>
<br>
Mejora de la Movilidad y Flexibilidad: Al reparar y proteger el cartílago, Joint Plus contribuye a reducir las molestias asociadas a los problemas articulares, permitiendo una mayor fluidez y rango de movimiento.
<br>
<br>
Fácil de Administrar: Su formato peletizado facilita la incorporación en la ración diaria del caballo, asegurando una dosificación precisa y sin rechazo.|Vitamina C, Condroitina Sulfato, Glucosamina Sulfato. Aceite Vegetal, Harina de Trigo, Maíz, Melaza en Polvo. Propionato de Calcio.|1 kg de Joint Plus, aporta:
|La dosificación recomendada de Joint Plus para caballos con movilidad reducida es de 200 gramos por caballo al día, durante 1 semana, para luego reducir a una dosis de mantención de 100 gramos diarios. Joint Plus se administra de manera oral, en forma individual o mezclado con el alimento. |Producto disponible en baldes de 3 y 6 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.
|Mantener fuera del alcance de los niños y animales.
<br>
<br>
Seguir estrictamente las dosis recomendadas. No exceder la dosis diaria sugerida sin la supervisión de un veterinario.
<br>
<br>
Si observa alguna reacción adversa, suspenda su uso y consulte a un médico veterinario.
<br>
<br>
<b>Producto exclusivo para uso en caballos. No apto para consumo humano.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA C (ÁCIDO ASCORBICO)|50 g","CONDROITINA|200 g","GLUCOSAMINA|100g"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","280px","0px","0px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (212,'BLOCK HORSE','QP - 55','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Block Horse es un suplemento mineral compacto y altamente palatable, diseñado para el suministro a libre disposición (ad libitum) en equinos de todas las edades y categorías (potros, yeguas gestantes, caballos de deporte y mantención).
<br>
<br>
Su fórmula avanzada incorpora una matriz mixta de macro-minerales esenciales y una carga estratégica de minerales orgánicos de alta biodisponibilidad (Zinc, Cobre, Cobalto, Manganeso, Selenio). Gracias a su base de melaza, asegura una ingesta voluntaria adecuada, corrigiendo los desbalances nutricionales típicos de las dietas basadas en forrajes o pastos, y proporcionando los electrolitos necesarios para la rehidratación y el funcionamiento neuromuscular.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Integridad de Cascos y Calidad de Pelaje: La inclusión de Zinc, Cobre y Manganeso en forma orgánica garantiza una absorción superior que impacta directamente en la síntesis de queratina. Esto promueve cascos más duros y resistentes a grietas, además de un pelaje brillante y sano, reduciendo problemas podales y dermatológicos.
<br>
<br>
Protección Antioxidante y Recuperación Muscular: La combinación de Vitamina E con Selenio Orgánico crea una potente barrera antioxidante. Este dúo es crucial para prevenir el daño muscular tras el ejercicio (azoturia o "enfermedad de los lunes"), mejorar la respuesta inmune del caballo ante el estrés y favorecer la fertilidad en yeguas y sementales.
<br>
<br>
Reposición Electrolítica y Reducción del Estrés (Bienestar Animal): Block Horse aporta un perfil completo de electrolitos (Sodio, Potasio, Magnesio) vitales para recuperar las pérdidas por sudoración y mantener el equilibrio hídrico. Además, el formato de bloque sólido satisface el instinto natural de lamido, lo que ayuda a reducir el aburrimiento y el estrés en caballos estabulados (previendo vicios como la aerofagia).
|Vitaminas: A, D3, E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Potasio, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Calcio, Sulfato de Cobre, Sulfato de Magnesio, Sulfato de Manganeso, Yodato de Calcio. Availa-4 ® (Zinc orgánico + Cobre + Cobalto + Manganeso), Selplex ® (Selenio Orgánico). Melaza en Polvo.|1 kg de Block Horse aporta:
|Dejar a libre disposición de los animales.
<br>
<br>
Consumo promedio: Los caballos suelen autorregular su consumo, con una dosis habitual de 30 a 50 gramos por animal al día.
<br>
<br>
Ubicación: Ubicar bloques en un lugar de fácil acceso para el caballo, preferiblemente cercano a una fuente de agua. Se recomienda ubicar el bloque sobre una superficie que lo separe del suelo y lo proteja de la humedad.|Producto disponible en cajas de cartón con un peso aproximado de 7 kg.|Almacenar en un lugar fresco, seco y bien ventilado, protegido de la luz solar directa y la humedad excesiva. Mantener en el envase original, bien cerrado, hasta su uso.|24 meses (2 años) desde su fecha de fabricación, si se mantiene en las condiciones de almacenamiento recomendadas.|Mantener fuera del alcance de niños y animales.
<br>
<br>
No utilizar si el producto muestra signos de deterioro o el empaque está dañado.
<br>
<br>
Se recomienda consultar con un médico veterinario o nutricionista animal para un plan de suplementación adecuado a las necesidades específicas de cada caballo.
<br>
<br>
<b>Producto de uso exclusivo para equinos.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|200.000 UI","VITAMINA D3|100.000 UI","VITAMINA E|2.500 UI","CALCIO|70 g","FÓSFORO|30 g ","MAGNESIO|16 g","POTASIO|52 g","COBALTO |19 mg","COBRE|1.300 g","HIERRO|1.2 g","MANGANESO|2.4 g","SELENIO|15 mg","YODO|43 mg","ZINC|3.6 g","AVAILA - 4 |2.500 mg","SELENIO ORGÁNICO|10 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","384px","0px","0px","0px","364px","0px"],"rowsxtable":["10","10","8","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (213,'BLOCK OVINO','QP - 57','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Block Ovino es un suplemento nutricional compacto, formulado para satisfacer los requerimientos de macro y microminerales, así como de vitaminas A, D3 y E, en ovinos de cría, recría y engorda. Su fórmula, que utiliza fuentes de alta biodisponibilidad, está diseñada para complementar la alimentación diaria y asegurar una nutrición balanceada y completa.
<br>
<br>
<b>Beneficios Clave:</b>
<br>
<br>
Mejora de la condición corporal y eficiencia reproductiva: Aumenta la tasa de preñez y optimiza la capacidad reproductiva de las ovejas.
<br>
<br>
Aumento en la producción de leche: Mantiene una producción de leche elevada y de calidad.
<br>
<br>
Promoción de la salud de crías: Favorece el nacimiento de corderos más sanos y con mayor peso.
<br>
<br>
Fortalecimiento general: Contribuye a mejorar el pelaje, la salud de las pezuñas y de las glándula mamarias.|Vitamina A, Vitamina D3, Vitamina E, Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Calcio, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Melaza en Polvo.|1 kg de Block Ovino aporta:
|Distribuir 1 bloque de Block Ovino por cada 15 a 20 animales.
<br>
<br>
Ubicación: Colocar los bloques en lugares de fácil acceso para el rebaño, preferiblemente cerca de las fuentes de agua.
<br>
<br>
Consumo promedio: Los animales autorregularán su consumo en un lapso de 2 semanas, con un promedio de 30 a 50 gramos por animal al día.|Producto disponible en cajas de cartón con un peso aproximado de 7 kg.|Almacenar en un lugar fresco, seco y bien ventilado, protegido de la luz solar directa y la humedad. Mantener el envase original cerrado para preservar la calidad del producto.|24 meses (2 años) desde su fecha de fabricación, si se siguen las condiciones de almacenamiento recomendadas.|Mantener fuera del alcance de niños.
<br>
<br>
No utilizar si el producto muestra signos de deterioro o el empaque está dañado.
<br>
<br>
Se recomienda consultar a un médico veterinario o nutricionista animal para una dosificación más precisa, adaptada a las necesidades específicas de su rebaño.
<br>
<br>
<b>Uso exclusivo para alimentación animal.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|50.000 UI","VITAMINA D3|10.000 UI","VITAMINA E|500 UI","CALCIO|60 g","FÓSFORO|25 g ","MAGNESIO|20 g","COBALTO |13 mg","HIERRO|1.500 mg","MANGANESO|1.380 mg","SELENIO|8 mg","YODO|55 mg","ZINC|1.500 mg"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","340px","0px","0px","0px","0px"],"rowsxtable":["10","10","6","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (214,'POTENZA MASSIMA','QP - 199','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Potenza Massima es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Carnitina, Creatina, Taurina. Alfafa, Harinilla de Trigo, Maíz Molido. Propionato de Calcio.|1 kg de Potenza Massima, aporta:
|La dosificación recomendada de Potenza Massima es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CREATINA|150 g","CARNITINA|60 g","TAURINA|15 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (215,'ENERGY HORSE ','QP - 109','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','<b>Energy Horse</b> es un suplemento nutricional en formato de pellets, diseñado para potenciar el rendimiento físico de los caballos. Su fórmula avanzada, rica en energía y baja en almidón, complementa la dieta diaria, asegurando una fuente de energía sostenida para actividades de alta exigencia. Es ideal para caballos que necesitan un impulso extra en su desempeño, ya sean de deporte, trabajo o simplemente para mejorar su condición física general.
<br>
<br>
<b>Beneficios clave:</b>
<br>
<br>
Alta energía y bajo almidón: Aporta la energía necesaria sin los riesgos de trastornos digestivos asociados a dietas altas en granos.
<br>
<br>
Fórmula rica en grasas vegetales: Ofrece una fuente de energía concentrada, mejorando la resistencia y la recuperación muscular.
<br>
<br>
Antioxidantes esenciales: El Selenio orgánico y la Vitamina E protegen las células del estrés oxidativo, fortaleciendo el sistema inmunológico del caballo.
<br>
<br>
Equilibrio de electrolitos: Contiene cloruro de sodio y potasio para reponer los electrolitos perdidos durante el ejercicio, ayudando a prevenir la deshidratación y calambres.
<br>
<br>
Barrera Física y Microbiota (Levadura de Cerveza): Aporta prebióticos que nutren la flora benéfica, mejorando la digestión de la fibra y estabilizando el pH del intestino posterior.
<br>
<br>
Manano Oligosacaridos (MOS) y Beta-glucanos: funciona como un "imán" que atrapa bacterias patógenas (como Salmonella o E. coli) impidiendo que atraviesen la pared intestinal, a la vez que mantiene al sistema inmune "alerta" pero no inflamado.
<br>
<br>
Control del Cortisol (Cromo): El Cromo orgánico ha demostrado reducir los niveles de cortisol (hormona del estrés) en sangre. Un caballo menos estresado quema menos reservas innecesariamente y mantiene mejor su peso.|Fosfato Bicálcico, Lisina HCL, Selenio orgánico, Cromo Orgánico, Cloruro de Sodio, Cloruro de Potasio, Levadura de cerveza, Inmunoestimulantes (Manano Oligosacaridos (MOS) y Beta-glucanos), Aceite Vegetal, Harina de Soya, Harinilla de Trigo, Maíz, Melaza en Polvo. Propionato de Calcio.|Valores referenciales:
|Se recomienda utilizar 1 o 2 kilos por animal al día, según el nivel de energía requerido y acorde a indicaciones de médico veterinario o nutricionista.|Producto disponible en sacos de polietileno de 20 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.| 12 meses en las condiciones de almacenamiento previamente descritas.|Mantener fuera del alcance de niños y animales.
<br>
<br>
Seguir estrictamente las dosis recomendadas. No exceder la dosis diaria sugerida sin la supervisión de un veterinario.
<br>
<br>
Si observa alguna reacción adversa, suspenda su uso y consulte a un médico veterinario.
<br>
<br>
<b>Producto exclusivo para uso en caballos. No apto para consumo humano.</b>','false|false|true|false|false|false|false|false','[[],[],["PROTEINA CRUDA|&#8804;  12%","GRASA |&#8804;  14%","FIBRA DE CRUDA |&ge;  15%","ENERGÍA DIGESTIBLE|&#8804;  3,0 Mcal/kg","CALCIO|1,50 - 2.00%","FÓSFORO|1,00 - 1,50%","LISINA HCL|&#8804;  0,7%"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","312px","0px","0px","0px","364px","0px"],"rowsxtable":["10","10","7","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (216,'AGUA OXIGENADA','QP - 010','DESCRIPCIÓN|COMPOSICIÓN|INSTRUCCIONES DE USO|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Peróxido de Hidrógeno (H2O2), comúnmente conocido como agua oxigenada, es una solución acuosa de un compuesto inorgánico. se presenta como una solución de 10 volúmenes, lo cual es una concentración de uso común y relativamente segura. Es un líquido claro, incoloro e inodoro (o con un olor característico muy ligero) que actúa como un agente oxidante, neutralizante y decolorante.
<br>
<br>
Gracias a sus propiedades antisépticas, desodorantes y desinfectantes, el Peróxido de Hidrógeno 10 volúmenes tiene diversas aplicaciones en el ámbito veterinario y de cuidado animal:
<br>
<br>
Antiséptico y Desinfectante Tópico: Utilizado para la limpieza de heridas superficiales, abrasiones y cortes en animales. Su acción efervescente ayuda a remover suciedad y detritos, liberando oxígeno que es ligeramente antimicrobiano. No debe usarse en heridas profundas o quirúrgicas.
<br>
<br>
Inducción del Vómito (Emesis): En casos de ingestión reciente de ciertas sustancias tóxicas por perros o gatos (siempre bajo supervisión veterinaria y solo si la toxina lo permite), el peróxido de hidrógeno puede usarse para inducir el vómito. Este uso debe ser estrictamente guiado y dosificado por un médico veterinario.
<br>
<br>
Limpieza de Oídos: Puede ser útil en la limpieza de oídos de perros y gatos para remover cerumen y detritos, generalmente diluido o en soluciones comerciales específicas para este fin.
<br>
<br>
lanqueo y Desodorización: Utilizado para eliminar manchas orgánicas y olores en pelajes claros de animales, o para la desinfección y desodorización de jaulas, perreras y superficies en instalaciones veterinarias, siempre con un enjuague adecuado.
<br>
<br>
Hemostático Menor: Puede ayudar a detener pequeñas hemorragias capilares en cortes menores.|Peróxido de Hidrógen (H2O2): Aproximadamente 3% p/p (equivalente a 10 volúmenes).
<br>
<br>
Agua c.s.p.100%.
<br>
<br>
Ácido Fosfórico: Estabilizador.
<br>
<br>
Fenacetina: Estabilizador.|Este producto está diseñado para uso externo. La aplicación debe realizarse siempre con guantes y siguiendo las indicaciones específicas del fabricante, las recomendaciones de un médico veterinario o las guías de uso profesional. Asegúrese de utilizar la concentración adecuada para cada aplicación con el fin de evitar daños en la piel o mucosas.|Producto disponible en botellas de 1 L.|Conservar en su envase original bien cerrado, en un lugar fresco y seco a no más de 25°C, protegido de la luz solar directa y la humedad. Almacenar alejado de materiales incompatibles como metales pesados, álcalis, agentes reductores, materiales orgánicos fácilmente oxidables y calor excesivo. Evitar el contacto directo con el suelo.|36 meses desde su fecha de fabricación  en las condiciones de almacenamiento previamente descritas.|El Peróxido de Hidrógeno 10 volúmenes es para uso externo. Evitar al máximo el contacto con los ojos, ya que puede causar irritación y daño ocular severo. Evitar su ingestión, ya que puede causar irritación digestiva y ulceración. Usar siempre la concentración adecuada al tipo de trabajo que vaya a realizarse, ya que un exceso de concentración o un uso prolongado puede causar irritación cutánea o daños químicos en la piel y mucosas.
<br>
<br>
Uso externo exclusivamente. No aplicar en zonas extensas de la piel, en heridas profundas, cavidades corporales cerradas o en animales muy sensibles sin supervisión veterinaria.
<br>
<br>
Equipo de Protección Personal (EPP) Recomendado:
<br>
Utilice guantes de protección.
<br>
Utilice protección ocular (gafas de seguridad).
<br>
<br>
En caso de ingestión accidental: Enjuague la boca con agua. NO INDUZCA EL VÓMITO. Beba abundante agua o leche. Busque atención médica inmediatamente.
<br>
<br>
En caso de contacto con los ojos: Lave inmediata y abundantemente con agua durante al menos 15 minutos, manteniendo los párpados abiertos. Si usa lentes de contacto, quítelos si es fácil hacerlo. Busque atención médica inmediatamente.
<br>
<br>
En caso de contacto con la piel: Lave la zona afectada con abundante agua y jabón suave. Si la irritación persiste, busque atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","344px","0px","0px","0px","572px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (217,'ÁCIDO FÓLICO','QP - 667','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Ácido Fólico, o vitamina B9, es un aditivo nutricional de alta pureza, esencial para el metabolismo de los aminoácidos y la síntesis de ácidos nucleicos (ADN y ARN). Es crucial para el correcto desarrollo celular y el crecimiento de los tejidos. Suplementar la dieta animal con ácido fólico previene deficiencias que pueden llevar a anemia, problemas de crecimiento y disminución de la productividad. Se presenta como un polvo cristalino de color amarillo, amarillo-parduzco o amarillo-anaranjado, inodoro. Cumple con los estándares de calidad para aditivos nutricionales en alimentación animal, según el Reglamento (CE) 1831/2003, para todas las especies.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 59-30-3
<br>
Fórmula química: C19H19N7O6|Ácido Fólico 96%, en base anhidra.|La dosificación debe ajustarse según la especie animal, la edad, el estado fisiológico y las recomendaciones de un especialista en nutrición animal.|Producto disponible en cajas de cartón de 25 kg con bolsa plástica interior y en bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco, seco y oscuro, a temperaturas inferiores a los 25 °C. Proteger de la luz solar directa, la humedad y el calor excesivo para mantener su estabilidad. Mantener envases cerrados.|El producto tiene una vida útil de 3 años a partir de la fecha de fabricación, siempre y cuando se almacene en su envase original y bajo las condiciones de almacenamiento recomendadas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.
','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","376px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (218,'BENTONITA','QP - 043','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Bentonita Sódica es un aditivo nutricional de origen mineral, compuesto principalmente por montmorillonita sódica. Este mineral de arcilla se caracteriza por una alta capacidad de hinchamiento e intercambio iónico. 
<br>
<br>
<b>Identificación del producto:</b>
<br>
Número CAS:1302-78-9
<br>
<br>
En nutrición animal, se utiliza como un adsorbente de toxinas, especialmente de las micotoxinas presentes en los alimentos contaminados, lo que ayuda a prevenir problemas de salud y rendimiento en los ganado y aves. También actúa como un agente aglutinante en la fabricación de pellets, mejorando la durabilidad del alimento y reduciendo el desperdicio.|Valores referenciales:|La dosis recomendada varía según la especie, la edad del animal y el nivel de contaminación de micotoxinas en el alimento. Es aconsejable consultar con un nutricionista animal para determinar la dosis óptima en cada formulación.|Producto disponible en bolsas de polipropileno de 25 kg.|Almacenar en un lugar seco y fresco, a temperatura ambiente. Mantener los envases cerrados y alejados de la humedad, ya que el producto es higroscópico.|La Bentonita Sódica, al ser un mineral estable, no tiene una fecha de caducidad si se almacena correctamente. Se recomienda utilizar dentro de un período de 4 años para asegurar sus propiedades óptimas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|true|false|false|false|false|false','[[],["DIÓXIDO DE SILICIO|59 - 68%","ÓXIDO DE ALUMINIO|15 - 25%","ÓXIDO DE HIERRO|1 - 4 %","ÓXIDO DE MAGNESIO|0,7 - 1,5%","ÓXIDO DE CALCIO|2,0 - 3,5%","ÓXIDO DE SODIO|0,1 - 0,5%","ÓXIDO DE POTASIO|1,8 - 2,5%","PLOMO|&#8804; 30 ppm"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","292px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (219,'BICARBONATO DE SODIO','QP - 044','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Bicarbonato de Sodio es una sal cristalina en polvo, de color blanco y ligeramente alcalina, altamente soluble en agua. Se utiliza como un aditivo nutricional esencial para animales, principalmente como un agente buffer y una fuente de electrolitos. Su función principal es regular el pH del sistema digestivo, especialmente en el rumen de los rumiantes, y mantener el balance electrolítico en aves y cerdos, lo que favorece el rendimiento y la salud animal.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 144-55-8
<br>
Fórmula química: NaHCO3|99% Bicarbonato de Sodio.|La dosis debe ser determinada por un médico veterinario o nutricionista, considerando la especie, la fase de crecimiento y las condiciones de manejo.|Producto disponible en bolsas de polietileno de 25 kg y bolsas de polietileno de 1 kg.|Almacenar en un lugar fresco y seco, lejos de la luz solar directa y de fuentes de calor. Mantener el envase bien cerrado para proteger el producto de la humedad y evitar la formación de grumos.|24 meses desde su fecha de fabricación en las condiciones de almacenamiento descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","0px","296px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (220,'BIOTINA','QP - 50','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Biotina, también conocida como Vitamina B7, es una vitamina esencial del grupo B que actúa como una coenzima en diversas funciones metabólicas. Se clasifica como un aditivo nutricional para alimentos, según el Reglamento (CE) 1831/2003. Su principal función en nutrición animal es mejorar el crecimiento, la salud de la piel y las pezuñas, y optimizar el uso de grasas, carbohidratos y proteínas en la dieta.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 58-85-5
<br>
Fórmula química: C10H16N2O3S|Biotina al 2%. Excipiente: Dextrina.|La dosis debe ser ajustada por un médico veterinario o nutricionista, considerando la especie, la fase de crecimiento y las necesidades nutricionales específicas de la dieta.|Producto disponible cajas de cartón de 25 kg con bolsa interior y bolsas de 1 kg.
|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa. Evitar el contacto directo con el suelo. Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. Mantener un adecuado control de plagas en el lugar de almacenamiento.
|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","392px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (221,'BLOCK ANTICOX','QP - 652','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Block Anticox es un bloque compacto que aporta minerales, vitaminas, prebióticos y aceites esenciales como el Carvacrol y el Timol, ingredientes activos que ayudan eficazmente a controlar la coccidiosis en bovinos, ovinos y caprinos.
<br>
<br>
La coccidiosis es una enfermedad parasitaria intestinal causada por protozoos intracelulares. Los animales se infectan al consumir los ooquistes esporulados que contaminan el alimento, el agua o el pasto. Los síntomas clínicos más comunes son diarrea sanguinolenta, deshidratación y pérdida de peso.
<br>
<br>
El Carvacrol y el Timol, presentes en este producto, son ingredientes activos de origen natural que han demostrado tener potentes funciones antioxidantes, antibacterianas, antimicóticas y antiparasitarias. Varios estudios avalan su capacidad para controlar y disminuir la población de ooquistes de Eimeria (huevos de coccidia) en rumiantes, ya que no son absorbidos ni metabolizados en el intestino, lo que mantiene su actividad a lo largo del tracto digestivo.|Carvacrol, Timol. Vitamina A, Vitamina D3, Vitamina E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Manganeso, Yodato de Calcio, Sulfato de calcio. Levadura de Cerveza.|1 kg de Block Anticox aporta:


|Bovinos: Consumo de 50 a 100 gramos diarios por animal.
<br>
<br>
Ovinos y Caprinos: Consumo de 20 a 50 gramos diarios por animal. La dosis final debe ser ajustada por un médico veterinario o nutricionista, según las necesidades específicas.|Producto disponible en cajas de cartón de 10 kilos.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla con el fin de proteger vías respiratorias, ojos y piel de posibles olores intensos provenientes del Timol y Carvacrol.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.
','false|false|true|false|false|false|false|false','[[],[],["CARVACROL|1.135 mg","TIMOL|285 mg","VITAMINA A|500.000 UI","VITAMINA D3|200.000 UI","VITAMINA E|2.000 UI","CALCIO|107 g","CLORO|195 g","FÓSFORO|33 g","MAGNESIO|40 g","SODIO|125 g","COBALTO|168 mg","MANGANESO|1.790 mg","SELENIO| 36 mg","YODO|44 mg","ZINC|2.880 mg"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","288px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (222,'BLOCK ANTIMETEORISMO','QP - 51','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (223,'BLOCK CAPRINO','QP - 52','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Block Caprino es un bloque nutricional compacto, formulado para satisfacer los requerimientos de macro y microminerales, así como de vitaminas A, D3 y E, en caprinos de todas las edades y fases productivas. Su fórmula, basada en fuentes de alta biodisponibilidad, está diseñada para complementar la alimentación diaria y asegurar una nutrición completa.
<br>
<br>
Su uso habitual contribuye a mejorar significativamente la salud y el rendimiento de los animales. Entre sus beneficios destacan:
<br>
<br>
Mejora de la condición corporal y reproductiva: Aumenta la eficiencia reproductiva y la tasa de preñez.
<br>
<br>
Aumento en la producción de leche: Mantiene una producción elevada y de calidad.
<br>
<br>
Mejora de la salud de crías: Favorece el nacimiento de chivos más sanos y con mayor peso.
<br>
<br>
Fortalecimiento general: Mejora el pelaje, la salud de las pezuñas y de las glándulas mamarias.|Vitamina A, Vitamina D3, Vitamina E, Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Calcio, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Melaza en Polvo.|1 kg de Block Caprino aporta:

|Distribuir 1 bloque de Block Caprino por cada 15 a 20 animales.
<br>
<br>
Ubicación: Colocar los bloques en lugares de fácil acceso para el rebaño, preferiblemente cerca de las fuentes de agua y de saladeros.
<br>
<br>
Consumo inicial: Durante las primeras dos semanas, el consumo puede variar hasta que los animales se acostumbren al producto. El consumo promedio esperado es de 30 a 50 gramos por animal al día.|Producto disponible presenta en cajas de cartón con un peso aproximado de 7 kilos.|Almacenar el producto en un lugar fresco, seco y bien ventilado, protegido de la luz solar directa y de la humedad. Mantener el envase original cerrado para preservar la calidad.|La vida útil estimada del producto es de 24 meses desde su fecha de fabricación, siempre y cuando se sigan las condiciones de almacenamiento recomendadas.|Mantener fuera del alcance de niños.
<br>
<br>
No utilizar si el producto presenta signos de deterioro o el empaque está dañado.
<br>
<br>
Consultar a un médico veterinario o nutricionista animal para una dosificación más precisa, adaptada a las necesidades específicas de su rebaño.
<br>
<br>
<b>Uso exclusivo para alimentación animal.</b>','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|50.000 UI","VITAMINA D3|10.000 UI","VITAMINA E|500 UI","CALCIO|&ge;  56 g","FÓSFORO|&ge;  28 g","MAGNESIO|&ge;  120 g","COBALTO|13 mg","HIERRO|1.500 mg","MANGANESO|1.380 mg","SELENIO|8 mg","YODO|55 mg","ZINC|1.500 mg"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","336px","0px","0px","0px","0px"],"rowsxtable":["10","10","6","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (224,'BLOCK MAGNESIADO','QP - 56','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Block Magnesiado es un bloque nutricional compacto, formulado para complementar la dieta del ganado bovino de lechería, con especial énfasis en las necesidades de la zona sur de Chile. Su fórmula se caracteriza por su alta concentración de magnesio, un mineral esencial para prevenir la hipomagnesemia (tetania de los pastos), una condición común en animales que pastorean en praderas con bajo contenido de este mineral.|Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Calcio, Sulfato de Cobre, Sulfato de Manganeso, Yodato de Calcio|1 kg de Block Magnesiado aporta:


|Dejar a libre disposición de los animales para que regulen su consumo.
<br>
<br>
Consumo promedio: El consumo diario puede variar entre 50 y 100 gramos por animal, dependiendo del tamaño y la etapa de desarrollo.
<br>
<br>
Ubicación: Colocar los bloques sobre una superficie que los separe del suelo y en un lugar protegido de la lluvia. Deben estar siempre cerca de los bebederos.
<br>
<br>
Distribución: Distribuir los bloques de manera uniforme en el área de pastoreo para evitar sobrepastoreo en zonas específicas.|Producto disponible en cajas de cartón con un peso aproximado de 10 kg.|Almacenar en un lugar fresco, seco y ventilado, alejado de luz solar directa y humedad. Mantener el empaque original cerrado para preservar la calidad del producto.|24 meses (2 años) desde la fecha de fabricación, manteniendo las condiciones de almacenamiento recomendadas.|Mantener fuera del alcance de niños y animales.
<br>
<br>
No utilizar si el producto muestra signos de deterioro o si el empaque ha sido dañado.
<br>
<br>
Se recomienda consultar con un médico veterinario o nutricionista animal para un plan de suplementación adecuado.
<br>
<br>
<b>Producto de uso exclusivo para alimentación animal.</b>','false|false|true|false|false|false|false|false','[[],[],["CALCIO|30 g","FÓSFORO|12 g","MAGNESIO|130 g","POTASIO|1 g","COBALTO|16 mg","COBRE|740 mg","HIERRO|2 g","MANGANESO|960 mg","SELENIO|36 mg","YODO|28 mg","ZINC|2 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","452px","0px","0px","0px","484px"],"rowsxtable":["10","10","11","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (226,'L - CARNITINA','QP - 68','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La L - Carnitina (Tartrato de Carnitina) es un suplemento nutricional en polvo, diseñado para mejorar el metabolismo energético y el rendimiento productivo en diversas especies animales. Actúa como un transportador de ácidos grasos hacia las mitocondrias celulares, donde se convierten en energía, lo que lo convierte en un aliado clave en la nutrición animal.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 541-15-1
<br>
Fórmula química: C7H15NO3-C4H6O6
<br>
<br>
<b>Principales aplicaciones en nutrición animal:</b>
<br>
<br>
Mejora del rendimiento: Optimiza la producción de energía, lo que se traduce en un mejor desempeño en aves, cerdos, bovinos, peces y otros animales de producción.
<br>
<br>
Conversión alimenticia: Favorece un uso más eficiente de los nutrientes, mejorando la conversión del alimento en peso corporal.
<br>
<br>
Salud muscular: Promueve el desarrollo y la salud muscular, al mismo tiempo que reduce la fatiga en los animales.
<br>
<br>
Control de grasa: Ayuda a reducir la acumulación de grasa corporal, contribuyendo a la producción de carne más magra.|98% Tartrato de Carnitina.|La dosis recomendada debe ser determinada por un veterinario o un profesional en nutrición animal, ajustada según la especie, la etapa productiva y las necesidades específicas de la formulación del alimento.|Producto disponible en bolsas aluminizadas de 1 kg y en sacos de 25 kg, envasados en una doble bolsa de polietileno (LDPE).|Para mantener la calidad y eficacia del producto, se recomienda almacenar el envase en un lugar <b>fresco (idealmente entre 10°C y 25°C), seco y protegido de la luz solar directa.</b>
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto este envase, debe sellarse de manera hermética o transferir el contenido a un recipiente con cierre seguro. 
<br>
<br>
Mantener un estricto control de plagas en el área de almacenamiento.|24 meses a partir de la fecha de fabricación, siempre y cuando se sigan las condiciones de almacenamiento recomendadas.|Para manipular este producto, se recomienda:
<br>
<br>
- Protección Personal: guantes, gafas de seguridad y mascarilla (para polvo) para proteger vías respiratorias, ojos y piel de posibles irritaciones causadas por partículas.
<br>
- Ventilación: Trabajar con el producto en un área con buena ventilación.
<br>
- Higiene: Lavar manos cuidadosamente con agua y jabón después de cada uso.
<br>
- Primeros Auxilios (Contacto Ocular): En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
- Seguridad: Mantener producto fuera del alcance de los niños y animales.
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","364px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (227,'CLORURO DE CALCIO 77%','QP - 79','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Cloruro de Calcio es un compuesto inorgánico con una pureza del 77%, presentado en forma de escamas. Es un producto altamente higroscópico, lo que le permite absorber la humedad del ambiente de manera muy eficiente. Debido a esta propiedad, se utiliza en una amplia variedad de aplicaciones, principalmente como desecante y como agente de deshielo.
<br>
<br>
En nutrición animal, se emplea como suplemento mineral para aportar calcio, un nutriente esencial para la formación de huesos y la salud metabólica.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 10043-52-4 
<br>
Fórmula química: CaCl2|Cloruro de Calcio (77% mínimo), Cloruro de Sodio (5% máximo), Cloruro de Magnesio (1,5% máximo), Sulfato de Calcio (0,07% máximo).|La dosificación varía significativamente según la aplicación.
<br>
<br>
Nutrición animal: Debe ser determinada por un veterinario o nutricionista, ya que la cantidad necesaria dependerá de la especie, el peso del animal y la deficiencia de calcio que se desee corregir.
<br>
<br>
Aplicaciones industriales: Las dosis se ajustan de acuerdo con el uso específico (por ejemplo, como descongelante o en control de polvo).|Producto disponible en sacos de polietileno (PE) o polipropileno (PP). |Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|El Cloruro de Calcio puede ser irritante para la piel y los ojos, por lo tanto utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar existe irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","300px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (228,'CLORURO DE COLINA 70%','QP - 491','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Cloruro de Colina 70% es un aditivo ampliamente utilizado en nutrición animal. Es considerado una vitamina del complejo B, vital para el correcto desarrollo y metabolismo de los animales. Se utiliza como un suplemento nutricional para prevenir deficiencias de colina y optimizar el rendimiento zootécnico en diversas especies. Su principal función es actuar como donador de grupos metilo y precursor de fosfolípidos, componentes cruciales de las membranas celulares y las lipoproteínas. Esto lo convierte en un factor lipotrópico que evita la acumulación de grasa en el hígado, previniendo el síndrome de hígado graso.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 67-48-1
<br>
Fórmula química: C5H14ClNO|Cloruro de colina al 70%. Excipiente: Cascarilla de maíz.|La dosificación varía según la especie y la fase de producción. Se recomienda consultar a un médico veterinario zootecnista o nutricionista para determinar la dosis adecuada.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP). |Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación.
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","336px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (229,'CREATINA MONOHIDRATADA','QP - 98','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Creatina Monohidratada es un ácido orgánico nitrogenado que se produce de forma natural en el hígado, los riñones y el páncreas. Es un suplemento de alta pureza diseñado para optimizar el rendimiento y el desarrollo muscular en animales. Su principal función es promover la síntesis de proteínas gracias a su capacidad para hidratar las células musculares, facilitando la retención de iones como el nitrógeno.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 6020-87-7
<br>
Fórmula química: C4H9N3O2-H2O
<br>
<br>
<b>Principales aplicaciones en nutrición animal:</b>
<br>
<br>
Aumento de la potencia muscular y la resistencia: Sirve como una fuente de energía rápida y disponible para el ejercicio muscular intenso.
<br>
<br>
Incremento de la masa muscular: La hidratación celular facilita un mayor volumen muscular.
<br>
<br>
Recuperación más rápida: Ayuda a reponer la energía muscular de manera eficiente tras el ejercicio.
<br>
<br>
Mejora de la composición corporal: Contribuye a una mayor masa magra en el animal.|Creatina Monohidratada al 99%|La creatina se administra de forma oral, mezclada directamente con el alimento. La dosis recomendada varía según la especie y el peso del animal:
<br>
<br>
Caballos: 20 a 25 gramos por día.
<br>
Perros: 3 a 5 gramos por día.
<br>
<br>
Para determinar la dosis exacta y un plan de suplementación adecuado, se recomienda consultar con un médico veterinario.
|Producto disponible en sacos de polietileno (PE) o polipropileno (PP) de 25 kg y en bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación.
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","312px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (230,'CREOLINA','QP - 100','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Creolina es un desinfectante general derivado de la destilación del alquitrán de hulla, indicado para la desinfección de jaulas, corrales, vehículos de transporte, pediluvios.
<br>
<br>
Posee una acción bactericida, Antifúngica y Viricida, también es efectivo contra algunos parásitos como las garrapatas. Indicado además para la higienización de baños, urinarios, cloacas, pozos sépticos, cámaras de retención y basurales.|Ortocresol, Metacresol, Paracresol, Xiloles y Emulgentes.|Higienización normal: 1,5 litros por cada 100 litros de agua. 
<br>
<br>
Desinfección de superficies contaminadas: 3-5 litros por cada 100 litros de agua.
<br>
<br>
Pediluvios: 1,5 litros por cada 100 litros de agua.
<br>
<br>
Vehículos: 1,5 litros por cada 100 litros de agua.|Producto disponible en botellas de 1 litro y bidones de 20 litros.|Almacenar en un lugar fresco, seco y bien ventilado. Mantener el envase herméticamente cerrado.
<br>
<br>
Evitar la exposición directa a la luz solar y fuentes de calor.
<br>
<br>
Almacenar separado de bases fuertes, oxidantes y materiales combustibles.
<br>
<br>
Utilizar sistemas de contención adecuados para evitar derrames.|La vida útil del producto es de 24 meses a partir de la fecha de fabricación, siempre y cuando se almacene bajo las condiciones recomendadas y el envase permanezca sellado.|Evitar contacto: Producto tóxico.
<br>
<br>
No ingerir ni inhalar los vapores. 
<br>
<br>
Evitar el contacto con piel, ojos y mucosas. En caso de contacto, lavar con abundante agua.
<br>
<br>
Usar protección: Manipular siempre con guantes, gafas de seguridad y mascarilla en áreas ventiladas.
<br>
<br>
Almacenar  en su envase original, bien cerrado, alejado de niños, mascotas y alimentos.
<br>
<br>
Primeros auxilios: En caso de emergencia, buscar atención médica de inmediato y mostrar la hoja de seguridad del producto.
<br>
<br>
No mezclar: Nunca combinar la Creolina con otros productos químicos.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","288px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (231,'DEXTROSA MONOHIDRATADA','QP - 550','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Dextrosa Monohidratada, también conocida como Glucosa Monohidrato o Azúcar de Maíz, es un carbohidrato simple derivado del almidón. Se presenta como un polvo cristalino blanco con una alta solubilidad en agua. Dada su estructura química, es una fuente de energía rápida y fácilmente asimilable por el organismo, ya que no requiere una digestión compleja antes de ser absorbida.
<br>
<br>
En nutrición animal, la Dextrosa Monohidratada se utiliza principalmente en alimentos extruidos de perros y gatos para proporcionar una fuente de energía de rápida  disponibilidad y para mejorar la palatabilidad del alimento. También se utiliza como “Vehículo” o excipiente para mejorar la aceptación de otros ingredientes o medicamentos en la dieta.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 5996-10-1
<br>
Fórmula química: C6H12O6&middot;H2O|99% Dextrosa Monohidratada.|Valores referenciales:


|La dosificación de Dextrosa Monohidratada debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de la especie animal.|Producto disponible en sacos doble de LDPE de 25 kg (capa interna: película PE / capa externa: película PE).|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa. Evitar el contacto directo con el suelo. Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. Mantener un adecuado control de plagas en el lugar de almacenamiento.| 24 meses en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.
','false|false|true|false|false|false|false|false','[[],[],["HUMEDAD |9,0 - 9,5%","PROTEINA|&#8764;0%","GRASA|&#8764;0%","CENIZAS|&lt; 0.1%","FIBRA|&#8764;0%","CARBOHIDRATOS|90 - 91%"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","384px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (232,'FOSFATO BICÁLCICO','QP - 120','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Fosfato Bicálcico es un suplemento mineral ampliamente utilizado en nutrición animal. Se presenta como un polvo fino de color blanco a gris claro, con baja solubilidad en agua y alta biodisponibilidad de calcio y fósforo. Es una fuente esencial de estos minerales para el desarrollo óseo, la función muscular y el metabolismo energético en animales de producción y mascotas.
<br>
<br>
<b>Identificación del producto:</b>
<br>
Número CAS: 7757-93-9
<br>
Fórmula química: CaHPO4|Fosfato Bicálcico (98% mínimo), Humedad (2% máximo), Fluoruro (0,18% máximo), Arsénico (3 ppm máximo), Plomo (10 ppm máximo), Cadmio (1 ppm máximo).|Valores referenciales:


|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que depende de la especie, etapa productiva (crecimiento, gestación, lactancia), y requerimientos nutricionales específicos. Generalmente, se incorpora en premezclas o alimentos balanceados en proporciones que aseguren una relación adecuada de calcio y fósforo.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP) de 25 kg y en bolsas de polietileno de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), seco, bien ventilado y protegido de la luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Mantener el envase bien cerrado después de su apertura para prevenir absorción de humedad.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|El Fosfato Bicálcico no es tóxico en condiciones normales de uso, pero puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda usar gafas de seguridad y mascarilla durante la manipulación.
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
Uso exclusivo para animales: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["FÓSFORO|18% MIN","CALCIO|26% MIN"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","336px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (233,'GLICERINA','QP - 125','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (234,'GLUTAMATO MONOSÓDICO','QP - 753','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Glutamato Monosódico es un compuesto orgánico en forma de polvo cristalino fino, de color blanco e inodoro, ampliamente utilizado en nutrición animal como potenciador del sabor y palatabilizador en alimentos balanceados. Actúa estimulando los receptores del gusto umami, mejorando la aceptación y consumo voluntario de alimento, especialmente en etapas críticas como el destete en cerdos o en dietas con ingredientes de baja palatabilidad.
<br>
<br>
<b>Identificación del producto</b>
<br>
<br>
Número CAS: 142-47-2  
<br>
Fórmula química: C5H8NO4Na  |Glutamato Monosódico 99%.
|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, la etapa productiva y el objetivo nutricional. |Producto disponible en sacos de polietileno (PE) o polipropileno (PP) de  25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.  
<br>
<br>
Evitar el contacto directo con el suelo.  
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.  
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento. |24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.  |El Glutamato Monosódico no es tóxico en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo.
<br>
<br>
Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br> 
Manipular en zona con buena ventilación.
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.  
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.  
<br>
<br>
Mantener fuera del alcance de niños y animales.
','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","304px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (235,'GLUTEN MEAL','QP - 129','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Gluten Meal es un producto de alto valor proteico y energético, obtenido a partir del gluten de maíz. Se presenta como un polvo de color amarillo oscuro. 
<br>
<br>
Es una fuente concentrada de proteínas y energía, lo que lo convierte en un ingrediente valioso en la formulación de dietas para diversas especies animales.
<br>
<br>
Principales usos en nutrición animal:
<br>
<br>
Nutrición animal directa: Puede ser incorporado directamente en la dieta de los animales como un suplemento proteico y energético.
<br>
<br>
Materia prima para elaboración de alimentos: Es un componente clave en la fabricación de alimentos balanceados, contribuyendo a mejorar el perfil nutricional de los piensos.|100% Gluten Meal.|Valores referenciales:


|La dosificación de Gluten Meal varía según la especie animal, la etapa productiva y los requerimientos nutricionales específicos de la dieta. Se recomienda consultar a un nutricionista animal para determinar la inclusión óptima en la formulación del alimento.|El producto se suministra en sacos de polipropileno de 25 kilogramos.|Para asegurar la calidad y eficacia del producto, se aconseja almacenar los sacos en un lugar fresco (idealmente entre 10°C y 25°C), seco y protegido de la luz solar directa. Es fundamental evitar el contacto directo con el suelo. Una vez abierto, el envase debe sellarse herméticamente o transferir su contenido a un recipiente con cierre seguro para prevenir la exposición al aire y la humedad. Mantener un estricto control de plagas en el área de almacenamiento es crucial.|24 meses a partir de la fecha de fabricación, bajo las condiciones de almacenamiento recomendadas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["PROTEÍNA CRUDA|&#8804; 60.0","GRASA CRUDA|&#8804; 2.5","FIBRA CRUDA|&ge; 2.0","HUMEDAD|&ge; 10.0","CENIZAS|&ge; 1.5"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","292px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (236,'HARINA DE SOYA','QP - 134','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Harina de Soya, también conocida como Torta de Soya, es un subproducto altamente valorado que se obtiene del procesamiento del poroto de soya, específicamente después de la extracción de su aceite. Este ingrediente es fundamental en la industria de la nutrición animal, reconocido por su alto contenido de proteína de excelente calidad biológica y su destacada palatabilidad, lo que lo convierte en una fuente proteica clave en la formulación de piensos para diversas especies. Su perfil de aminoácidos es equilibrado, aportando los aminoácidos esenciales necesarios para el crecimiento y desarrollo óptimo de los animales.
<br>
<br>
Usos y aplicaciones en nutrición animal: La Harina de Soya es un componente indispensable en las dietas de:
<br>
<br>
Aves (Pollos de engorde y Ponedoras): Principal fuente de proteína por su alta digestibilidad y valor nutricional, crucial para el crecimiento rápido y la producción de huevos.
<br>
<br>
Cerdos (Lechones, Cerdas y Cerdos de engorde): Proporciona la proteína y aminoácidos esenciales necesarios para el desarrollo muscular y la eficiencia alimenticia en todas las fases productivas.
<br>
<br>
Bovinos (Lecheros y de Carne): Complementa la dieta con proteína de alta calidad, mejorando la producción de leche y la ganancia de peso.
<br>
<br>
Acuicultura (Peces y Camarones): Es una fuente proteica competitiva y de alta digestibilidad en dietas para acuicultura.
<br>
<br>
Mascotas (Perros y Gatos): Utilizada en alimentos balanceados por su aporte proteico y palatabilidad.|100% Harina de Soya.|Valores referenciales:


|La Harina de Soya se incluye en las formulaciones de alimentos balanceados como la principal fuente de proteína. La dosificación (porcentaje de inclusión en la dieta) dependerá de:
<br>
<br>
Especie y fase productiva del animal: Los requerimientos de proteína varían significativamente entre lechones, pollos de engorde, vacas lecheras, peces, etc.
<br>
<br>
Requerimientos nutricionales específicos: Basados en las tablas de formulación y los objetivos de rendimiento.
<br>
<br>
Disponibilidad y costo de otras fuentes proteicas: Puede combinarse con otras materias primas para optimizar la relación costo-beneficio.
<br>
<br>
Ejemplos de rangos de inclusión (valores orientativos y no exhaustivos):
<br>
<br>
Aves: Puede oscilar entre 20% y 40% o más de la dieta total.
<br>
<br>
Cerdos: Frecuentemente entre 15% y 35% de la dieta, con variaciones por fase.
<br>
<br>
Bovinos: Rangos amplios dependiendo del tipo de ración, desde 5% hasta 25% como complemento proteico.
<br>
<br>
Siempre se recomienda la consulta con un nutricionista animal para una formulación precisa y optimizada.|Producto disponible en sacos de polipropileno de 25 kg.|Almacenar en un lugar fresco, seco y bien ventilado, protegido de la luz solar directa y de la humedad. Es crucial evitar la formación de moho y la degradación de nutrientes. Mantener el producto alejado de plagas y roedores. Se recomienda evitar el contacto directo con el suelo.|8 meses desde la fecha de fabricación, bajo condiciones de almacenamiento adecuadas. Una humedad excesiva o altas temperaturas pueden reducir significativamente este periodo.|Alérgenos: La soya es un alérgeno conocido en humanos y, en algunos casos, puede causar sensibilidad en animales.
<br>
<br>
Humedad: Extremadamente sensible a la humedad, lo que puede favorecer el crecimiento de hongos y la producción de micotoxinas. Monitorear los niveles de
<br>
<br>
Manipulación: Se recomienda el uso de equipo de protección personal básico (guantes, mascarilla) si se manipulan grandes volúmenes en espacios cerrados, debido al polvo.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["HUMEDAD|11%","MATERIA GRASA|2.3%","FIBRA CRUDA|3.9%","CENIZAS|6.8%","PROTEÍNA CRUDA|46% - 48%"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","264px","0px","0px","0px","280px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (237,'LEVADURA DE CERVEZA INACTIVA','QP - 148','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Levadura de Cerveza Inactiva es un producto natural derivado de las células de <i>Saccharomyces cerevisiae</i>, obtenidas mediante un proceso de fermentación y secado por pulverización (spray dry). Se presenta como un polvo sólido de color beige. Este ingrediente es altamente valorado en nutrición animal, no solo por su rico perfil nutricional, que incluye un alto contenido de proteínas y una excelente fuente de vitaminas del complejo B, sino también por sus propiedades inmunoestimulantes y como promotor de crecimiento. Su inherente alta palatabilidad la convierte en un aditivo fácilmente aceptado en diversas formulaciones de piensos.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 8013-01-2
<br>
<br>
<b>Aplicaciones en nutrición animal:</b>
<br>
<br>
La Levadura de Cerveza Inactiva se incorpora en dietas de una amplia gama de especies para mejorar la salud general y el rendimiento:
<br>
<br>
Fuentes de proteína y vitaminas: Complementa la dieta con proteínas de alto valor biológico y un espectro completo de vitaminas B (B1, B2, B3, B5, B6, B7, B9, B12), esenciales para el metabolismo energético, la función nerviosa y la salud de la piel y el pelaje.
<br>
<br>
Estimulante inmunológico: Los componentes de la pared celular (como los beta-glucanos y los manano-oligosacáridos o MOS) actúan como prebióticos y pueden modular el sistema inmunológico, mejorando la resistencia a enfermedades y la respuesta a vacunaciones.
<br>
<br>
Promotor de crecimiento: Al mejorar la salud intestinal y la inmunidad, contribuye indirectamente a una mejor absorción de nutrientes y a un crecimiento más eficiente.
<br>
<br>
Mejora de la palatabilidad: Su sabor característico la hace un excelente saborizante natural para incrementar el consumo de alimento en animales selectivos o bajo estrés.
<br>
<br>
Salud digestiva: Los MOS también pueden aglutinar patógenos en el intestino, reduciendo su adhesión a la pared intestinal y mejorando el equilibrio de la microbiota.|100% Levadura de cerveza inactiva.|Valores referenciales:


|La dosificación de Levadura de Cerveza Inactiva varía según la especie animal, la fase productiva y los objetivos específicos (ej. mejora de la inmunidad, suplemento nutricional, palatabilidad). Se recomienda consultar con un médico veterinario o zootecnista para una inclusión óptima en la ración.|Producto disponible en sacos de polietileno y sacos de papel de 25 kilos.|Almacenar en un ambiente fresco, seco y protegido de la luz solar directa. Mantener el envase original herméticamente cerrado para evitar la absorción de humedad y la contaminación, lo cual podría afectar su calidad y vida útil.|18 meses desde la fecha de fabricación, en las condiciones de almacenamiento señaladas.|Manipulación: Se recomienda el uso de equipo de protección personal básico (guantes, mascarilla) si se manipulan grandes volúmenes en espacios cerrados, para evitar la inhalación de polvo.
<br>
<br>
Humedad: Es sensible a la humedad, lo que puede causar aglomeración y degradación del producto. Asegurar un almacenamiento adecuado es fundamental.
<br>
<br>
Calidad: Adquirir el producto de proveedores confiables para garantizar su pureza y la ausencia de contaminantes.
<br>
<br>
Alérgenos: Aunque no es común, algunas sensibilidades pueden existir.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["HUMEDAD|&lt;  8%","MATERIA GRASA|&lt;  1%","FIBRA|&lt;  1%","CENIZAS|&lt;  6%","PROTEÍNA BRUTA|40 - 45%","ENERGÍA|350 kcal/100 g","SODIO|40 mg/100 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","312px","0px","0px","0px","0px","348px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (238,'LISINA HCL','QP - 150','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Lisina HCL, o  L-Lisina Monoclorhidrato, es un aminoácido esencial de vital importancia en nutrición animal. Especialmente en la producción de piensos para aves, cerdos y ganado y mascotas.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 657-27-2
<br>
Fórmula química: C6H14N2O2&middot;HCl
<br>
<br>
<b>Aplicaciones en nutrición animal:</b>
<br>
<br>
Mejora la eficiencia alimenticia: La lisina es un aminoácido esencial "limitante", lo que significa que su falta restringe la capacidad del animal para utilizar otras proteínas en la dieta. Al suplementar con lisina HCl, se optimiza la absorción y el aprovechamiento de todos los demás nutrientes, lo que resulta en una mejor conversión del alimento en peso o en producto (leche, huevos).
<br>
<br>
Promueve el crecimiento y desarrollo: Al ser un componente crucial en la síntesis de proteínas, la lisina HCl favorece el crecimiento muscular, el desarrollo óseo y el aumento de peso de forma más rápida y eficiente.
<br>
<br>
Reduce costos: Permite a los productores utilizar ingredientes proteicos más económicos (como la harina de maíz en lugar de la harina de soya) sin comprometer el crecimiento del animal, lo que reduce significativamente los costos de alimentación.
<br>
<br>
Mejora la calidad del producto final: Contribuye a mejorar la calidad de la carne, la producción de leche y la calidad de la cáscara y la yema de los huevos en aves ponedoras.
<br>
<br>
Refuerza el sistema inmunitario: Ayuda a la producción de anticuerpos y otras proteínas vitales para el funcionamiento del sistema inmunológico, lo que aumenta la resistencia a enfermedades.|98,5% L-Lisina Monoclorhidrato (mínimo). Contenido de L-Lisina: &ge;78,8% (mínimo).|La dosificación de L-Lisina HCL debe ajustarse según los requerimientos nutricionales específicos de cada especie animal, etapa productiva y formulación de la dieta. Se recomienda consultar con un nutricionista animal o médico veterinario para determinar la cantidad óptima a incluir en la ración.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa. Evitar el contacto directo con el suelo. Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. Mantener un adecuado control de plagas en el lugar de almacenamiento.|La vida útil de la L-Lisina HCL es de 2 años (24 meses) a partir de la fecha de fabricación, siempre y cuando se almacene en su empaque original y bajo las condiciones recomendadas.|Manipule el producto en un área bien ventilada.
<br>
<br>
Evite el contacto directo con la piel y los ojos. En caso de contacto, lave con abundante agua.
<br>
<br>
Evite la inhalación del polvo. Utilice equipo de protección personal adecuado (mascarilla, guantes) si se prevé la generación de polvo.
<br>
<br>
Mantenga el empaque bien cerrado cuando no esté en uso para evitar la absorción de humedad.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","272px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (239,'DL - METIONINA','QP - 156','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La DL - Metionina es un aminoácido esencial de suma importancia en nutrición animal. Es uno de los dos aminoácidos que contienen azufre (el otro es la cisteína) y juega un rol crucial en diversas funciones metabólicas. Como aditivo esencial para nutrición animal, la DL - Metionina es fundamental para el crecimiento, la producción de proteínas, la síntesis de tejidos, la función inmunológica y el metabolismo de las grasas.
<br>
<br>
Se presenta como un polvo cristalino de color blanco a amarillo pálido, con un olor característico y un sabor ligeramente dulce.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 59-51-8
<br>
Fórmula química: C5H11NO2S
<br>
<br>
<b>Aplicaciones en nutrición animal:</b>
<br>
<br>
Su inclusión en las dietas de animales de producción, incluyendo aves, cerdos, ganado bovino y peces, es vital para asegurar que se alcancen los requerimientos nutricionales específicos y se maximice la eficiencia productiva, ya que es el primer aminoácido limitante en muchas dietas. Entre sus funciones más conocidas, destacan:
<br>
<br>
- Ganancia de peso y eficiencia alimenticia.
<br>
- Óptimo desarrollo de plumaje, huesos y articulaciones.
<br>
- Donante de grupos metilo para la síntesis de colina y creatina.
<br>
- Precursor de otros aminoácidos proteicos como la cisteína.
<br>
- Función antioxidante y de desintoxicación.|99% DL-Metionina.|La cantidad recomendada de metionina debe ser adicionada al alimento según los requerimientos nutricionales particulares de cada especie y etapa fisiológica. La dosificación exacta dependerá de la formulación de la dieta, el tipo de animal (aves, cerdos, bovinos, peces) y los objetivos de producción. Se aconseja seguir las guías de nutrición animal o consultar a un especialista en formulación de dietas.|Producto disponible en sacos de papel de 25 kg y en bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa. Evitar el contacto directo con el suelo. Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. Mantener un adecuado control de plagas en el lugar de almacenamiento.|5 años (60 meses) a partir de su fecha de elaboración en las condiciones de almacenamiento descritas.|Manipule el producto en un área bien ventilada.
<br>
<br>
Evite el contacto directo con la piel y los ojos. En caso de contacto, lave con abundante agua.
<br>
<br>
Evite la inhalación del polvo. Utilice equipo de protección personal adecuado (mascarilla, guantes) si se prevé la generación de polvo.
<br>
<br>
Mantenga el empaque bien cerrado cuando no esté en uso para evitar la absorción de humedad.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","300px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (240,'NIACINA','QP - 167','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina B3, también conocida como Niacina o ácido nicotínico, es una vitamina del complejo B en forma de polvo cristalino fino, de color blanco a ligeramente amarillento, soluble en agua. En nutrición animal, desempeña un papel esencial en el metabolismo energético, la síntesis de ácidos grasos y la función enzimática. Es particularmente importante en aves, cerdos y rumiantes para mantener un crecimiento óptimo, la salud de la piel y la eficiencia alimenticia.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 59-67-6
<br>
Fórmula química: C6H5NO2|99% Niacina.|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de producción. |Producto disponible en sacos de polietileno (PE) o polipropileno (PP) de 25 kg y en bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
Evitar el contacto directo con el suelo.
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Niacina no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. 
<br>
<br>
Se recomienda:
<br>
<br>
Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación.
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","340px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (241,'ÓXIDO DE MAGNESIO','QP - 186','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Óxido de Magnesio  es un suplemento mineral en forma de polvo fino, de color blanco a crema, utilizado en nutrición animal como fuente de magnesio. El magnesio es un mineral esencial involucrado en más de 300 reacciones enzimáticas, incluyendo la función neuromuscular, la síntesis de proteínas y el metabolismo energético. En nutrición animal se utiliza comúnmente en rumiantes para prevenir la tetania por pastoreo (hipomagnesemia), y en aves y cerdos para asegurar un aporte adecuado de magnesio en dietas balanceadas.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 1309-48-4  
<br>
Fórmula química: MgO |Óxido de Magnesio (85% mínimo), Humedad (2% máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que depende de la especie, etapa productiva y requerimientos nutricionales específicos.
|Producto disponible en sacos de polipropileno de 25 kg y en maxisacos de 1.000 y 1.250 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), seco, bien ventilado y protegido de la luz solar directa.  
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|36 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.  |El Óxido de Magnesio no es altamente tóxico, pero el polvo puede causar irritación en ojos, piel y vías respiratorias. Se recomienda usar gafas de seguridad, guantes y mascarilla durante la manipulación.  
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.  
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica. 
<br>
<br>
Mantener fuera del alcance de niños y animales. 
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","320px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (242,'ÓXIDO DE ZINC','QP - 187','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Óxido de Zinc 72% es un suplemento mineral en forma de polvo fino, de color blanco a amarillento, utilizado en nutrición animal como fuente concentrada de zinc. El zinc es un oligoelemento esencial para la función inmunológica, la integridad de la piel y mucosas, la reproducción y el crecimiento. Este producto contiene un equivalente mínimo del 72% de zinc elemental (lo que corresponde aproximadamente a 89% de óxido de zinc puro). 
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 1314-13-2  
<br>
Fórmula química: ZnO |Óxido de Zinc (equivalente a 72% de zinc elemental), Humedad (1% máximo), Arsénico (3 ppm máximo), Plomo (10 ppm máximo), Cadmio (1 ppm máximo). |La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y los niveles basales de zinc en la dieta. Se utiliza ampliamente en cerdos destetados (en niveles farmacológicos temporales bajo supervisión), aves y rumiantes para prevenir deficiencias y mejorar la salud intestinal y el desempeño productivo.  |Producto disponible en sacos de polietileno (PE) o polipropileno (PP).  |Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.  
<br>
<br>
Evitar el contacto directo con el suelo.  
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.  
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.  |24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.  |El Óxido de Zinc no es altamente tóxico en niveles nutricionales, pero el polvo puede causar irritación en ojos, piel o vías respiratorias. Se recomienda utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.  
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.  
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar existe irritación, buscar atención médica.  
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b>
<br>
<br>
Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","440px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (243,'PANTOTENATO DE CALCIO','QP - 331','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina B5, en forma de Pantotenato de Calcio, es un compuesto del complejo B en polvo fino, de color blanco a ligeramente amarillento, higroscópico y soluble en agua. Es esencial en nutrición animal como precursor del ácido pantoténico, componente clave de la coenzima A, involucrada en el metabolismo de carbohidratos, grasas y proteínas. Contribuye al crecimiento, la síntesis de ácidos grasos, la salud de la piel y el rendimiento productivo en aves, cerdos y rumiantes.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 137-08-6
<br>
Fórmula química: C9H17CaN2O5|Pantotenato de Calcio 98% mínimo.|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de producción. Generalmente, se incorpora en premezclas vitamínicas o alimentos balanceados en concentraciones que varían entre 5 y 20 mg por kg de alimento, según las necesidades fisiológicas del animal.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP) y en bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|El Pantotenato de Calcio no es tóxico en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
Uso exclusivo para animales: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","464px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (244,'PERMANGANATO DE POTASIO','QP - 191','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (245,'PHOSBIC','QP - 194','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (246,'PROPILENGLICOL ','QP - 204','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (247,'PROPIONATO DE CALCIO','QP - 207','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Propionato de Calcio es un compuesto químico utilizado principalmente como un conservante eficaz y seguro en la industria de piensos y alimentos. Se presenta como un polvo cristalino de color blanco o ligeramente amarillo, y es el inhibidor de moho y bacterias por excelencia en piensos almacenados. Su acción fungicida y bactericida ayuda a prolongar la vida útil de los alimentos balanceados, previniendo el deterioro causado por la proliferación de microorganismos. Además de sus propiedades conservantes, el Propionato de Calcio también actúa como una fuente de calcio biodisponible, contribuyendo al fortalecimiento óseo y dental en animales de producción. Es ampliamente utilizado en piensos completos para aves, cerdos, bovinos, peces, perros y gatos, mejorando la calidad y seguridad alimentaria de las dietas.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 4075-81-4
<br>
Fórmula química: C6H10CaO4|98% Propionato de Calcio.|Las dosis de Propionato de Calcio deben ser definidas por un médico veterinario o un profesional de la nutrición animal. La cantidad a adicionar variará según las necesidades específicas de cada aplicación, el tipo de pienso, las condiciones de almacenamiento y el nivel de riesgo de contaminación microbiana.|Producto disponible en sacos de LDPE (con capa interna de película PE y capa externa de película PE) de 25 kg.|Para mantener la calidad y eficacia del producto, se debe almacenar en un lugar fresco (temperatura ?25°C), seco y bien ventilado. Es fundamental protegerlo de la luz solar directa y la humedad. El envase debe mantenerse bien cerrado después de cada uso para evitar la absorción de humedad.]|24 meses (2 años) a partir de la fecha de fabricación, siempre y cuando se almacene correctamente bajo las condiciones recomendadas.|Manipular el producto en un área bien ventilada para evitar la inhalación de polvo.
<br>
<br>
Se recomienda el uso de equipo de protección personal, como guantes y mascarilla, durante la manipulación.
<br>
<br>
Evitar el contacto directo con los ojos y la piel; en caso de contacto, enjuagar con abundante agua.
<br>
<br>
Mantener el envase cerrado y almacenado en las condiciones indicadas para evitar la absorción de humedad.
<br>
<br>
<b>Mantener fuera del alcance de niños y animales.</b>','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","300px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (248,'PROTEIN PLUS','QP - 208','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','|Vitamina A, Vitamina D3, Vitamina E. Bio-mos ® (Cepas de <i>Saccharomyces cereviciae</i>), Extracto de Alga <i>Chlorella Vulgaris</i>, Pared Celular de <i>Saccharomyces cerevisiae</i>, Zeolita, Nucleotidos, Yea Sacc ® (Probioticos de <i>Saccharomyces cereviciae</i>, Nupro ® (Nucleótidos). Availa ® - 4 (Zinc Organico + Cobre + Cobálto + Mangáneso), Carbonato de Calcio, Carbonato de Cobálto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Selplex ® (Selenito Organico), Sulfato de Cobre, Sulfato de Mangáneso, Yodato de Calcio. Lisina. Aceite de Maravilla, Gluten Meal, Harina de Soya, Harinilla de Trigo. Propionato de Calcio, Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT). |Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["VITAMINA A|100.000 UI","VITAMINA D3|20.000 UI","VITAMINA E|1.200 UI","CALCIO|33 g","CLORO|2,44 g","FOSFÓRO|16,2 g","MAGNESIO|6 g","SODIO|1,56 g","COBALTO|5 mg","COBRE|500 mg","MANGANESO|416 mg ","SELENIO|10,8 mg","YODO|55","ZINC|1.238","LISINA|20 g"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (249,'RELAX HORSE PLUS','QP - 217','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','|Triptófano. Carbonato de Calcio, Óxido de Magnesio, Sulfato Ferroso. Aceite Vegetal, Extracto de Malta, Harina de Trigo, Harina de Soya. Propionato de Calcio.|Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (250,'SUERO DE LECHE','QP - 231','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (251,'SULFATO DE CALCIO','QP - 514','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Sulfato de Calcio es un compuesto inorgánico en forma de polvo fino, de color blanco, ligeramente soluble en agua. En nutrición animal, se utiliza como fuente de calcio y azufre, dos minerales esenciales para la formación ósea, la síntesis de proteínas (vía aminoácidos sulfurados) y el equilibrio electrolítico. También se emplea como agente desecante en premezclas y como regulador de fluidez en mezclas minerales.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 7778-18-9 (forma anhidra)
<br>
Fórmula química: CaSO4|Sulfato de Calcio (95% mínimo), Humedad (2% máximo), Fluoruro (0,1% máximo), Arsénico (3 ppm máximo), Plomo (10 ppm máximo), Cadmio (1 ppm máximo).|Valores referenciales:


|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y los niveles basales de calcio y azufre en la dieta. Se incorpora comúnmente en premezclas minerales o alimentos balanceados, especialmente en dietas para rumiantes, aves y cerdos.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP).|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|El Sulfato de Calcio no es tóxico en condiciones normales de uso, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda usar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
Uso exclusivo para animales: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano','false|false|true|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","316px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (252,'SULFATO DE COBRE PENTAHIDRATADO','QP - 234','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Sulfato de Cobre Pentahidratado es un suplemento mineral en forma de cristales o polvo fino, de color azul brillante, ampliamente utilizado en nutrición animal como fuente de cobre, un oligoelemento esencial para la formación de hemoglobina, la función enzimática, la pigmentación del pelo y la salud inmunológica. Debido a su alta solubilidad en agua y buena biodisponibilidad, se incorpora en premezclas minerales y alimentos balanceados.  
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 7758-99-8
<br>
Fórmula química: CuSO4·5H2O  
|Sulfato de Cobre Pentahidratado (98% mínimo), Humedad (2% máximo, como agua de cristalización).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y los niveles basales de cobre en la dieta. El cobre es esencial en trazas, pero tóxico en exceso; por lo tanto, su inclusión debe ser precisa y controlada, especialmente en rumiantes, que son más sensibles a la acumulación de cobre hepático.  
|Producto disponible en sacos de polipropileno de 25 kg y en bolsas plásticas de 1 kg. |Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.  
<br>
<br>
Evitar el contacto directo con el suelo. 
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.  
|36 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.  
|El Sulfato de Cobre Pentahidratado es tóxico si se ingiere en exceso y puede causar irritación en ojos, piel y vías respiratorias. Se recomienda utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.  
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.  
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar existe irritación, buscar atención médica.  
<br>
<br>
Mantener fuera del alcance de niños y animales.  
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.
','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","468px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (253,'SULFATO DE MAGNESIO HEPTAHIDRATADO','QP - 466','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Sulfato de Magnesio Heptahidratado es un suplemento mineral en forma de cristales o polvo fino, de color blanco, altamente soluble en agua. Se utiliza en nutrición animal como fuente biodisponible de magnesio y azufre, elementos esenciales para el metabolismo energético, la función neuromuscular y la síntesis de proteínas. Debido a su alto contenido de agua de cristalización (7 moléculas), es más higroscópico que las formas monohidratadas, por lo que requiere condiciones de almacenamiento más secas.  
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 10034-99-8  
<br>
Fórmula química: MgSO4-7H2O  
|Sulfato de Magnesio Heptahidratado (98% mínimo), Humedad (2% máximo, como agua de cristalización), Arsénico (3 ppm máximo), Plomo (10 ppm máximo), Metales pesados (como Cd, Hg) (10 ppm máximo).  
|Valores referenciales:


|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y los niveles basales de magnesio en la dieta. Se emplea comúnmente en rumiantes para prevenir la tetania por pastoreo, y en aves y cerdos como suplemento en dietas deficientes en magnesio.  
|Producto disponible en sacos de polietileno (PE) o polipropileno (PP).  |Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.  
<br>
<br>
Evitar el contacto directo con el suelo.  
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.  
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento. 
|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.  
|El Sulfato de Magnesio Heptahidratado no es altamente tóxico, pero el polvo puede causar irritación leve en ojos, piel o vías respiratorias. Se recomienda utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.  
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar existe irritación, buscar atención médica.  
<br>
<br>
Mantener fuera del alcance de niños y animales.  
<br>
<br>
Uso exclusivo para animales: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.
','false|false|true|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","324px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (254,'TAURINA','QP - 245','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Taurina (ácido 2-aminoetanosulfónico), es un aminoácido no proteico, condicionalmente esencial, dependiendo de la especie animal, presentado como un polvo cristalino blanco. Es soluble en agua y estable bajo condiciones normales, aunque sensible a la humedad. En nutrición animal, la taurina es ampliamente reconocida por su rol fundamental en diversas funciones fisiológicas, siendo un aditivo nutricional crucial en piensos completos y suplementos.
<br>
<br>
<b>Identificación del producto:</b>
<br>
Número CAS: 107-35-7
<br>
Fórmula química: C2H7NO3S
<br>
<br>
<b>Principales aplicaciones en nutrición animal:</b> 
<br>
<br>
Aplicaciones específicas: Esencial para especies que no pueden sintetizar suficiente taurina de forma endógena, como los gatos, donde la deficiencia puede llevar a cardiomiopatía dilatada y degeneración retinal. También en ciertos peces, donde es crucial para el crecimiento y la salud general.
<br>
<br>
Piensos completos: Utilizada en la formulación de dietas para aves, cerdos, bovinos, peces (especialmente salmón y trucha) y otros animales de producción.
<br>
<br>
Suplementos nutricionales: Complementa las dietas para mejorar el rendimiento, la salud y la vitalidad de los animales.
<br>
<br>
<b>Beneficios:</b>
<br>
<br>
Salud cardiovascular y muscular: Contribuye al correcto funcionamiento del corazón y los músculos.
<br>
<br>
Sistema inmunológico: Fortalece las defensas del organismo.
<br>
<br>
Salud ocular y del sistema nervioso: Es vital para el desarrollo y mantenimiento de la visión y la función neurológica.
<br>
<br>
Desarrollo y función celular: Participa en la osmorregulación, la estabilización de membranas celulares y la conjugación de ácidos biliares.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<b>Propiedades físicas y químicas:</b>
<br>
<br>
Forma física: Polvo cristalino blanco
<br>
Pérdida por secado: &#8804;0.5%
<br>
Solubilidad: Soluble en agua, ligeramente soluble en etanol. Insoluble en solventes orgánicos no polares.
<br>
Densidad aparente: &#8764;0.4-0.6 g/cm3
<br>
Tamaño de partícula: &ge;97% pasa a través de un tamiz de 200 µm
|99% Taurina.|Las dosis de Taurina deben ser cuidadosamente definidas y ajustadas por un médico veterinario o profesional de la nutrición animal, basándose en las necesidades específicas de la especie, la fase productiva, el nivel de estrés, los objetivos de rendimiento y la composición general de la dieta.|Producto disponible cajas de cartón de 25 kg con bolsa interior y bolsas aluminizadas de 1 kg.
|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa. Evitar el contacto directo con el suelo. Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. Mantener un adecuado control de plagas en el lugar de almacenamiento.|36 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","0px","0px","0px","360px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (255,'L-TREONINA','QP - 249','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La L-Treonina es un aminoácido esencial en forma de polvo cristalino fino, de color blanco, con bajo olor característico. En nutrición animal, es un componente fundamental de las proteínas y un aminoácido limitante en dietas a base de cereales (especialmente maíz y sorgo). Su suplementación mejora el balance proteico, la eficiencia alimenticia, el crecimiento y la salud intestinal, ya que es precursor de mucinas, compuestos esenciales para la integridad de la mucosa digestiva. Es ampliamente utilizada en aves, cerdos y acuicultura.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 72-19-5
<br>
Fórmula química: C4H9NO3|Treonina (98.5% mínimo), Humedad (0.5% máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y la composición de la dieta base. Generalmente, se incorpora en premezclas aminoacídicas o alimentos balanceados en concentraciones que varían entre 1 y 5 kg por tonelada de alimento, ajustadas para cumplir con los requerimientos nutricionales específicos.|Producto disponible en sacos de 25 kg de polipropileno (PP).|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La L-Treonina no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.</b>','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","448px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (256,'TRIPTÓFANO','QP - 250','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Triptófano al 98% es un aminoácido esencial en forma de polvo cristalino fino, de color blanco a ligeramente amarillento, con bajo olor característico. En nutrición animal, es un precursor de la serotonina y la melatonina, compuestos clave para la regulación del comportamiento, el sueño, la respuesta al estrés y el apetito. Al ser un aminoácido limitante en dietas a base de cereales (especialmente maíz), su suplementación mejora el balance proteico, el crecimiento y la eficiencia alimenticia en aves, cerdos y rumiantes.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 73-22-3
<br>
Fórmula química: C11H12N2O21|Triptófano (98% mínimo), Humedad (0,5% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo), Metales pesados (como Cd, Hg) (5 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y la composición de la dieta base. Generalmente, se incorpora en premezclas aminoacídicas o alimentos balanceados en concentraciones que varían entre 0,5 y 2 kg por tonelada de alimento, ajustadas para cumplir con los requerimientos nutricionales específicos.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP).|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|El Triptófano no es tóxico en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
Uso exclusivo para animales: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","416px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (257,'VASELINA LÍQUIDA','QP - 255','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (258,'VASELINA SÓLIDA','QP - 341','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|INSTRUCCIONES DE USO|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','||Valores referenciales:


||||||','false|false|true|false|false|false|false|false|false','[[],[],["PROTEINA|40%"],[],[],[],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (259,'VITAMINA A','QP - 267','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina A 1.000.000 UI es una forma concentrada y estabilizada de acetato de retinilo, presentada como un polvo fino de color amarillo a marrón claro, con baja solubilidad en agua pero soluble en grasas. En nutrición animal, es esencial para la visión, la integridad de las mucosas, la función inmunológica, la reproducción y el crecimiento. Se utiliza ampliamente en aves, cerdos, rumiantes y acuicultura para prevenir deficiencias que pueden manifestarse como ceguera nocturna, infecciones recurrentes o baja fertilidad.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 68-26-8 (acetato de retinilo)
<br>
Fórmula química: C22H32O2|Vitamina A (como acetato de retinilo, equivalente a 1.000.000 UI/g mínimo), matriz portadora (almidón, sílice o goma arábiga), antioxidantes (como BHT o tocoferoles, 0,1% máximo), Humedad (5% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de producción. Generalmente, se incorpora en premezclas vitamínicas o alimentos balanceados en concentraciones que varían entre 2.000 y 10.000 UI por kg de alimento completo, ajustadas según las necesidades fisiológicas del animal.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP), con doble empaque interno para protección contra la humedad y la oxidación.|Almacenar en un lugar fresco (preferentemente entre 2°C y 8°C si es posible, o máximo 15°C), seco, oscuro y protegido de la luz solar directa y fuentes de calor.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar herméticamente o mantener en un recipiente opaco y hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Vitamina A no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Además, es sensible a la oxidación, por lo que debe evitarse la exposición prolongada al aire. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","400px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (260,'VITAMINA B1','QP - 329','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina B1, en forma de clorhidrato de tiamina, es un compuesto del complejo B en polvo cristalino fino, de color blanco a ligeramente amarillento, soluble en agua. En nutrición animal, es esencial para el metabolismo de carbohidratos, la transmisión nerviosa y la función cardíaca. Su deficiencia puede provocar pérdida de apetito, debilidad muscular, problemas neurológicos y disminución del crecimiento, especialmente en aves y cerdos.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 67-03-8
<br>
Fórmula química: C12H17ClN4OS|Clorhidrato de Tiamina (98% mínimo), Humedad (1% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo), Metales pesados (como Cd, Hg) (5 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de producción. Generalmente, se incorpora en premezclas vitamínicas o alimentos balanceados en concentraciones que varían entre 1 y 5 mg por kg de alimento completo, ajustadas según las necesidades fisiológicas del animal.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP).|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Vitamina B1 no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","448px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (261,'VITAMINA B12','QP - 273','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina B12 al 1% es una forma estabilizada de cianocobalamina en polvo fino, de color rojo oscuro a púrpura, soluble en agua. En nutrición animal, es esencial para la síntesis de ADN, la formación de glóbulos rojos, el metabolismo de aminoácidos y ácidos grasos, y el correcto funcionamiento del sistema nervioso. Es particularmente importante en aves, cerdos y rumiantes jóvenes, donde su deficiencia puede causar anemia, retraso en el crecimiento y trastornos neurológicos.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 68-19-9
<br>
Fórmula química: C63H88CoN14O14P|Cianocobalamina (1% mínimo, equivalente a 10.000 µg/g), matriz portadora (carbonato de calcio, sílice o almidón, 99% máximo), Humedad (5% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de producción. Generalmente, se incorpora en premezclas vitamínicas o alimentos balanceados en concentraciones que varían entre 10 y 50 µg por kg de alimento completo, ajustadas según las necesidades fisiológicas del animal.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP), con doble empaque interno para protección contra la luz y la humedad.|Almacenar en un lugar fresco (preferentemente entre 2°C y 8°C si es posible, o máximo 15°C), seco, oscuro y protegido de luz solar directa (la cianocobalamina es fotosensible).
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar herméticamente o mantener en un recipiente opaco y hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Vitamina B12 no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Debido a su color intenso, puede manchar superficies. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","416px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (262,'VITAMINA B2','QP - 274','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina B2 al 80% es un preparado estabilizado de riboflavina. Se presenta como polvo fino, de color amarillo intenso a naranjo, ligeramente soluble en agua. En nutrición animal, es esencial para el metabolismo energético, la síntesis de proteínas, la salud de la piel, la visión y la pigmentación de plumas y piel. Su deficiencia puede provocar dermatitis, crecimiento reducido, baja producción de huevos y alteraciones en la reproducción, especialmente en aves y cerdos.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 83-88-5
<br>
Fórmula química: C17H20N4O6|Riboflavina (80% mínimo), matriz portadora (almidón, sílice o carbonato de calcio, 20% máximo), Humedad (5% máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de producción. |Producto disponible en sacos de polietileno (PE) o polipropileno (PP) y en bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), seco, oscuro y protegido de luz solar directa (la riboflavina es fotosensible).
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar herméticamente o mantener en un recipiente opaco y hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Vitamina B2 no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Debido a su color intenso, puede manchar superficies y ropa. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","484px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (263,'VITAMINA B6','QP - 330','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina B6, en forma de clorhidrato de piridoxina, es un compuesto del complejo B en polvo cristalino fino, de color blanco a ligeramente amarillento, soluble en agua. En nutrición animal, desempeña un papel fundamental en el metabolismo de aminoácidos, la síntesis de proteínas, la función nerviosa y la producción de glóbulos rojos. Es esencial para el crecimiento, la reproducción y la respuesta inmunológica en aves, cerdos y rumiantes.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 65-23-6
<br>
Fórmula química: C8H11NO3-HCl|Clorhidrato de Piridoxina (98% mínimo), Humedad (1% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo), Metales pesados (como Cd, Hg) (5 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de producción. Generalmente, se incorpora en premezclas vitamínicas o alimentos balanceados en concentraciones que varían entre 1 y 5 mg por kg de alimento completo, ajustadas según las necesidades fisiológicas del animal.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP).|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Vitamina B6 no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","428px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (264,'VITAMINA C','QP - 276','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina C, en forma de ácido ascórbico al 97%, es un compuesto orgánico en polvo fino, de color blanco a ligeramente amarillento, soluble en agua y altamente sensible a la oxidación. En nutrición animal, actúa como antioxidante, potenciador inmunológico y cofactor enzimático esencial para la síntesis de colágeno, la absorción de hierro y la respuesta al estrés. Es especialmente utilizada en acuicultura, aves y cerdos durante períodos de estrés ambiental, transporte o enfermedad.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 50-81-7
<br>
Fórmula química: C6H8O6|Ácido Ascórbico (97% mínimo), Humedad (2% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo), Metales pesados (como Cd, Hg) (5 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de estrés o demanda fisiológica. Generalmente, se incorpora en alimentos balanceados o en agua de bebida en concentraciones que varían entre 100 y 500 mg por kg de alimento, ajustadas según las necesidades del animal.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP), con doble empaque interno para protección contra la humedad y la oxidación.|Almacenar en un lugar fresco (preferentemente entre 2°C y 8°C si es posible, o máximo 15°C), seco, oscuro y protegido de luz solar directa y fuentes de calor.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar herméticamente o mantener en un recipiente opaco y hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|El Ácido Ascórbico no es tóxico en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Debido a su alta reactividad, evitar contacto con metales oxidantes. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","420px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (265,'VITAMINA C 35% MONOFOSFATO','QP - 538','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina C Monofosfato (L-Ascorbil-2-Monofosfato) es una forma estabilizada y biodisponible de vitamina C, presentada como un polvo fino, de color blanco a ligeramente amarillento, soluble en agua y altamente resistente a la oxidación, el calor y la humedad en comparación con el ácido ascórbico puro. En nutrición animal, actúa como antioxidante, potenciador inmunológico y cofactor enzimático esencial para la síntesis de colágeno, la cicatrización de heridas y la respuesta al estrés. Es ampliamente utilizada en avicultura, acuicultura y cerdos, especialmente en dietas procesadas (extrusión, peletizado), donde el ácido ascórbico puro se degradaría.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 66746-27-8
<br>
Fórmula química: C6H6Na2O9P (sal sódica)|L-Ascorbil-2-Monofosfato (equivalente a 35% de ácido ascórbico activo mínimo), Humedad (5% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de estrés o demanda fisiológica. Generalmente, se incorpora en alimentos balanceados en concentraciones ajustadas para aportar entre 100 y 500 mg de ácido ascórbico equivalente por kg de alimento.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP), con doble empaque interno para protección contra la humedad.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), seco y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar herméticamente o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Vitamina C Monofosfato no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","404px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (266,'VITAMINA D3','QP - 270','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina D3 es una forma concentrada y estabilizada de colecalciferol, presentada como un polvo fino de color blanco a ligeramente amarillento. En nutrición animal, es esencial para la absorción intestinal de calcio y fósforo, la mineralización ósea, la función muscular y la respuesta inmunológica. Su deficiencia puede provocar raquitismo en animales jóvenes, osteomalacia en adultos, baja producción de huevos con cáscaras delgadas en aves y problemas reproductivos. Esta formulación contiene 500.000 Unidades Internacionales (UI) de vitamina D3 por gramo, estabilizada en una matriz portadora para uso seguro en premezclas y alimentos balanceados.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 67-97-0
<br>
Fórmula química: C27H44O|Vitamina D3 (como colecalciferol, equivalente a 500.000 UI/g mínimo), matriz portadora (almidón, sílice o carbonato de calcio), antioxidantes (como tocoferoles o BHT, 0,1% máximo), Humedad (5% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de producción.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP), con doble empaque interno para protección contra la luz, el oxígeno y la humedad.|Almacenar en un lugar fresco (preferentemente entre 2°C y 8°C si es posible, o máximo 15°C), seco, oscuro y protegido de luz solar directa y fuentes de calor (la vitamina D3 es sensible a la oxidación y la luz).
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar herméticamente o mantener en un recipiente opaco y hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Vitamina D3 no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Además, es altamente sensible a la oxidación, por lo que debe evitarse la exposición prolongada al aire. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","432px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (267,'VITAMINA E','QP - 271','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina E al 50% es una forma estabilizada de acetato de DL-alfa-tocoferol, presentada como un polvo fino de color blanco a crema, con baja solubilidad en agua y alta estabilidad frente al calor y la oxidación. En nutrición animal, actúa como antioxidante esencial que protege las membranas celulares del daño oxidativo, mejora la función inmunológica, la fertilidad, la calidad del semen y la integridad del músculo (especialmente en aves de engorde). Esta formulación contiene 50% de acetato de tocoferol activo en una matriz portadora inerte, lo que permite una dosificación precisa en premezclas y alimentos balanceados.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 7695-91-2
<br>
Fórmula química: C31H52O2|Acetato de DL-alfa-tocoferol (50% mínimo), matriz portadora (sílice, almidón o carbonato de calcio, 50% máximo), Humedad (5% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el nivel de estrés oxidativo. Generalmente, se incorpora en premezclas vitamínicas o alimentos balanceados en concentraciones que varían entre 20 y 200 mg de vitamina E por kg de alimento completo, ajustadas según las necesidades fisiológicas del animal.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP), con doble empaque interno para protección contra la humedad y la oxidación.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), seco y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar herméticamente o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Vitamina E no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","408px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (268,'VITAMINA K3','QP - 509','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Vitamina K3 MNB al 50% es una forma estabilizada y soluble en agua de menadiona, presentada como un polvo fino de color blanco a ligeramente amarillento. Corresponde al complejo Menadiona-Nicotinamida-Bisulfito (MNB), ampliamente utilizado en nutrición animal por su alta estabilidad, biodisponibilidad y baja irritación en comparación con la menadiona pura. Es esencial para la síntesis hepática de factores de coagulación (II, VII, IX, X) y proteínas óseas. Su deficiencia puede provocar hemorragias, sangrado excesivo, baja viabilidad en polluelos y problemas reproductivos. Esta formulación contiene 50% del complejo activo MNB, diluido en una matriz portadora para uso seguro en premezclas y alimentos balanceados.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 73581-79-0
<br>
Fórmula química: C17H16N2O6S|Menadiona Nicotinamida Bisulfito – MNB (50% mínimo, equivalente a ~25% de menadiona activa), matriz portadora (almidón o sílice, 50% máximo), Humedad (5% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el riesgo de trastornos hemorrágicos. Generalmente, se incorpora en premezclas vitamínicas o alimentos balanceados en concentraciones que varían entre 0,5 y 2 mg de menadiona por kg de alimento completo, ajustadas según las necesidades fisiológicas del animal.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP), con doble empaque interno para protección contra la humedad y la oxidación.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), seco y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar herméticamente o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|La Vitamina K3 MNB no es tóxica en niveles nutricionales, pero el polvo puede causar irritación leve en ojos o vías respiratorias por exposición al polvo. Se recomienda utilizar gafas de seguridad y mascarilla durante la manipulación.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","344px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (269,'ZEO - PRO (ZEOLITA)','QP - 531','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Zeo - Pro es un producto natural y altamente eficaz, diseñado específicamente como adsorbente de micotoxinas para la nutrición animal. Este aditivo no nutricional actúa en el tracto digestivo de los animales, capturando y neutralizando diversas micotoxinas presentes en los alimentos y raciones. Al adsorber estas sustancias tóxicas, ZEO - PRO ayuda a prevenir los efectos negativos de las micotoxicosis, mejorando la salud intestinal, el rendimiento productivo y el bienestar general de los animales. Es apto para ser incorporado en las dietas de diversas especies y categorías animales.
<br>
<br>
<b>Identificación del producto:</b>
<br>
Número CAS: 12173-10-3|100% de zeolita rosada molida tipo clinoptilolita.
<br>
<br>
Valores referenciales:|La dosificación de Zeo - Pro debe ser determinada por un médico veterinario o un especialista en nutrición animal, quienes evaluarán las necesidades específicas de cada caso, considerando la especie, la categoría animal y el nivel de riesgo de contaminación por micotoxinas en el alimento.|Producto disponible en sacos de polipropileno de 25 kg.|Para preservar la calidad y eficacia de Zeo - Pro, se recomienda almacenarlo bajo techo, en un lugar fresco, seco y bien ventilado. Es crucial evitar la exposición directa a la humedad y a fuentes de contaminación.|5 años a partir de su fecha de elaboración, siempre y cuando se mantenga en las condiciones de almacenamiento recomendadas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|true|false|false|false|false|false','[[],["DIÓXIDO DE SILICIO\t |66,05%","ÓXIDO DE ALUMINIO|13,2%","ÓXIDO DE HIERRO|0,87%","ÓXIDO DE TITANIO|0,17%","ÓXIDO DE MAGNESIO|0,04%","ÓXIDO DE CALCIO|0,01%","ÓXIDO DE SODIO|1%","ÓXIDO DE POTASIO|2,84%","ÓXIDO DE AZUFRE|4%","CIC meq/g|1,3","PH|8","HUMEDAD|7% - 10%","MALLA|200"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","316px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (270,'CARBONATO DE CALCIO QP','QP - 67','DESCRIPCIÓN|CARACTERÍSTÍCA QUÍMICAS|CARACTERÍSTICAS FÍSICAS|GRANULOMETRÍA|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Carbonato de Calcio es un aditivo nutricional producido a partir de Conchuela natural de alta pureza. Su proceso de fabricación no incluye tratamientos térmicos, y es finamente molido a malla 40 (400 micrones), asegurando una granulometría óptima para una mezcla homogénea y una excelente biodisponibilidad.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 471-34-1
<br>
Fórmula química: CaCO3
<br>
<br>
En nutrición animal, su principal objetivo es aportar calcio, cuya presencia es indispensable para mejorar el rendimiento y la salud de diversas especies. En porcinos, es fundamental para un adecuado desarrollo esquelético, siendo vital durante las fases de gestación, lactancia y crecimiento. Para el ganado bovino, es un aditivo clave que ayuda a prevenir enfermedades carenciales como osteoporosis, raquitismo, osteomalacia y osteobrosis, contribuyendo al crecimiento, la gestación y otras funciones vitales y productivas. Asimismo, satisface las altas demandas de calcio de aves, especialmente en ponedoras activas, promoviendo la formación de cáscaras resistentes y el bienestar general del plantel. En Salmones tiene un rol crucial para el desarrollo y mantenimiento de huesos y cartílagos fuertes y saludables, especialmente en las etapas de crecimiento rápido de los salmones, desde alevines hasta peces en engorda.|||100% entre malla Tyler #3 y #6 (5,0 mm)|La dosificación del Carbonato de Calcio debe ser establecida por un nutricionista o especialista en nutrición animal, considerando la especie, la etapa productiva, los requerimientos específicos y la formulación total de la dieta. |Producto disponible en sacos de 25 kg y en maxisacos de 1.000 kg.|Almacenar en un lugar fresco, seco y bien ventilado, sobre pallets y protegido de luz solar directa. Mantener el envase herméticamente cerrado para prevenir la absorción de humedad y la contaminación.|60 meses desde la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Para manipular este producto, se recomienda:
<br>
<br>
Utilizar equipo de protección personal: guantes, gafas de seguridad y mascarilla (para polvo) para proteger vías respiratorias, ojos y piel de posibles irritaciones causadas por partículas.
<br>
<br>
Trabajar en un área con buena ventilación.
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de cada uso.
<br>
<br>
Primeros Auxilios (Contacto Ocular): En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Seguridad: Mantener producto fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|true|true|false|false|false|false|false|false','[[],["CARB. DE CALCIO (CaCO3)|87,5% - 91%","CALCIO (Ca)|35 - 37 %","CARB. DE MAGNESIO (MgCO3)|1% MÁX.","ÓXIDO FÉRRICO (Fe2O3)|1% MÁX.","SÍLICE (SiO3)|3% MÁX.","INSOLUBILIDAD|3,5% MÁX."],["APARIENCIA|POLVO GRUESO","COLOR|BEIGE","PESO ESPECÍFICO|1,5 G/CC","HUMEDAD|4% MÁX."],[],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","8px","292px","0px","0px","0px","0px","536px"],"rowsxtable":["10","51","22","14","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (271,'NÚCLEO NOVILLO DE TERMINO QP','QP - 761','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Novillo de Termino QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E. Carbonato de Calcio, Carbonato de Cobalto, Cloruro de Sodio, Fosfato Bicálcico, Óxido de Magnesio, Óxido de Zinc, Selenito de Sodio, Sulfato de Manganeso, Yodato de Potasio. Propionato de Calcio, Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).|1 kg de Núcleo Novillo de Termino QP, aporta:
|La dosificación recomendada de Núcleo Novillo de Termino QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|200.000 UI","VITAMINA D3|50.000 UI","VITAMINA E|1.000 UI","CALCIO|106 g","CLORO|61 g","FÓSFORO|16 g","MAGNESIO|70 g","SODIO|39 g","COBALTO|4 mg","COBRE|750 mg","MANGANESO|1 g","SELENIO|9 mg","YODO|82 mg","ZINC|2 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (272,'PREMIX VITAMÍNICO CERDOS QP','QP - 838','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Premix Vitamínico Ponedora QP es un aditivo formulado, desarrollado para ser incorporado en el alimento extruido de perros adultos.

Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen al óptimo desarrollo y funcionamiento del organismo canino.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12. Carbonato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B6, Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12. Carbonato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
|La dosificación recomendada de Premix Vitamínico Ponedora QP es 1 kg por cada 1.000 kg de alimento.
<br>
<br>
La dosis exacta debe establecerse siempre bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.| Producto disponible en bolsas aluminizadas de 1 kg y sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|11.000.000 UI","VITAMINA D3|1.800.000 UI","VITAMINA E|35.000 UI","VITAMINA K3|2.900 mg","VITAMINA B1|3.500 mg","VITAMINA B2|10.400 mg","VITAMINA B3 (NIACINA)|70.000 mg","VITAMINA B5 (PANT. DE CALCIO)|40.000 mg","VITAMINA B6|7.000 mg","VITAMINA B7 (BIOTINA)|6 mg","VITAMINA B9 (ÁCIDO FÓLICO)|1.000 mg","VITAMINA B12 |10 mg"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","420px","0px","0px","0px","484px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (273,'SULFATO DE MAGNESIO MONOHIDRATADO','QP - 732','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Sulfato de Magnesio Monohidratado es un suplemento mineral en forma de polvo o gránulos finos, de color blanco, utilizado en nutrición animal como fuente biodisponible de magnesio y azufre. El magnesio es esencial para la función enzimática, la transmisión nerviosa y la salud ósea, mientras que el azufre participa en la síntesis de aminoácidos y proteínas. Este compuesto contiene una molécula de agua de cristalización por unidad de sulfato de magnesio, lo que le confiere estabilidad y menor higroscopicidad en comparación con formas más hidratadas.  
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 14168-73-1
<br>
Fórmula química: MgSO4·H2O  |Sulfato de Magnesio Monohidratado (98% mínimo), Humedad (2% máximo), Arsénico (3 ppm máximo), Plomo (10 ppm máximo), Metales pesados (como Cd, Hg) (10 ppm máximo).  
|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y los niveles basales de magnesio en la dieta. Se utiliza comúnmente en rumiantes, aves y cerdos para prevenir deficiencias de magnesio, especialmente en dietas ricas en potasio o durante períodos de alto estrés metabólico.  
|Producto disponible en sacos de polietileno (PE) o polipropileno (PP).  |Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.  
<br>
<br>
Evitar el contacto directo con el suelo.  
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.  
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento. 
|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.   
|El Sulfato de Magnesio Monohidratado no es altamente tóxico, pero el polvo puede causar irritación leve en ojos, piel o vías respiratorias. Se recomienda utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas. 
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.  
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar existe irritación, buscar atención médica.  
<br>
<br>
Mantener fuera del alcance de niños y animales.  
<br>
<br>
Uso exclusivo para animales: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.
','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","444px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (275,'CLORURO DE AMONIO','QP - 0015','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Cloruro de Amonio es un compuesto inorgánico en forma de polvo o cristales finos, de color blanco, altamente soluble en agua. En nutrición animal, se utiliza principalmente en rumiantes como fuente no proteica de nitrógeno y cloro, y para acidificar la orina, ayudando a prevenir la formación de cálculos urinarios (especialmente en ovinos y caprinos). También se emplea en aves para mejorar la eficiencia alimenticia y en cerdos como estimulante del apetito en ciertas formulaciones.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 12125-02-9
<br>
Fórmula química: NH4Cl|Cloruro de Amonio (99% mínimo), Humedad (0,5% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo), Metales pesados (como Cd, Hg) (5 ppm máximo).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y el objetivo nutricional. En rumiantes, se utiliza generalmente entre 0,5% y 1% de la dieta total, siempre en equilibrio con fuentes energéticas fermentables. No debe excederse su uso, ya que puede causar acidosis metabólica.|Producto disponible en sacos de polietileno (PE) o polipropileno (PP).|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|El Cloruro de Amonio no es altamente tóxico en niveles nutricionales, pero el polvo puede causar irritación leve en ojos, piel o vías respiratorias. En presencia de calor o humedad, puede liberar amoníaco, un gas irritante. Se recomienda utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar existe irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","432px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (276,'SULFATO DE AMONIO','QP - 0016','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Sulfato de Amonio es un compuesto inorgánico en forma de cristales o polvo fino, de color blanco, altamente soluble en agua. En nutrición animal, se utiliza principalmente como fuente no proteica de nitrógeno en dietas para rumiantes, donde es aprovechado por la microbiota ruminal para la síntesis de proteína microbiana. También aporta azufre, un elemento esencial para la formación de aminoácidos sulfurados (metionina y cisteína) y la función enzimática. 
<br> 
<br>
<b>Identificación del producto:</b>
<br>
<br>  
Número CAS: 7783-20-2  
<br>
Fórmula química: (NH4)2SO4  |Sulfato de Amonio (99% mínimo), Humedad (0,5% máximo), Arsénico (1 ppm máximo), Plomo (2 ppm máximo), Metales pesados (como Cd, Hg) (5 ppm máximo). |La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y la disponibilidad de otros precursores de proteína microbiana (como carbohidratos fermentables). Se utiliza exclusivamente en rumiantes, en niveles que generalmente no exceden 1% de la dieta total, para evitar toxicidad por amoníaco. No debe usarse en monogástricos. |Producto disponible en sacos de polietileno (PE) o polipropileno (PP). |Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa. 
<br>
<br> 
Evitar el contacto directo con el suelo. 
<br>
<br> 
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.  
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.  |24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.  |El Sulfato de Amonio no es altamente tóxico, pero el polvo puede causar irritación leve en ojos, piel o vías respiratorias. Además, en presencia de humedad o calor, puede liberar amoníaco, un gas irritante. Se recomienda utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>  
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>  
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar existe irritación, buscar atención médica.  
<br>
<br>
Mantener fuera del alcance de niños y animales.  
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.
','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","432px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (277,'CANTAXANTINA','QP - 017','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','La Cantaxantina es un pigmento de color marrón rojizo, en forma de microgránulos, libre de polvo y utilizado en nutrición animal como colorante natural. Está formulada mediante tecnología de microencapsulación por secado por aspersión, con una matriz de lignosulfonato de calcio, recubrimiento de almidón y antioxidante (BHT) para proteger la molécula de cantaxantina frente a la oxidación, el calor, la humedad y las fuerzas mecánicas durante el procesamiento del alimento (mezclado, peletizado o extrusión). Se emplea principalmente para intensificar la pigmentación de la yema de huevo en aves ponedoras, la piel y patas en pollos de engorde, y la coloración en peces y aves ornamentales.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 514-78-3
<br>
Fórmula química: C40H52O2|Cantaxantina (10% mínimo), matriz de lignosulfonato de calcio, almidón (como recubrimiento), antioxidante (BHT, &#8804;0,1%).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, la etapa productiva, la pigmentación deseada y el contenido de xantófilas amarillas naturales en la dieta.
<br>
<br>
&middot;Aves de engorde: hasta 25 mg de Cantaxantina por kg de alimento completo.
<br>
&middot;Aves ponedoras: hasta 8 mg de Cantaxantina por kg de alimento completo (ajustado según el nivel de xantófilas naturales y el tono de yema deseado).
<br>
&middot;Peces y aves ornamentales: hasta 100 mg de cantaxantina por kg de alimento completo.|Producto disponible en bolsas de laminado de aluminio de 5 kg, 10 kg o 20 kg, selladas herméticamente y en cajas de cartón para protección contra la luz, humedad y oxígeno.|Almacenar en un lugar fresco, seco y oscuro, protegido de la luz solar directa, el calor y la humedad.
<br>
<br>
Mantener el envase original bien cerrado.
<br>
<br>
Una vez abierto el envase, utilizar el contenido lo más pronto posible para evitar degradación por oxidación.
<br>
<br>
Evitar el contacto directo con el suelo y mantener control de plagas en el área de almacenamiento.|18 meses a partir de la fecha de fabricación, en el empaque original cerrado y bajo las condiciones de almacenamiento recomendadas.|La Cantaxantina al 10% no es tóxica en los niveles autorizados para alimentación animal, pero se recomienda evitar la inhalación de polvo, ingestión accidental o contacto prolongado con piel y ojos.
Durante la manipulación, utilizar guantes, gafas de seguridad y mascarilla aprobada.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar inmediatamente con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","324px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (278,'APOÉSTER','QP - 748','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Apoéster (Éster etílico del ácido ß-apo-8''-carotenoico) es un pigmento amarillo de origen sintético que pertenece a la familia de los carotenoides. Es un aditivo en forma de microgránulos libres de polvo, utilizado en nutrición animal como colorante natural. Está formulado mediante tecnología de microencapsulación por secado por aspersión, con una matriz de lignosulfonato de calcio, recubrimiento de almidón y antioxidante (BHT) para protegerlo frente a la oxidación, el calor, la humedad y las fuerzas mecánicas durante el procesamiento del alimento (mezclado, peletizado o extrusión). Se emplea principalmente para intensificar la pigmentación de la yema de huevo en aves ponedoras y mejorar el color de la piel en pollos de engorde.
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 1109-11-1
<br>
Fórmula química: C32H44O2|Etil éster de ß-apo-8''-carotenoico (10% mínimo), matriz de lignosulfonato de calcio, almidón (como recubrimiento), BHT(&#8804;0,1%).|La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, la etapa productiva, la pigmentación deseada y el contenido de xantófilas amarillas naturales en la dieta.
<br>
<br>
&middot;Pollos de engorde: hasta 15 mg de Apoéster por kg de alimento completo.
<br>
&middot;Aves ponedoras: hasta 5 mg de Apoéster por kg de alimento completo (ajustado según el nivel de xantófilas naturales y el tono de yema deseado).
<br>
&middot;Nota: En aves ponedoras, se recomienda combinar Apoéster con Cantaxantina para lograr tonos de yema específicos, ajustando la dosis según la escala de color objetivo y el contenido natural de xantófilas en la dieta.|Producto disponible en cajas de 20 kg y bolsas de 1 kg.|Almacenar en un lugar fresco, seco y oscuro, protegido de la luz solar directa, el calor y la humedad.
<br>
<br>
Mantener el envase original bien cerrado.
<br>
<br>
Una vez abierto el envase, utilizar el contenido lo más pronto posible para evitar degradación por oxidación.
<br>
<br>
Evitar el contacto directo con el suelo y mantener control de plagas en el área de almacenamiento.|18 meses a partir de la fecha de fabricación, en el empaque original cerrado y bajo las condiciones de almacenamiento recomendadas.|El Apoéster no es tóxico en los niveles autorizados para alimentación animal, pero se recomienda evitar la inhalación de polvo, ingestión accidental o contacto prolongado con piel y ojos.
<br>
<br>
Durante la manipulación, utilizar guantes, gafas de seguridad y mascarilla aprobada.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar inmediatamente con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","324px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (279,'SULFATO DE ZINC MONOHIDRATADO','QP - 0019','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','El Sulfato de Zinc Monohidratado es un suplemento mineral en forma de polvo o gránulos finos, de color blanco a ligeramente amarillento, utilizado en nutrición animal como fuente biodisponible de zinc. El zinc es un oligoelemento esencial involucrado en la síntesis de proteínas, la función inmunológica, la cicatrización de heridas, la reproducción y el metabolismo de carbohidratos. Este compuesto contiene una molécula de agua de cristalización, lo que le confiere mayor estabilidad y menor higroscopicidad en comparación con formas más hidratadas.  
<br>
<br>
<b>Identificación del producto:</b>
<br>  
<br>
Número CAS: 7446-20-0  
<br>
Fórmula química: ZnSO4·H2O  
|Sulfato de Zinc Monohidratado (98% mínimo), Humedad (2% máximo), Arsénico (3 ppm máximo), Plomo (10 ppm máximo), Cadmio (1 ppm máximo).  |La dosificación debe ser determinada por un veterinario o nutricionista animal, ya que la cantidad necesaria dependerá de la especie, el peso del animal, la etapa productiva y los niveles basales de zinc en la dieta. Se utiliza comúnmente en cerdos, aves, rumiantes y acuicultura para prevenir deficiencias que pueden manifestarse como dermatitis, retraso en el crecimiento o baja fertilidad.  |Producto disponible en sacos de polietileno (PE) o polipropileno (PP).|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br> 
Evitar el contacto directo con el suelo.
<br>
<br>  
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético.
<br>
<br>  
Mantener un adecuado control de plagas en el lugar de almacenamiento.  |24 meses a partir de la fecha de fabricación, en las condiciones de almacenamiento previamente descritas.  |El Sulfato de Zinc Monohidratado no es altamente tóxico en niveles nutricionales, pero el polvo puede causar irritación en ojos, piel o vías respiratorias. Se recomienda utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.  
<br>
<br>
Manipular este producto en una zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso. 
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si después de enjuagar existe irritación, buscar atención médica.  
<br>
<br>
Mantener fuera del alcance de niños y animales.  
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.
','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","412px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (281,'NÚCLEO PONEDORA BEZETA','QP - 823','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Núcleo Ponedora Bezeta es un aditivo formulado en pólvo, desarrollado para ser incorporado en el alimento de gallinas ponedoras. Contiene una mezcla balanceada de vitaminas, minerales y aditivos que contribuyen a un adecuado desarrollo y productividad.


|Vitamina A, Vitamina D3, Vitamina E, Vitamina K3, Vitamina B1, Vitamina B2, Vitamina B3 (Niacina), Vitamina B5 (Pantotenato de calcio), Vitamina B7 (Biotina), Vitamina B9 (Ácido fólico), Vitamina B12. Carbonato de Calcio, Óxido de Zinc, Selenito de Sodio, Sulfato de Cobre, Sulfato Ferroso, Sulfato de Manganeso, Yodato de Calcio. Acido Cítrico, Butilhidroxianisol (BHA), Butilhidroxitolueno (BHT).
 |1 kg de Núcleo Ponedora Bezeta aporta:
|La dosificación de Núcleo Ponedora Bezeta debe ser establecida bajo la supervisión y recomendación de un médico veterinario, zootecnista o especialista en nutrición animal, quienes evaluarán las necesidades específicas según el tipo de alimento, las condiciones de almacenamiento y los requerimientos de cada plantel.|Producto disponible en sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|12 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de los niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["VITAMINA A|5.500.000 UI","VITAMINA D3|2.200.000 UI","VITAMINA E|5.000 UI","VITAMINA K3|1.0 g","VITAMINA B2|2.0 g","VITAMINA B3 (NIACINA)|8.0 g","VITAMINA B5 (PANT. DE CALCIO)|4.0 g","VITAMINA B7 (BIOTINA)|40 g ","VITAMINA B9 (ÁCIDO FÓLICO)|0.6 g","VITAMINA B12 |4.0 mg","COBRE|5.0 g","HIERRO|25 g","MANGANESO|50 g","SELENIO|0.1 g","YODO|0.3 g","ZINC|35 g"],[],[],[],[],[]]','{"pages":"3","margins":["0px","0px","0px","448px","0px","0px","0px","524px"],"rowsxtable":["10","10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (282,'EXTRACTO DE QUILLAY 3.5%  ','290',' DESCRIPCIÓN|COMPOSICIÓN|ENVASE|ALMACENAMIENTO|VIDA ÚTIL','Aromatizante natural para uso en alimentos para animales.
es un ingrediente natural patentado elaborado a partir de Quillaja saponaria Molina puro, estandarizado al 3,5 % de saponinas triterpénicas, en combinación con extracto de Quillaja.

– Nombre botánico: Quillaja saponaria Molina|Polvo pulverizado de Quillaja y extracto de Quillaja.|Bolsas multicapa de 20 kg (peso neto).|Almacenar a temperatura ambiente, protegido de la luz y en condiciones secas (evitar la humedad).|36 meses cuando se almacena en su envase original y bajo las condiciones mencionadas.','false|true|false|false|false','[[],["ASPECTO|POLVO FINO","COLOR|MARRÓN CLARO","GRANULOMETRÍA|100%  MALLA 45","HUMEDAD|MAXIMO 8%","DENSIDAD|0.2-0.5 g/cm3","CONTENIDO SAPONINAS HPLC| MÍNIMO 3.5%"," LEVADURAS Y MOHOS| MÁXIMO 150000 ufc/g"],[],[],[]]','{"pages":"1","margins":["0px","0px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (283,'RED EGGS PROA  (50 CAN - 20 APO)','QP - 819','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','RED EGGS PROA (50 CAN - 20 APO) es una fuente concentrada de Cantaxantina y Apoester , diseñada para suplementar dietas de gallinas ponedoras. Tanto la Cantaxantina como el Apoester gracias a su formulación mediante microencapsulación en matriz de lignosulfonato de calcio y almidón, la partículas poseen una alta estabilidad física y química. Ambas particulas de pigmento soportan condiciones críticas de calor y cizallamiento mecánico durante el mezclado del alimento, asegurando que el pigmento llegue intacto al ave para lograr la coloración deseada en la yema del huevo.

|Cantaxantina al 10% Fabricante Zheijang NHU Company LTD. Registro SAG 1883/2025.
Apoester al 10% Fabricante Zheijang NHU Company LTD. Registro SAG 1882/2025.
Carbonato de Calcio  fino. Fabricante  Carvallo Walker Minerals SPA. Registro REP 077.|1 kg de RED EGGS PROA (50 CAN -20 APO) aporta:
|La dosificación recomendada de RED EGGS PROA (50 CAN - 20 APO) varía  dependiendo de la coloración de yema deseada.
|Producto disponible en sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CANTAXANTINA  AL 10%|50.000 mg","APOESTER AL 10%|20.000 mg","CARBONATO DE CALCIO FINO|930 g"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","356px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (284,'OVOCOLOR PROA (20 APO)','QP - 821','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','OVOCOLOR PROA (20 APO) es una fuente concentrada de Apoester, diseñada para suplementar dietas de gallinas ponedoras. La particula de Apoester soporta condiciones críticas de calor y cizallamiento mecánico durante el mezclado del alimento, asegurando que el pigmento llegue intacto al ave para lograr la coloración deseada en la yema del huevo.

|Apoester al 10% Fabricante Zheijang NHU Company LTD. Registro SAG 1882/2025.
Carbonato de Calcio Fino. Fabricante  Carvallo Walker Minerals SPA. Registro REP 077.|1 kg de OVOCOLOR PROA (20 APO) aporta:
|La dosificación recomendada de OVOCOLOR PROA (20 APO) varía dependiendo de la coloración de yema deseada.
|Producto disponible en sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["APOESTER AL 10%|20.000 mg","CARBONATO DE CALCIO FINO|980 g"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","432px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (285,'LISINA SULFATO','QP - 502','DESCRIPCIÓN|COMPOSICIÓN|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','AA|AA|La dosificación de Lisina Sulfato debe ajustarse según los requerimientos nutricionales específicos de cada especie animal, etapa productiva y formulación de la dieta. Se recomienda consultar con un nutricionista animal o médico veterinario para determinar la cantidad óptima a incluir en la ración.|Producto disponible en sacos de polietileno de 25 kg y bolsas aluminizadas de 1 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa. Evitar el contacto directo con el suelo. Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. Mantener un adecuado control de plagas en el lugar de almacenamiento.|La vida útil de la Lisina sulfato es de 2 años (24 meses) a partir de la fecha de fabricación, siempre y cuando se almacene en su empaque original y bajo las condiciones recomendadas.|Manipule el producto en un área bien ventilada.
<br>
<br>
Evite el contacto directo con la piel y los ojos. En caso de contacto, lave con abundante agua.
<br>
<br>
Evite la inhalación del polvo. Utilice equipo de protección personal adecuado (mascarilla, guantes) si se prevé la generación de polvo.
<br>
<br>
Mantenga el empaque bien cerrado cuando no esté en uso para evitar la absorción de humedad.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales:</b> Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|false|false|false|false|false','[[],[],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","272px","0px","0px","0px"],"rowsxtable":["10","10","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (286,'RED EGGS (35 -15)','QP - 861','DESCRIPCIÓN|COMPOSICIÓN|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','RED EGGS (35 -15) es una fuente concentrada de Cantaxantina y Apoester , diseñada para suplementar dietas de gallinas ponedoras. Tanto la Cantaxantina como el Apoester gracias a su formulación mediante microencapsulación en matriz de lignosulfonato de calcio y almidón, poseen una alta estabilidad física y química. Ambas particulas de pigmento soportan condiciones críticas de calor y cizallamiento mecánico durante el mezclado del alimento, asegurando que el pigmento llegue intacto al ave para lograr la coloración deseada en la yema del huevo.

|Cantaxantina al 10% .Registro SAG 1883/2025.
Apoester al 10% .Registro SAG 1882/2025.
Carbonato de Calcio fino. |1 kg de RED EGGS (35 -15) aporta:
|La dosificación recomendada de RED EGGS (35 -15) varía dependiendo de la coloración de yema deseada. ( Consultar con su medico veterinario)
|Producto disponible en sacos de polietileno de 25 kg.|Almacenar en un lugar fresco (preferentemente entre 10°C y 25°C), de baja humedad y protegido de luz solar directa.
<br>
<br>
Evitar el contacto directo con el suelo.
<br>
<br>
Una vez abierto el envase de este producto, volver a sellar o mantener en un recipiente hermético. 
<br>
<br>
Mantener un adecuado control de plagas en el lugar de almacenamiento.|24 meses desde su fecha de fabricación, en las condiciones de almacenamiento previamente descritas.|Utilizar guantes, gafas de seguridad y mascarilla (para polvo) con el fin de proteger vías respiratorias, ojos y piel de posibles irritaciones por partículas.
<br>
<br>
Manipular este producto en una zona con buena ventilación. 
<br>
<br>
Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar con abundante agua. Si la irritación persiste, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.
<br>
<br>
<b>Uso exclusivo para animales</b>: Este producto está destinado únicamente para su uso en alimentación animal. No es apto para consumo humano.','false|false|true|false|false|false|false|false','[[],[],["CANTAXANTINA al 10%|35.000 mg","APOESTER al 10%|15.000 mg","CARBONATO DE CALCIO FINO|930 g"],[],[],[],[],[]]','{"pages":"2","margins":["0px","0px","0px","0px","0px","356px","0px","0px"],"rowsxtable":["10","10","13","10","10","10","10","10"]}');
INSERT INTO `ficha` (`id`, `nombre`, `codigo`, `titulos`, `descs`, `withtables`, `tables`, `estilo`) VALUES (287,'ALMIDÓN DE MANDIOCA','QP - 846','DESCRIPCIÓN|COMPOSICIÓN|ESPECIFICACIONES FISICOQUÍMICAS|APORTE NUTRICIONAL|DOSIFICACIÓN|PRESENTACIÓN|ALMACENAMIENTO|VIDA ÚTIL|PRECAUCIONES','Producto grado alimenticio, conocido también como fécula de mandioca, o almidon de tapioca. Es extraído de la raíz de la mandioca por proceso de molienda húmeda, lavado y secado en condiciones determinadas que permiten mantener sus propiedades naturales, no posee modificaciónes químicas y está totalmente libre de aditivos. Se emplea en una gran cantidad de aplicaciones alimenticias e industriales. En nutrición animal se utiliza principalmente en <b>fábricas de alimentos pelletizados para perros y gatos.</b> 
<br>
<br>
<b>Identificación del producto:</b>
<br>
<br>
Número CAS: 9005-25-8
<br>
<br>
<b>Beneficios clave para fábricas de alimentos pelletizados:</b>
<br>
<br>
1. Formulación "Grain-Free" e Hipoalergénica (Ventaja Comercial)
<br><br>
Permite elevar el estándar del portafolio de productos utilizando la misma maquinaria existente. Al retirar el maíz o el trigo de una fórmula para crear un producto "Super Premium", se pierde la estructura y aglomeración que usualmente aportan esos cereales. La fécula de mandioca es el reemplazo funcional técnico ideal: aporta la capacidad de expansión y ligue necesaria para que la croqueta no se desmorone ante la ausencia de almidones de cereal.Esto Permite a la fábrica producir alimentos de gama alta (con claims de "Libre de Granos" en la receta) en la misma línea de extrusión donde se hacen alimentos económicos, sin necesidad de cambiar la configuración mecánica del extrusor, logrando una croqueta dura y estable similar a la convencional.
<br>
<br>
2. Textura y Palatabilidad (El "Crunch")
<br>
<br>
La textura es crítica para que el perro o gato acepte el alimento. La mandioca permite controlar muy bien la expansión. Genera una estructura interna porosa y crujiente, pero no dura como una piedra, esto favorece una croqueta que el animal puede romper fácilmente (crujiente), lo cual es percibido por la mascota como mayor palatabilidad.
<br>
<br>
3. Eficiencia Energética (Menor Temperatura de Gelatinización)
<br><br>
El almidón de mandioca se gelatiniza (se "cocina") a una temperatura más baja (aprox. 58-70°C) en comparación con el maíz o el trigo (que requieren más de 70-80°C). Se logra una cocción completa de la masa con menos vapor o menor temperatura en el acondicionador/extrusor, ahorrando en costos de energía y aumento en la velocidad de la línea de producción (toneladas/hora), ya que el producto se cocina más rápido.
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
4. Apariencia Visual del Producto (Superficie Lisa)
<br><br>
A diferencia de fibras o almidones de grano entero que pueden dejar la superficie rugosa o porosa hacia afuera, el almidón de mandioca crea una película suave alrededor del pellet que Permite una aplicación de grasas y saborizantes (coating) mucho más uniforme. El aceite no se "chupa" inmediatamente hacia el centro, sino que queda bien distribuido en la cobertura, mejorando el sabor inicial.
<br>
<br>
5. Mejora del PDI (Índice de Durabilidad del Pellet) y Reducción de Finos
<br><br>
Este es el beneficio operativo número uno. El almidón de mandioca actúa como un "cemento" muy potente. Al tener una alta capacidad de retención de agua y viscosidad, une las partículas fuertemente. Esto significa que las croquetas no se rompen durante el enfriamiento, el transporte en elevadores y el envasado. Esto permite menos "polvo" o finos que reprocesar (ahorro de energía) y un producto final visualmente perfecto al abrir la bolsa.|Almidón de mandioca: 84% a 90%, Humedad: 13,5% máximo, Cenizas: 0,5% máximo.||100 gramos de Almidón de Mandioca aportan


|La dosificación de Almidón de mandioca varía según la especie animal, la fase productiva y los objetivos específicos. Se recomienda consultar con un médico veterinario o zootecnista para una inclusión óptima en la ración.|Producto disponible en sacos de papel de 25 kilos.|Almacenar en un ambiente fresco, seco y protegido de la luz solar directa. Mantener el envase original herméticamente cerrado para evitar la absorción de humedad y la contaminación, lo cual podría afectar su calidad y vida útil.|24 meses desde la fecha de fabricación, en las condiciones de almacenamiento señaladas.|El Almidón de Mandioca no es tóxico, sin embargo, se recomienda evitar la inhalación de polvo, ingestión accidental o contacto prolongado con piel y ojos. Durante la manipulación, utilizar guantes, gafas de seguridad y mascarilla.
<br>
<br>
Manipular en zona con buena ventilación. Lavar manos cuidadosamente con agua y jabón después de su uso.
<br>
<br>
En caso de contacto con los ojos, enjuagar inmediatamente con abundante agua. Si persiste la irritación, buscar atención médica.
<br>
<br>
Mantener fuera del alcance de niños y animales.','false|false|true|true|false|false|false|false|false','[[],[],["ASPECTO|POLVO FINO","OLOR|INODORO","COLOR|BLANCO","SABOR |CARACTERÍSTICO","HUMEDAD|13,5% max.","CENIZAS|0,5% max.","pH|5 - 7","FIBRA|0,5% max.","T° DE GELIFICACIÓN|60°C - 70°C","GRANULOMETRÍA (MALLA 100)|99% max.","PORCENTAJE DE FÉCULA|84 - 90%","NITRÓGENO|0,15% max."],["VALOR ENERGÉTICO|400 Kcal","MATERIA GRASA|0%","HIDRATOS DE CARBONO|100 g","CENIZAS|0,5 g max.","PROTEÍNA BRUTA|0%","SODIO|11,5 mg"],[],[],[],[],[]]','{"pages":"4","margins":["0px","0px","0px","372px","0px","0px","0px","0px","372px"],"rowsxtable":["10","10","12","10","10","10","10","10","10"]}');
INSERT INTO `sliders` (`id`, `titulo`, `subtitulo`, `imagen_desktop`, `imagen_mobile`, `enlace_url`, `texto_boton`, `orden`, `esta_activo`, `created_at`, `updated_at`) VALUES (5,NULL,NULL,'sliders/desktop/01K2MPK8MCKTQ9Z6S7BWV3JNQE.webp','sliders/mobile/01K2MPK8MENRCK8Z035T8Z81B7.webp',NULL,NULL,1,1,'2025-08-14 16:28:49','2025-08-14 20:08:29');
INSERT INTO `sliders` (`id`, `titulo`, `subtitulo`, `imagen_desktop`, `imagen_mobile`, `enlace_url`, `texto_boton`, `orden`, `esta_activo`, `created_at`, `updated_at`) VALUES (7,NULL,NULL,'sliders/desktop/01K38ZFBS3KT7GR1PW63DNEQZT.jpg','sliders/mobile/01K38ZFBS6RPKRF3ZR1BK9J7MS.jpg',NULL,NULL,2,1,'2025-08-14 18:53:55','2025-08-22 13:28:47');
INSERT INTO `sliders` (`id`, `titulo`, `subtitulo`, `imagen_desktop`, `imagen_mobile`, `enlace_url`, `texto_boton`, `orden`, `esta_activo`, `created_at`, `updated_at`) VALUES (8,'slider 1',NULL,'sliders/desktop/01K38ZJAK3YYP29JQRS2MVJTY0.jpg','sliders/mobile/01K38ZJAK7E4ETE8KM0WDK70SP.jpg',NULL,NULL,0,1,'2025-08-15 18:04:53','2025-08-22 13:30:24');
