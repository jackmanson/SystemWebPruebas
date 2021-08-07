<?php

    require_once "../../modelos/principal.modelos.php";
    require_once "../../controladores/controlador.principal.php";     
    
    // TODO: Casilla registro de corrro
    $correo = $_POST['suscriEmail'];

    $suscription = new ControladorPrincipal();
    $suscription -> ctrPrincipalPortalSuscriptor($correo);

    // if($suscription){
    //     echo "<script>alert('Datos enviados correctamente. Desde Modelos principal.suscriptaion.php');</script>";
    // }else{
    //     echo "<script>alert('No se conecto.');</script>";
    // }
    // echo $correo;
    header("location: ../../index.php");
?>