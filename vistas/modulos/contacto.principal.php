<?php

    require_once "../../modelos/principal.modelos.php";
    require_once "../../controladores/controlador.principal.php";     
    
    // TODO: principal formulario para contactar 
    $name = $_POST['name'];
    $email = $_POST['email'];
    $comments = $_POST['comments'];

    $contactar = new ControladorPrincipal();
    $contactar -> ctrPrincipalPortalContactar($correo,$email,$comments);

    // if($contactar){
    //     echo "<script>alert('Datos enviados correctamente. Desde Modelos principal.suscriptaion.php');</script>";
    // }else{
    //     echo "<script>alert('No se conecto.');</script>";
    // }
        echo "$correo,$email,$comments";
    // header("location: ../../index.php");
?>