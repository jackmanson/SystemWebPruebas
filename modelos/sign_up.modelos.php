<?php

require_once "conexion.modelos.php";

class ModeloSignUp{
	// estatic --> se usa cuando en la funcion recibe un valor, revisar si tiene otras reglas
	static public function modeloRegistro($tabla){
            /*	Conexion --> es la clase, conectarPortal es el metodo o funcion --> los dos puntos dobles llama a la clase y la funcion
                    Asi ya no se tiene que crear ningun objeto y es directo
                    prepare --> es otra funcion para hacer consultas SQL
            */ 
            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

            $stmt -> execute(); // esto ejecuta la funcion

            return $stmt ->fetchAll(); // fetch()--> llama un registro y fetchAll() --> llama todos los registros

            $stmt -> close();
	}
        
        
        // REGISTRO procedural
        static public function modeloRegistroProcedural($tabla){

            $conexion = Conexion::conectarProcedural();
            
            mysqli_query($conexion, "SET NAMES 'utf8'");
            $sql = "SELECT * FROM $tabla";
            
            $seleccion = mysqli_query($conexion,$sql);
            
        // Check connection
        //if (!$seleccion) {
        //    die("<h1>Conección Fallida de sign_up.modelos.php:</h1>" . mysqli_connect_error());
        //}
            
            return $seleccion;
            
            //unset($respuesta);
    
        }
        

}
