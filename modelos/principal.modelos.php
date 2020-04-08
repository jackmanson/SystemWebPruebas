<?php

require_once "conexion.modelos.php";

class ModeloPrincipal{
	// estatic --> se usa cuando en la funcion recibe un valor, revisar su tiene otras reglas
	static public function modeloEstiloPrinciapal($tabla){
		/*	Conexion --> es la clase, conectar es el metodo o funcion --> los dos puntos dobles llama a la clase y la funcion
			Asi ya no se tiene que crear ningun objeto y es directo
			prepare --> es otra funcion para hacer consultas SQL
		*/ 
		$stmt = Conexion::conectarPortal()->prepare("SELECT * FROM $tabla");
		
		$stmt -> execute(); // esto ejecuta la funcion
		
		return $stmt -> fetch(); // fetch()--> llama un registro y fetchAll() --> llama todos los registros
		
		$stmt -> close();
	}
}