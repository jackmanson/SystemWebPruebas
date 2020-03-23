<?php
	//header("location: vistas/plantilla.php");
	require_once "controladores/controlador.principal.php";

	$principal = new ControladorPrincipal();
	$principal -> principal();


	/*
	require_once "controladores/controlador.plantilla.php";

	$plantilla = new ControladorPlantilla();
	$plantilla -> plantilla();
	*/
/*
$enlace_actual = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
echo $enlace_actual;
*/