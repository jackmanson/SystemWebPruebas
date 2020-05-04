/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  jackmanson
 * Created: 8 abr. 2020
 */

-- -----------------------------------------------------
-- Schema db_monely
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_monely_portal` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `db_monely_portal` ;


-- -----------------------------------------------------
-- Table `db_monely_portal`.`suscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely_portal`.`suscripcion` (
  `id_suscripcion` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  `fecha_suscripcion` TIMESTAMP,
  PRIMARY KEY (`id_suscripcion`),
  CONSTRAINT uq_email UNIQUE (email))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `db_monely_portal`.`contacto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_monely_portal`.`contacto` (
  `id_contacto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `email` VARCHAR(50) NULL,
  `comentario` VARCHAR(400) NULL,
  `fecha_registro` TIMESTAMP,
  PRIMARY KEY (`id_contacto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;

