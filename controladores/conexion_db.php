<?php

    // coneccion a la base de datos;
    $conexion = mysqli_connect("localhost","root","jasselmago1999","monely");

    if(mysqli_connect_erno()){
        echo "Conección fallida";
    }else{
        echo "Conección exitosa";
    }

?>