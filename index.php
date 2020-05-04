<?php
	//header("location: vistas/plantilla.php");

	require_once "controladores/controlador.principal.php";
        require_once "modelos/principal.modelos.php";

	$principal = new ControladorPrincipal();
	$principal -> principal();
        

