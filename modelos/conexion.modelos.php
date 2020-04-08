<?php

class Conexion{
    
    // CONECCION A LA BASE DE DATOS DB_MONELY CON PDO (PHP DATA OBJECT)
    public function conectar(){
        
        $link = new PDO("mysql:host=junglafaricom.ipagemysql.com;dbname=db_monely",
                        "rocky3",
                        "Manhatan99_$2",
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                              PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
                        );
        
        return $link;
    }
    
    // CONECCION A LA BASE DE DATOS DB_MONELY_PORTAL CON PDO (PHP DATA OBJECT)
    public function conectarPortal(){
        
        $link = new PDO("mysql:host=junglafaricom.ipagemysql.com;dbname=db_monely_portal",
                        "rocky2",
                        "Lluvia23_$99",
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                              PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
                        );
        
        return $link;
    }
    
}
