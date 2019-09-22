-- TABLA USUARIO --> entidad
CREATE TABLE `personas`(
    `id_persona` INT(8) AUTO_INCREMENT,
    `nombres` VARCHAR(45) NOT NULL,
    `apellidos` VARCHAR(45) NOT NULL,
    `email` VARCHAR(20) NOT NULL,
    `foto` VARCHAR(50), 
    `fecha_alta_persona` DATETIME /* -- ver si se puede mejorar el tipo de campo -- */
    `fecha_baja_persona` DATETIME /* -- ver si se puede mejorar el tipo de campo -- */
    CONSTRAINT
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- TABLA USUARIO -->  entidad
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


-- TABLA LISTA DE AVIOS --> entidad  - 	REVISAR
CREATE TABLE `lista_avios`( 
    `id_avios` INT(8),
    `nombre_avios` VARCHAR(25)
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;

-- TABLA HANGTAGS --> entidad   - 	REVISAR
CREATE TABLE `hangtags`(
	`id_hangtag` INT(8),
	`marca_hangtag` VARCHAR(15),
	`gramaje_hangtag` VARCHAR(5),
	`efecto_hangtag` VARCHAR(15),
	`plastificado_hangtag` VARCHAR(5),
	`dimension_ancho` INT(5),
	`dimension_largo` INT(5)
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;

-- TABLA AVIOS --> entidad  - 	REVISAR
CREATE TABLE `avios`(
	`id_avios` INT(8),
	`etiqueta_precios` INT(8),
	`etiquetas_talleros` INT(8),
	`broches` INT(8),
	`ganchos` INT(8),
	`tuil` INT(8),
	`elasticos` INT(8),
	`soguilla` INT(8),
	`bolsas` INT(8),
	`pines_de_seguridad` INT(8),
	fk_id_orden_guia_corte
	fk_id_hangtag1
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;

-- TABLA ORDEN DE PRODUCCION --> entidad
CREATE TABLE `ordenes_produccion`(
	`id_orden_produccion` INT(8),
	`cliente` VARCHAR(30),
	`estilo` VARCHAR(30),
	`descripcion` VARCHAR(100),
	`cantidad_prendas` INT(10),
	`tallas` VARCHAR(20),
	`curva` VARCHAR(20),
	`color_tela` VARCHAR(15),
	`tipo_tela` VARCHAR(15),
	`estado_orden_produccion` VARCHAR(15),
	`fecha_embarque` DATETIME,
	`fecha_registro_orden_produccion` DATETIME,
	`fecha_registro_ultima_actualizacion` DATETIME,
	`observaciones_ordenes_produccion` VARCHAR(100),
	fk_id_avios1(etiqueta_lavado)
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA REQUERIMIENTO DE TELAS
CREATE TABLE `requerimiento_telas`(
	`id_requerimiento_telas` INT(8),
	`fecha_requerimiento_telas` DATETIME,
	fk_id_orden_produccion
	fk_id_usuario
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA GESTION TELAS --> entidad
CREATE TABLE `gestion_telas`(
	`id_gestion_telas` VARCHAR(8),
	`codigo_tela` VARCHAR(20),
	`partida_tela` VARCHAR(20),
	`nombre_color_tela_proveedor` VARCHAR(15),
	`rollos_requeridos` INT(8),
	`consumo_prenda` INT(8),
	`tipo_tejido` VARCHAR(15),
	`porcentaje_componentes` VARCHAR(25),
	`rib_requerido` INT(8),
	`estado_gestion_telas` VARCHAR(15),
	`fecha_llegada_almacen_telas` DATETIME,
	`fecha_ultima_actualizacion` DATETIME,
	`observaciones_gestion_telas` VARCHAR(100),
	fk_id_requerimiento_telas
	fk_id_orden_produccion
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA ORDENES DE GUIA DE CORTE --> entidad
CREATE TABLE `ordenes_guias_cortes`(
	`id_ordene_guia_corte` INT(5),
	`fecha_orden_guia_corte` DATETIME,
	fk_id_usuario
	fk_id_orden_produccion
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;

-- TABLA CORTE DE TELAS --> entidad
CREATE TABLE `corte_telas`(
	`id_corte_telas` INT(8),
	`capas_minimas` INT(8),
	`capas_maximas` INT(8),
	`prendas_demasia` INT(8),
	`observaciones_corte_telas` VARCHAR(100),
	fecha_corte
	fk_id_orden_guia_corte
	fk_id_gestion_telas
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


-- TABLA COMENTARIOS DE USUARIOS --> entidad
CREATE TABLE `comentarios`(
	`id_comentarios` INT(8),
	`comentarios`
	`fecha_comentarios`
	fk_ id_usuarios
	fk_id_guia
	fk_id_orden_produccion
)ENGINE=InnoDB DEFAULT CHARSET=utf8_spanish_ci;


CREATE TABLE `patronaje_moldes`

CREATE TABLE `diseno`

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



verificaciones
