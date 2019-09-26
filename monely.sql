-- TABLA USUARIO --> entidad - fuerte
CREATE TABLE `personas`( -- Registros que llenan por usuario
    `id_persona` INT(8) AUTO_INCREMENT,
    `nombres` VARCHAR(45) NOT NULL,
    `apellidos` VARCHAR(45) NOT NULL,
    `email` VARCHAR(20) NOT NULL,
    `foto` VARCHAR(50), 
    `estado_persona` VARCHAR(15),
    `fecha_alta_persona` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    `fecha_baja_persona` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    CONSTRAINT
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- TABLA USUARIO -->  entidad - debil
CREATE TABLE `usuarios`( -- Registros que llenan por usuario
    `id_usuario` INT(8),
    `nickname` VARCHAR(10),
    `pass` VARCHAR(60) NOT NULL,
    `perfil_usuario` VARCHAR(15), /* administrador - editor - consultor*/
    `area_trabajo` VARCHAR(15),
    `estado_usuario` VARCHAR(15),
    `fecha_alta_usuario` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    `fecha_baja_usuario` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    fk_id_persona
    CONSTRAINT
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA TIPO_PRENDA
CREATE TABLE `tipo_prenda_lista`( --- Registros que llenan por usuario
	`id_tipo_prenda` INT,
	`nombre_tipo_prenda` VARCHAR(45), -- polo, body , canesu, etc.
	`descripcion` VARCHAR(100),
	`fecha_registro_tipo_prenda` DATETIME
	fk_id_tecnicas_estampado -- total, parcial, pecho, espalda
);


-- TABLA ESTILOS
CREATE TABLE `estilos`( -- Registros que llenan por usuario
	`id_estilo` INT,
	`nombre_estilo` VARCHAR(45),
	`estilo_genero` VARCHAR(45), -- mujer, hombre, niño, niña, bebe,bebo
	`descripcion` VARCHAR(100),
	`cantidad_prendas` INT(10),
	`tallas` VARCHAR(20), -- resolver problema con tallas
	`curva` VARCHAR(20), -- resolver problema con curva
	fk_tipo_prenda_lista VARCHAR(45), -- leggings, polo, falda, short, bodys ,etc
	fk_id_tecnica_estampado -- puff - glitter - plano - dischard - suave - etc
	fk_id_ordenes_produccion
	fk_id_diseno_ficha -- total, parcial, pecho, espalda 
	fk_id_hangtag
	fk_id_etiqueta_lavado
);


-- TABLA ORDEN DE PRODUCCION --> entidad
CREATE TABLE `ordenes_produccion`( -- Registros que llenan por usuario
	`id_orden_produccion` INT(8),
	fk_cliente_1
	`observaciones_ordenes_produccion` VARCHAR(100),
	`estado_orden_produccion` VARCHAR(15), -- despues crear tabla estado
	`fecha_registro_orden_produccion` DATETIME,
	`fecha_embarque` DATETIME,
	fk_id_ordenes_guias_cortes
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA CLIENTES
CREATE TABLE `clientes`(
	`id_cliente` INT,
	`razon_social_cliente` VARCHAR(45),
	`ruc_cliente` VARCHAR(45),
	`direccion_cliente` VARCHAR(70),
	`fecha_registro_cliente` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_usuario
);

-- TABLA ETIQUETA AVIOS
CREATE TABLE `etiqueta_lavado`(
	`id_etiqueta_lavado` INT,
	`imagen_etiqueta_lavado` VARCHAR(75),
	`fecha_registro_etiqueta` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_usuario
);


-- TABLA INTERMIEDIA ORDEN_PRODUCCION Y ETIQUETA_LAVADO
CREATE TABLE `ordenProduccion_etiquetaLavado`(
	fk_id_orden_produccion
	fk_id_etiqueta_lavado
);


-- TABLA AVIOS --> entidad  
CREATE TABLE `avios`(
	`id_avios` INT(8),
	`nombre_avios` VARCHAR(20) --talleros, precios, hangtag,ganchos,
	`imagen_avios` INT(8),--sensores, bolsas,broches,tuil,
	`fecha_ultima_actualizacion` DATETIME, -- soguillas,elasticos,
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA HANGTAGS
CREATE TABLE `hangtags`( -- Registros que llenan por usuario
	`id_hangtag` INT(8),
	`nombre_hangtag` VARCHAR(20) --talleros, precios, hangtag,ganchos,
	`imagen_hangtag` VARCHAR(8),--sensores, bolsas,broches,tuil,
	`ancho_hangtag` INT
	`largo_hangtag` INT
	`fecha_registro_hangtag` DATETIME
	`fecha_ultima_actualizacion` DATETIME, -- soguillas,elasticos,
	fk_cliente
	fk_id_usuario
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA PROVEEDORES
CREATE TABLE `proveedores`( -- Registros que llenan por usuario
	`id_proveedor` INT,
	`razon_social_proveedor` VARCHAR(45),
	`ruc_proveedor` VARCHAR(45),
	`direccion_proveedor` VARCHAR(70),
	`nombre_insumo` VARCHAR(45),
	`fecha_registro_proveedor` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_usuario
);


-- TABLA INTERMEDIA HANGTAG Y PROVEEDORES
CREATE TABLE `ordenProduccion_hangtags`(
	fk_id_hangtag
	fk_id_proveedor 
);


-- TABLA INTERMEDIA ESTILOS Y COLORES_TELAS
CREATE TABLE `estilos_coloresTelas`(
	fk_id_estilos
	fk_id_colores_telas
);


-- TABLA INTERMEDIA ESTILOS Y COLORES_TELAS
CREATE TABLE `estilos_coloresRip`(
	fk_id_estilos
	fk_id_colores_rip
);


-- TABLA COLOR DE TELAS
CREATE TABLE `colores_telas`(  -- Registros que llenan por usuario
	`id_colores_telas` INT,
	`codigo_tela` VARCHAR(20),
	`partida_tela` VARCHAR(20),
	`color_tela_interno` VARCHAR(15),
	`nombre_color_tela_proveedor` VARCHAR(15),
	`porcentaje_componentes` VARCHAR(25), -- 100% algodon 
	`tipo_rollo` VARCHAR(45), -- abierta, tubular
	`tipo_tela` VARCHAR(15), -- jersey, gamuza, melange, 
	`tejido_telas` VARCHAR(45), -- 30/1 - 24/1 - 20/1
	`estado_colore_tela` VARCHAR(15),
	`fecha_registro_tela` DATETIME,
	fk_id_proveedor_1
);

-- TABLA COLOR DE RIP
CREATE TABLE `colores_rip`( -- Registros que llenan por usuario
	`id_colores_rip` INT,
	`codigo_rip` VARCHAR(20),
	`partida_rip` VARCHAR(20),
	`color_rip_interno` VARCHAR(15),
	`nombre_color_rip_proveedor` VARCHAR(15),
	`porcentaje_componentes` VARCHAR(25), -- 100% algodon 
	`tipo_rollo` VARCHAR(45), -- abierta, tubular
	`tipo_rip` VARCHAR(15), -- jersey, gamuza, melange, 
	`tejido_rip` VARCHAR(45), -- 30/1 - 24/1 - 20/1
	`estado_tipo_rip` VARCHAR(15),
	`fecha_registro_rip` DATETIME
	fk_id_proveedor_2
);


-- TABLA GESTION TELAS --> entidad  
CREATE TABLE `pedido_telas`( -- esto se mide a nivel de orden de produccion
	`id_pedido_tela` VARCHAR(8),  -- Registros que llenan por usuario
	`consumo_prenda` INT(8),
	`pedido_rollos` INT(8),
	`estado_pedido_tela` VARCHAR(15),
	`fecha_llegada_almacen_telas` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_pedido_telas` VARCHAR(100),
	fk_id_orden_produccion
	fk_id_usuario_2
	fk_id_ordenes_guias_cortes
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA ORDENES DE GUIA DE CORTE --> entidad
CREATE TABLE `ordenes_guias_cortes`( -- Registros que llenan por usuario
	`id_orden_guia_corte` INT(5),
	`estado_orden_guia_corte` VARCHAR(15),
	`fecha_registro_guia_corte` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_orden_guia_corte` VARCHAR(100),
	fk_id_usuario_3
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA CORTE DE TELAS --> entidad
CREATE TABLE `corte_orden_telas`( -- Registros que llenan por usuario
	`id_corte_orden_telas` INT(8),
	`capas_minimas` INT(8),
	`capas_maximas` INT(8),
	`prendas_demasia` INT(8),
	`prendas_falladas` INT,
	`estado_corte_orden_telas` VARCHAR(100), -- 
	`observaciones_corte_orden_telas` VARCHAR(100),
	`fecha_ingreso_corte_orden_telas` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_orden_guia_corte
	fk_id_usuario_4
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA DISEÑO --
CREATE TABLE `diseno_micas`(
	`id_diseno_micas` INT,
	`nombre_referencia_diseno` VARCHAR(45),
	`colores_de_separacion` INT,
	`lineaje_de_impresion` VARCHAR(5),
	`ancho_mica_usada_impresion` INT,
	`largo_mica_usada_impresion` INT,
	`estado_mica_impresion` VARCHAR(15),
	`veces_de_impresion` INT,
	`imagen_diseno` VARCHAR(70), -- revisar si esta bien aqui
	`cambios_para_produccion` VARCHAR(500),
	`observaciones_diseno_produccion` VARCHAR(100),
	`fecha_de_impresion` DATETIME
	fk_id_usuario_6
	fk_id_orden_produccion
	fk_id_estilos
	fk_id_orden_estampado_programacion
	fk_id_diseno_ficha
	fk_id_codigos_orden_produccion
);


-- TABLA DISENO_MICAS
CREATE TABLE `diseno_fichas`(
	`id_diseno_ficha` INT,
	`estado_diseno_ficha` VARCHAR	
	`observaciones_diseno_fichas` VARCHAR(45),
	`fecha_registro_diseno_fichas` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario
);


-- TABLA COMENTARIOS DE USUARIOS --> entidad
CREATE TABLE `comentarios`(
	`id_comentarios` INT(8),
	`comentarios`
	`fecha_comentarios`
	fk_id_usuarios
	fk_id_estilo
	fk_id_ordenes_produccion
	fk_id_gestion_tela
	fk_id_ordenes_guias_cortes
	fk_id_corte_orden_tela
	fk_id_diseno_mica
	fk_id_diseno_ficha
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA VERIFICACION CONTROL ENTREGAS
CREATE TABLE `verificaciones_control_entregas`(
	`id_verificacion_control_entregas` INT
	`nombre_verificacion_control` VARCHAR  -- verificado,no_verificado
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario
);


-- TABLA TECNICAS DE ESTAMPADO
CREATE TABLE `tecnicas_estampado`(
	`id_tecnicas_estampado` INT -- PUFF,GLITTER,SUGAR,SPAY_FLEY,ETC
	`nombre_tecnica_estampado` VARCHAR
	`descripcion_tecnica` VARCHAR
	`foto_tecnica` VARCHAR
	`fecha_registro_tecnica_estampado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario
);


-- TABLA ETIQUETA ESTAMPADA
CREATE TABLE `etiquetas_estampadas`(
	`id_etiqueta_estampada` INT
	`nombre_etiqueta_estampada` VARCHAR
	`foto_etiqueta_estampada` VARCHAR
	`fecha_registro_etiqueta_estampada` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_cliente
	fk_id_usuario
);


-- TABLA PATRONAJE Y MOLDES
CREATE TABLE `patronaje_moldes`(
	`id_patronaje_moldes` INT
	`ubicacion_diseno` VARCHAR(70),
	`estado_patronaje_molde` VARCHAR
	`fecha_registro_patronaje_molde` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario
	fk_id_orden_produccion
	fk_id_etiqueta_lavado
	fk_id_etiqueta_estampada
	fk_id_tipo_prenda
);


-- TABLA MAQUINAS Y ESTAMPADO
CREATE TABLE `maquinas_estampado`(   -- maquina1, maquina2,maquina3,maquina4_etiquetera
	`id_maquina_estampado` INT
	`nombre_maquina` VARCHAR
	`descripcion_maquina` VARCHAR
	`produccion_aprox_dia` INT
	`ancho_plato` INT
	`largo_plato` INT
	`brazos_maquina_estampado` INT
	`estado_maquina_estampado`
	`fecha_registro_maquina_estampado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
);


-- TABLA REVELADO ESTAMPADO
CREATE TABLE `revelado_estampado`(
	`id_revelado_estampado` INT
	`estado_revelado_estampado` VARCHAR
	`fecha_registro_revelado_estampado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario
	fk_id_diseno_micas
	fk_id_orden_produccion
	fk_id_etiqueta_estampada
	fk_id_diseno_ficha 
);


-- TABLA MUESTRAS ESTAMPADO
CREATE TABLE `muestras_estampado`(
	`id_muestras_estampado` INT
	`comentarios_muestras` VARCHAR
	`estado_muestras` VARCHAR 
	`fecha_registro_muestra_estampado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_orden_produccion
	fk_id_patronaje_moldes
	fk_id_usuario
	fk_id_diseno_ficha 
);


-- TABLA PLANCHADO
CREATE TABLE `planchado`(
	`id_planchado` INT
	`observaciones_planchado` VARCHAR
	`estado_planchado` VARCHAR 
	`fecha_registro_planchado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_orden_produccion
	fk_id_patronaje_moldes
	fk_id_usuario
	fk_id_diseno_ficha 
);


-- TABLA ORDEN ESTAMPADO PROGRAMACION
CREATE TABLE `orden_estampado_programacion`( -- ordenar por maquina x fecha x recursos
	`id_orden_estampado_programacion` INT
	`estado_programacion` VARCHAR
	`observaciones_programacion` VARCHAR
	`fecha_produccion` DATETIME
	`fecha_registro_programacion` DATETIME
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_ordenes_guias_cortes
	fk_id_maquina_estampado
	fk_id_usuario
);


-- TABLA CONTROL DE DISTRIBUCION
CREATE TABLE `control_distribucion`(
	`id_control_distribucion` INT
	`estado_control_distribucion` VARCHAR -- agregar mas campos
	`fecha_registro_control_distribucion` DATETIME
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_usuario
	fk_id_orden_produccion
);




-- TABLA CODIGO ORDEN DE PRODUCCION  -- revisar
CREATE TABLE `codigos_orden_produccion`( -- solucionar el ingreso de datos de codigos
	`id_codigo_orden_produccion` INT
	`estado_codigo_orden_produccion` VARCHAR -- agregar mas campos
	`fecha_registro_codigo_orden_produccion` DATETIME
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_usuario
	fk_id_orden_produccion
);


-- TABLA SEGUIMIENTO DE MUESTRAS DE ESTAMPADO    -- revisar
CREATE TABLE `seguimiento_muestras_estampado`(
	`id_seguimiento_muestras_estampado` INT
	`estado_seguimiento_muestras_estampado` VARCHAR -- agregar mas campos
	`fecha_registro_seguimiento_muestras_estampado` DATETIME
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_usuario
	fk_id_orden_produccion
	fk_id_estilo
);


-- TABLA ESTADOS PROCESOS    -- revisar
CREATE TABLE `estados_procesos`( -- pendiente-gris / confirmado-verde / en proceso-amarillo / atrazado-rojo / finalizado-azul
	`id_estado_proceso` INT
	`nombre_estado` VARCHAR
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_usuario
);