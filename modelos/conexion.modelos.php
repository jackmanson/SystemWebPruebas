<?php

class Conexion{
    
    // CONECCION A LA BASE DE DATOS DB_MONELY CON PDO (PHP DATA OBJECT)
    public function conectar(){
        
        $link = new PDO("mysql:host=localhost;dbname=db_monely",
                        "root",
                        "",
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                              PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
                        );
        
        return $link;
    }
    
    
    // PARA CONECCIONES DE PHP --> MySQLi Procedural
    public function conectarProcedural(){
        
        $servername = "localhost";
        $username = "root";
        $password = "";
        $data = "db_monely";

        // Create connection --MySQLi Procedural
        $con = mysqli_connect($servername,$username,$password,$data);
        
        // Check connection
        //if (!$con) {
        //    die("<h1>Conección Fallida de conexion.modelos.php:</h1>" . mysqli_connect_error());
        //}

        return $con;
    }
    
    
    
    
    // CONECCION A LA BASE DE DATOS DB_MONELY_PORTAL CON PDO (PHP DATA OBJECT)
    public function conectarPortal(){
        
        $link = new PDO("mysql:host=localhost;dbname=db_monely_portal",
                        "root",
                        "",
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                              PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
                        );
        
        return $link;
    }
    
    
    // // PARA CONECCIONES DE PHP --> MySQLi Procedural
    public function conectarPortalProcedural(){

        $servername = "localhost";
        $username = "root";
        $password = "";
        $data = "db_monely_portal";


        // Create connection --MySQLi Procedural
        $con = mysqli_connect($servername,$username,$password,$data);
        
        

        return $con;
    }

    
    
    
}
