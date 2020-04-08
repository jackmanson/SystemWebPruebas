<?php
/*
    // coneccion a la base de datos 
    $conexion = mysqli_connect("junglafaricom.ipagemysql.com","rocky3","Manhatan99_$2","db_monely");

    if(!$conexion){
        echo "<h1>Conección fallida</h1>";
    }else{
        echo "<h1>Conección exitosa</h1>";
    }
*/

 /*
    // PARA CONECCIONES DE LA PHP VERSION 7.0 --> MySQLi Object-Oriented
    $servername = "junglafaricom.ipagemysql.com";
    $username = "rocky3";
    $password = "Manhatan99_$2";

    // Create connection
    $conn = new mysqli($servername, $username, $password);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    echo "Connected successfully";

 */     


    // PARA CONECCIONES DE PHP --> MySQLi Procedural
    $servername = "junglafaricom.ipagemysql.com";
    $username = "rocky3";
    $password = "Manhatan99_$2";
    $data = "db_monely";
    
    // Create connection --MySQLi Procedural
    $con = mysqli_connect($servername, $username, $password,$data);

    // Check connection
    if (!$con) {
        die("<h1>Conección Fallida:</h1>" . mysqli_connect_error());
    }
    echo "<h1>Conectado Exitosamente.</h1>";
    
    
    // consulta para configurar la condificacion de caracteres
    mysqli_query($con, "SET NAMES 'utf8'");
    
    
    $query = mysqli_query($con, "SELECT * FROM area_trabajo");
    
    var_dump($query);
    
    while($nota = mysqli_fetch_assoc($query)){
        //var_dump($nota);
        echo "<h2>".$nota['id_area_trabajo']." - ".$nota['nombre_area_trabajo']."</h2>";
        
    }

