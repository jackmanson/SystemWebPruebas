<?php
	//header("location: vistas/plantilla.php");
	require_once "controladores/controlador.plantilla.php";

	$plantilla = new ControladorPlantilla();
	$plantilla -> plantilla();

?>
