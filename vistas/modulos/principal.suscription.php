<?php

/*     require_once "controladores/controlador.principal.php";     
    require_once "modelos/principal.modelos.php"; */

    $email = $_POST['suscriEmail'];

    $suscription = new ControladorPrincipal();
    $suscription -> ctrPrincipalPortalSuscriptor_2($email);

    if($suscription){
        echo "<script>alert('Datos enviados correctamente.');</script>";
    }

?>