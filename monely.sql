-- TABLA USUARIO --> entidad - fuerte
CREATE TABLE `personas`( -- Registros que llenan por usuario
    `id_persona` INT(8) AUTO_INCREMENT,
    `nombres` VARCHAR(45) NOT NULL,
    `apellido_paterno` VARCHAR(45) NOT NULL,
    `apellido_materno` VARCHAR(45) NOT NULL,
    `telefono` VARCHAR(20) NOT NULL,
    `direccion` VARCHAR(60) NOT NULL,
    `email` VARCHAR(35) NOT NULL,
    `foto` VARCHAR(100), 
    `fecha_alta_persona` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    `fecha_baja_persona` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    `fk_id_estado_actividad_1`INT(8), -- estado persona --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
    CONSTRAINT pk_id_persona PRIMARY KEY (id_persona),
    CONSTRAINT fk_id_estado_actividad FOREIGN KEY (fk_id_estado_actividad_1)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- TABLA USUARIO -->  entidad - debil
CREATE TABLE `usuarios`( -- Registros que llenan por usuario
    `id_usuario` INT(8) AUTO_INCREMENT,
    `nickname` VARCHAR(15),
    `pass` VARCHAR(100),
    `perfil_usuario` VARCHAR(20), /* administrador - editor - consultor*/
    `area_trabajo` VARCHAR(15), /* administracion,comercial,diseño,patronaje,corte,estampado,telas,control y empaque */
    `fecha_alta_usuario` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    `fecha_baja_usuario` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    fk_id_persona_1
    fk_id_estado_actividad_2  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
    CONSTRAINT
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA TIPO_PRENDA
CREATE TABLE `tipo_prenda_lista`( --- Registros que llenan por usuario
	`id_tipo_prenda` INT(8) AUTO_INCREMENT,
	`nombre_tipo_prenda` VARCHAR(45), -- polo, body , canesu, etc.
	`descripcion` VARCHAR(100),
	`fecha_registro_tipo_prenda` DATETIME
	fk_id_tecnica_estampado -- total, parcial, pecho, espalda
);


-- TABLA ESTILOS
CREATE TABLE `estilos`( -- Registros que llenan por usuario
	`id_estilo` INT(8) AUTO_INCREMENT,
	`nombre_estilo` VARCHAR(45),
	`estilo_genero` VARCHAR(45), -- mujer, hombre, niño, niña, bebe,bebo
	`descripcion` VARCHAR(100),
	`cantidad_prendas` INT(10),
	`tallas` VARCHAR(20), -- resolver problema con tallas
	`curva` VARCHAR(20), -- resolver problema con curva
	fk_tipo_prenda_lista_1 VARCHAR(45), -- leggings, polo, falda, short, bodys ,etc
	fk_id_tecnica_estampado -- puff - glitter - plano - dischard - suave - etc
	fk_id_ordene_produccion
	fk_id_diseno_ficha -- total, parcial, pecho, espalda 
	fk_id_hangtag
	fk_id_etiqueta_lavado_1
);


-- TABLA ORDEN DE PRODUCCION --> entidad
CREATE TABLE `ordenes_produccion`( -- Registros que llenan por usuario
	`id_orden_produccion` INT(8) AUTO_INCREMENT,
	`observaciones_orden_produccion` VARCHAR(100),
	`fecha_registro_orden_produccion` DATETIME,
	`fecha_embarque` DATETIME,
	fk_id_ordenes_guia_corte
	fk_id_cliente_1
	fk_id_estado_actividad_3 -- estado de produccion
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA CLIENTES
CREATE TABLE `clientes`(
	`id_cliente` INT(8) AUTO_INCREMENT,
	`razon_social_cliente` VARCHAR(45),
	`ruc_cliente` VARCHAR(45),
	`direccion_cliente` VARCHAR(70),
	`fecha_registro_cliente` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_usuario_1
	fk_id_estado_actividad_4 -- estado de cliente
);


-- TABLA ETIQUETA AVIOS
CREATE TABLE `etiqueta_lavado`(
	`id_etiqueta_lavado` INT(8) AUTO_INCREMENT,
	`imagen_etiqueta_lavado` VARCHAR(75),
	`fecha_registro_etiqueta` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_usuario_2
);


-- TABLA INTERMIEDIA ORDEN_PRODUCCION Y ETIQUETA_LAVADO
CREATE TABLE `ordenProduccion_etiquetaLavado`(
	fk_id_orden_produccion
	fk_id_etiqueta_lavado_2
);


-- TABLA AVIOS --> entidad  
CREATE TABLE `avios`(
	`id_avio` INT(8) AUTO_INCREMENT,
	`nombre_avio` VARCHAR(20) --talleros, precios, hangtag,ganchos,
	`imagen_avio` INT(8),--sensores, bolsas,broches,tuil,
	`fecha_ultima_actualizacion` DATETIME, -- soguillas,elasticos,
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA HANGTAGS
CREATE TABLE `hangtags`( -- Registros que llenan por usuario
	`id_hangtag` INT(8) AUTO_INCREMENT,
	`nombre_hangtag` VARCHAR(20) --talleros, precios, hangtag,ganchos,
	`imagen_hangtag` VARCHAR(8),--sensores, bolsas,broches,tuil,
	`ancho_hangtag` INT
	`largo_hangtag` INT
	`descripcion_hangtag` VARCHAR
	`cargar_archivo_hangtag` -- enlace de la ubicacion del archivo 
	`fecha_registro_hangtag` DATETIME
	`fecha_ultima_actualizacion` DATETIME, -- soguillas,elasticos,
	fk_id_cliente_2
	fk_id_usuario_3
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA PEDIDOS DE HANGTAGS 
CREATE TABLE `hangtags_pedido`( -- Registros que llenan por usuario
	`id_pedido_hangtag` INT(8) AUTO_INCREMENT,
	`cantidad_hangtags` INT
	`observaciones_pedido_hangtag`
	`fecha_registro_pedido_hangtag` DATETIME
	`fecha_ultima_actualizacion` DATETIME, -- soguillas,elasticos,
	fk_id_cliente_3
	fk_id_usuario_4
	fk_id_proveedor
	fk_id_hangtag
	fk_id_estado_actividad_5 -- estado de hangtag pedido
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA PROVEEDORES
CREATE TABLE `proveedores`( -- Registros que llenan por usuario
	`id_proveedor` INT(8) AUTO_INCREMENT,
	`razon_social_proveedor` VARCHAR(45),
	`ruc_proveedor` VARCHAR(45),
	`direccion_proveedor` VARCHAR(70),
	`nombre_insumo` VARCHAR(45),
	`fecha_registro_proveedor` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_usuario_5
	fk_id_estado_actividad_6 -- estado de proveedor
);


-- TABLA INTERMEDIA HANGTAG Y PROVEEDORES
CREATE TABLE `ordenProduccion_hangtags`(
	fk_id_hangtag
	fk_id_proveedor 
);


-- TABLA INTERMEDIA ESTILOS Y COLORES_TELAS
CREATE TABLE `estilos_coloresTelas`(
	fk_id_estilo_1
	fk_id_color_tela
);


-- TABLA INTERMEDIA ESTILOS Y COLORES_TELAS
CREATE TABLE `estilos_coloresRip`(
	fk_id_estilo_2
	fk_id_color_rip
);


-- TABLA COLOR DE TELAS
CREATE TABLE `colores_telas`(  -- Registros que llenan por usuario
	`id_color_tela` INT(8) AUTO_INCREMENT,
	`codigo_tela` VARCHAR(20),
	`partida_tela` VARCHAR(20),
	`color_tela_interno` VARCHAR(15),
	`nombre_color_tela_proveedor` VARCHAR(15),
	`porcentaje_componentes` VARCHAR(25), -- 100% algodon 
	`tipo_rollo` VARCHAR(45), -- abierta, tubular
	`tipo_tela` VARCHAR(15), -- jersey, gamuza, melange, 
	`tejido_tela` VARCHAR(45), -- 30/1 - 24/1 - 20/1
	`fecha_registro_tela` DATETIME,
	fk_id_proveedor
 	fk_id_usuario_6
 	fk_id_estado_actividad_7  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA COLOR DE RIP
CREATE TABLE `colores_rip`( -- Registros que llenan por usuario
	`id_color_rip` INT(8) AUTO_INCREMENT,
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
	fk_id_proveedor
	fk_id_usuario_7
	fk_id_estado_actividad_8  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA GESTION TELAS --> entidad  
CREATE TABLE `pedido_telas`( -- esto se mide a nivel de orden de produccion
	`id_pedido_tela` INT(8) AUTO_INCREMENT,  -- Registros que llenan por usuario
	`consumo_prenda` INT(8),
	`pedido_rollos` INT(8),
	`fecha_llegada_almacen_tela` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_pedido_tela` VARCHAR(100),
	fk_id_orden_produccion
	fk_id_usuario_8
	fk_id_ordenes_guia_corte
	fk_id_estado_actividad  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA ORDENES DE GUIA DE CORTE --> entidad
CREATE TABLE `ordenes_guias_cortes`( -- Registros que llenan por usuario
	`id_orden_guia_corte` INT(8) AUTO_INCREMENT,
	`fecha_registro_guia_corte` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_orden_guia_corte` VARCHAR(100),
	fk_id_usuario_9
	fk_id_estado_actividad_9  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA CORTE DE TELAS --> entidad
CREATE TABLE `corte_orden_telas`( -- Registros que llenan por usuario
	`id_corte_orden_tela` INT(8) AUTO_INCREMENT,
	`capas_minimas` INT(8),
	`capas_maximas` INT(8),
	`corte_demasia` INT(8),
	`corte_fallados` INT,
	`ancho_rollo` INT -- resta 2 centimetros de cada extremo 
	`largo_rollo` INT
	`numero_mesa` INT -- mesa 1 / mesa 2 / mesa 3
	`observaciones_corte_orden_tela` VARCHAR(100),
	`fecha_ingreso_corte_orden_tela` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_orden_guia_corte
	fk_id_usuario_10
	fk_id_estado_actividad_10  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA DISEÑO --
CREATE TABLE `diseno_micas`(
	`id_diseno_mica` INT(8) AUTO_INCREMENT,
	`nombre_referencia_diseno` VARCHAR(45),
	`colores_de_separacion` INT,
	`lineaje_de_impresion` VARCHAR(5),
	`ancho_mica_usada_impresion` INT,
	`largo_mica_usada_impresion` INT,
	`veces_de_impresion` INT,
	`imagen_diseno` VARCHAR(70), -- revisar si esta bien aqui
	`cambios_para_produccion` VARCHAR(500),
	`observaciones_diseno_produccion` VARCHAR(100),
	`fecha_de_impresion` DATETIME
	fk_id_usuario_11
	fk_id_orden_produccion
	fk_id_estilo
	fk_id_orden_estampado_programacion
	fk_id_diseno_ficha
	fk_id_codigos_orden_produccion
	fk_id_estado_actividad_11  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA DISENO_MICAS
CREATE TABLE `diseno_fichas`(
	`id_diseno_ficha` INT(8) AUTO_INCREMENT,
	`observaciones_diseno_ficha` VARCHAR(45),
	`fecha_registro_diseno_ficha` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario_12
	fk_id_estado_actividad_12  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA TECNICAS DE ESTAMPADO
CREATE TABLE `tecnicas_estampado`(
	`id_tecnica_estampado` INT(8) AUTO_INCREMENT, -- PUFF,GLITTER,SUGAR,SPAY_FLEY,ETC
	`nombre_tecnica_estampado` VARCHAR
	`descripcion_tecnica` VARCHAR
	`foto_tecnica` VARCHAR
	`fecha_registro_tecnica_estampado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario_13
);


-- TABLA ETIQUETA ESTAMPADA
CREATE TABLE `etiquetas_estampadas`(
	`id_etiqueta_estampada` INT(8) AUTO_INCREMENT,
	`nombre_etiqueta_estampada` VARCHAR
	`foto_etiqueta_estampada` VARCHAR
	`fecha_registro_etiqueta_estampada` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_cliente_4
	fk_id_usuario_14
);


-- TABLA MAQUINAS Y ESTAMPADO
CREATE TABLE `maquinas_estampado`(   -- maquina1, maquina2,maquina3,maquina4_etiquetera
	`id_maquina_estampado` INT(8) AUTO_INCREMENT,
	`nombre_maquina` VARCHAR
	`descripcion_maquina` VARCHAR
	`produccion_aprox_dia` INT
	`ancho_plato` INT
	`largo_plato` INT
	`brazos_maquina_estampado` INT
	`fecha_registro_maquina_estampado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_estado_actividad_13  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA REVELADO ESTAMPADO
CREATE TABLE `revelado_estampado`(
	`id_revelado_estampado` INT(8) AUTO_INCREMENT,
	`fecha_registro_revelado_estampado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario_15
	fk_id_diseno_micas
	fk_id_orden_produccion
	fk_id_etiqueta_estampada
	fk_id_diseno_ficha 
	fk_id_estado_actividad_14  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo


-- TABLA MUESTRAS ESTAMPADO
CREATE TABLE `muestras_estampado`(
	`id_muestra_estampado` INT(8) AUTO_INCREMENT,
	`comentarios_muestra` VARCHAR
	`fecha_registro_muestra_estampado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_orden_produccion
	fk_id_patronaje_molde
	fk_id_usuario_16
	fk_id_diseno_ficha 
	fk_id_estado_actividad_15  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA PLANCHADO
CREATE TABLE `planchado`(
	`id_planchado` INT(8) AUTO_INCREMENT,
	`observaciones_planchado` VARCHAR
	`estado_planchado` VARCHAR 
	`fecha_registro_planchado` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_orden_produccion
	fk_id_patronaje_molde
	fk_id_usuario_17
	fk_id_diseno_ficha 
	fk_id_estado_actividad_16  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA ORDEN ESTAMPADO PROGRAMACION
CREATE TABLE `orden_estampado_programacion`( -- ordenar por maquina x fecha x recursos
	`id_orden_estampado_programacion` INT(8) AUTO_INCREMENT,
	`observaciones_programacion` VARCHAR
	`fecha_produccion` DATETIME
	`fecha_registro_programacion` DATETIME
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_ordene_guia_corte
	fk_id_maquina_estampado
	fk_id_usuario_18
	fk_id_estado_actividad_17  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA ESTADOS PROCESOS  --> para todos los estados de procesos
CREATE TABLE `estados_actividad`( -- pendiente-gris / confirmado-verde / en proceso-amarillo / atrazado-rojo / finalizado-azul
	`id_estado_actividad` INT(8) AUTO_INCREMENT, -- estado persona --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
	`nombre_estado` VARCHAR -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_usuario_19
);


-- TABLA COMENTARIOS DE USUARIOS --> entidad
CREATE TABLE `comentarios`(
	`id_comentario` INT(8) AUTO_INCREMENT,
	`comentarios`
	`fecha_comentario`
	fk_id_usuario_20
	fk_id_estilo_3
	fk_id_orden_produccion_1
	fk_id_pedido_hangtag
	fk_id_pedido_tela
	fk_id_orden_guia_corte
	fk_id_corte_orden_tela
	fk_id_diseno_mica
	fk_id_diseno_ficha
	fk_id_revelado_estampado
	fk_id_planchado 
	fk_id_orden_estampado_programacion 
	fk_id_control_distribucion 
	fk_id_patronaje_molde
	fk_id_codigo_orden_produccion 
	fk_id_seguimiento_muestra_estampado 
	fk_id_verificacion_control_entrega
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;








-- TABLA CONTROL DE DISTRIBUCION
CREATE TABLE `control_distribucion`( -- revision de esta tabla
	`id_control_distribucion` INT(8) AUTO_INCREMENT,
	`fecha_registro_control_distribucion` DATETIME
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_usuario_21
	fk_id_orden_produccion_2
	fk_id codigos_orden_produccion
	fk_id_patronaje_molde
	fk_id_etiqueta_estampada
	fk_id_diseno_ficha
	fk_id_corte_orden_tela
	fk_id_estado_actividad_18  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA PATRONAJE Y MOLDES
CREATE TABLE `patronaje_moldes`(
	`id_patronaje_molde` INT(8) AUTO_INCREMENT,
	`ubicacion_diseno` VARCHAR(70),
	`fecha_registro_patronaje_molde` DATETIME
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario_22
	fk_id_orden_produccion_3
	fk_id_etiqueta_lavado_3
	fk_id_etiqueta_estampada
	fk_id_tipo_prenda
	fk_id_estado_actividad_19  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA SEGUIMIENTO DE MUESTRAS DE ESTAMPADO    -- revisar
CREATE TABLE `seguimiento_muestras_estampado`(
	`id_seguimiento_muestra_estampado` INT(8) AUTO_INCREMENT,
	`fecha_registro_seguimiento_muestra_estampado` DATETIME
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_usuario_23
	fk_id_orden_produccion_4
	fk_id_estilo_4
	fk_id_estado_actividad_20  -- estado usuario --> activo - verde / usuario transitivo o temporal - naranja / inactivo - rojo
);


-- TABLA CODIGO ORDEN DE PRODUCCION  -- revisar
CREATE TABLE `codigos_orden_produccion`( -- solucionar el ingreso de datos de codigos
	`id_codigo_orden_produccion` INT(8) AUTO_INCREMENT,
	`estado_codigo_orden_produccion` VARCHAR -- agregar mas campos
	`fecha_registro_codigo_orden_produccion` DATETIME
	`fecha_ultima_actualizacion` VARCHAR
	fk_id_usuario_24
	fk_id_orden_produccion_5
);


-- TABLA VERIFICACION CONTROL ENTREGAS --------> 
CREATE TABLE `verificaciones_control_entregas`(
	`id_verificacion_control_entrega` INT(8) AUTO_INCREMENT,
	`nombre_verificacion_control` VARCHAR  -- verificado,no_verificado
	`fecha_ultima_actualizacion` DATETIME
	fk_id_usuario_25
);


