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


-- TABLA ORDEN DE PRODUCCION --> entidad
CREATE TABLE `ordenes_produccion`(
	`id_orden_produccion` INT(8),
	`cliente` VARCHAR(30),
	`estado_orden_produccion` VARCHAR(15),
	`fecha_embarque` DATETIME,
	`fecha_registro_orden_produccion` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_ordenes_produccion` VARCHAR(100),
	fk_id_avios1(etiqueta_lavado)
	fk_	estilo_1 -- etiqueta lavado
	fk_id_diseno_fichas -- total, parcial, pecho, espalda 
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA COLOR DE TELAS
CREATE TABLE `colores_telas`(
	`id_colores_telas` INT,
	`color_tela` VARCHAR(15),
	`tipo_tela` VARCHAR(15),
	`estado_tipo_tela` VARCHAR(15),
	`fecha_registro_tela` DATETIME
);



-- TABLA ESTILOS
CREATE TABLE `estilos`(
	`id_estilo` INT,
	`nombre_estilo` VARCHAR(45),
	`tipo_prenda` VARCHAR(45), -- leggings, polo, falda, short, bodys ,etc
	`descripcion` VARCHAR(100),
	`cantidad_prendas` INT(10),
	`tallas` VARCHAR(20),
	`curva` VARCHAR(20),
	fk_id_tecnicas_estampado -- total, parcial, pecho, espalda 
);


-- TABLA GESTION TELAS --> entidad
CREATE TABLE `gestion_telas`(
	`id_gestion_telas` VARCHAR(8),
	`codigo_tela` VARCHAR(20),
	`partida_tela` VARCHAR(20),
	`nombre_color_tela_proveedor` VARCHAR(15),
	`rollos_requeridos` INT(8),
	`tipo_rollo` VARCHAR(45), -- abierta, tubular
	`consumo_prenda` INT(8),
	`tipo_tejido` VARCHAR(15),
	`porcentaje_componentes` VARCHAR(25),
	`rib_requerido` INT(8),
	`estado_gestion_telas` VARCHAR(15),
	`fecha_llegada_almacen_telas` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_gestion_telas` VARCHAR(100),
	fk_id_orden_produccion
	fk_id_usuario_2
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA ORDENES DE GUIA DE CORTE --> entidad
CREATE TABLE `ordenes_guias_cortes`(
	`id_orden_guia_corte` INT(5),
	`estado_orden_guia_corte` VARCHAR(15),
	`fecha_registro_guia_corte` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_orden_guia_corte` VARCHAR(100),
	fk_id_usuario_3
	fk_id_orden_produccion
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


-- TABLA AVIOS --> entidad  
CREATE TABLE `avios`(
	`id_avios` INT(8),
	`etiquetas_talleros` INT(8),
	`etiqueta_precios` INT(8),
	`hangtags` INT,
	`ganchos` INT(8),
	`sensores` INT,
	`bolsas` INT(8),
	`broches` INT(8),
	`tuils` INT(8),
	`soguillas` INT(8),
	`elasticos` INT(8),
	`demasia` INT,	
	`estado_avios` VARCHAR(15),
	`fecha_ultima_actualizacion` DATETIME,
	fk_id_orden_guia_corte
	fk_id_usuario_5
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
	`id_diseno_fichas` INT,
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
	`fk_ id_usuarios`
	`fk_id_guia`
	`fk_id_orden_produccion`
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


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

