<?php

    // coneccion a la base de datos;
    $conexion = mysqli_connect("localhost","root","suizo1999","db_monely");

    if(mysqli_connect_erno()){
        echo "<h1>Conección fallida</h1>";
    }else{
        echo "<h1>Conección exitosa</h1>";
    }

    echo "Vista";
?>