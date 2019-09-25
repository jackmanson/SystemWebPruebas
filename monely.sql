-- TABLA USUARIO --> entidad - fuerte
CREATE TABLE `personas`(
    `id_persona` INT(8) AUTO_INCREMENT,
    `nombres` VARCHAR(45) NOT NULL,
    `apellidos` VARCHAR(45) NOT NULL,
    `email` VARCHAR(20) NOT NULL,
    `foto` VARCHAR(50), 
    `fecha_alta_persona` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    `fecha_baja_persona` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    CONSTRAINT
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- TABLA USUARIO -->  entidad - debil
CREATE TABLE `usuarios`(
    `id_usuario` INT(8),
    `nickname` VARCHAR(10),
    `pass` VARCHAR(60) NOT NULL,
    `perfil_usuario` VARCHAR(15), /* administrador - editor - consultor*/
    `area_trabajo` VARCHAR(15),
    `estado_usuario` VARCHAR(15),
    `fecha_alta_usuario` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    `fecha_baja_usuario` DATETIME, /* -- ver si se puede mejorar el tipo de campo -- */
    fk_id_personas1
    CONSTRAINT
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;

-- TABLA TIPO_PRENDA
CREATE TABLE `tipo_prenda_lista`( -- 
	`id_tipo_prenda` INT,
	`nombre_tipo_prenda` VARCHAR(45), -- polo, body , canesu, etc.
	`descripcion` VARCHAR(100),
	`fecha_registro_tipo_prenda` DATETIME
	fk_id_tecnicas_estampado -- total, parcial, pecho, espalda
);

-- TABLA ESTILOS
CREATE TABLE `estilos`(
	`id_estilo` INT,
	`nombre_estilo` VARCHAR(45),
	`descripcion` VARCHAR(100),
	`cantidad_prendas` INT(10),
	`tallas` VARCHAR(20), -- resolver problema con tallas
	`curva` VARCHAR(20), -- resolver problema con curva
	fk_tipo_prenda_1 VARCHAR(45), -- leggings, polo, falda, short, bodys ,etc
	fk_id_tecnica_estampado -- puff - glitter - plano - dischard - suave - etc
	fk_id_ordenes_produccion
	fk_id_diseno_fichas -- total, parcial, pecho, espalda 
);

-- TABLA ORDEN DE PRODUCCION --> entidad
CREATE TABLE `ordenes_produccion`(
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
	`fecha_registro_proveedor` DATETIME,
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
CREATE TABLE `hangtags`(
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
CREATE TABLE `proveedores`(
	`id_proveedor` INT,
	`razon_social_proveedor` VARCHAR(45),
	`insumo` VARCHAR(45),
	`fecha_registro_proveedor` DATETIME,
);


-- TABLA INTERMEDIA HANGTAG Y PROVEEDORES
CREATE TABLE `ordenProduccion_etiquetaLavado`(
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
CREATE TABLE `colores_telas`(
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
CREATE TABLE `colores_rip`(
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
CREATE TABLE `pedido_telas`(
	`id_gestion_telas` VARCHAR(8),
	`consumo_prenda` INT(8),
	`rollos_requeridos` INT(8),
	`estado_gestion_telas` VARCHAR(15),
	`fecha_llegada_almacen_telas` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_gestion_telas` VARCHAR(100),
	fk_id_orden_produccion
	fk_id_usuario_2
	fk_colores_telas
	fk_colores_rip
	fk_id_ordenes_guias_cortes
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA ORDENES DE GUIA DE CORTE --> entidad
CREATE TABLE `ordenes_guias_cortes`(
	`id_orden_guia_corte` INT(5),
	`estado_orden_guia_corte` VARCHAR(15),
	`fecha_registro_guia_corte` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_orden_guia_corte` VARCHAR(100),
	fk_id_usuario_3
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA CORTE DE TELAS --> entidad
CREATE TABLE `corte_telas`(
	`id_corte_telas` INT(8),
	`capas_minimas` INT(8),
	`capas_maximas` INT(8),
	`prendas_demasia` INT(8),
	`prendas_falladas` INT,
	`estado_corte_telas` VARCHAR(100),
	`observaciones_corte_telas` VARCHAR(100),
	`fecha_alta_corte` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_orden_guia_corte
	fk_id_gestion_telas
	fk_id_usuario_4
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA DISEÑO --
CREATE TABLE `diseno_micas`(
	`id_diseno` INT,
	`nombre_referencia_diseno` VARCHAR(45),
	`colores_de_separacion` INT,
	`lineaje_de_impresion` VARCHAR(5),
	`ancho_mica_usada_impresion` INT,
	`largo_mica_usada_impresion` INT,
	`estado_mica_impresion` VARCHAR(15),
	`veces_de_impresion` INT,
	`ubicacion_diseno_servidor` VARCHAR(70),
	`imagen_diseno` VARCHAR(70), -- revisar si esta bien aqui
	`cambios_produccion` VARCHAR(500),
	`observaciones_diseno` VARCHAR(100),
	`fecha_de_impresion` DATETIME
	fk_id_usuario_6
	fk_id_maquina_estampado
	fk_id_orden_produccion
	fk_id_estilos
);


-- TABLA FICHA --
CREATE TABLE `diseno_fichas`(
	`id_diseno_ficha` INT,
	`disenos_genero` VARCHAR(45), -- mujer, hombre, niño, niña, bebe,bebo
	`imagen_ficha_disenos` VARCHAR(45),

	fk_id_usuario_7
	fk_id_codigos_orden_produccion
);


-- TABLA COMENTARIOS DE USUARIOS --> entidad
CREATE TABLE `comentarios`(
	`id_comentarios` INT(8),
	`comentarios`
	`fecha_comentarios`
	fk_ id_usuarios
	fk_id_guia
	fk_id_orden_produccion
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


CREATE TABLE `tecnicas_estampado`

CREATE TABLE `seguimientos_muestras`

CREATE TABLE `etiquetas_diseno_lavado`

CREATE TABLE `etiquetas_estampadas`

CREATE TABLE `patronaje_moldes`

CREATE TABLE `estampado_revelado`

CREATE TABLE `estampado_muestras`

CREATE TABLE `estampado_planchado`

CREATE TABLE `estampado_maquina1`

CREATE TABLE `estampado_maquina2`

CREATE TABLE `estampado_maquina3`

CREATE TABLE `estampado_maquina4_etiquetera`

CREATE TABLE `estampado_programacion`

CREATE TABLE `control_distribucion`

CREATE TABLE `lista_proveedores`

