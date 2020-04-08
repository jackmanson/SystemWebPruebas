<?php
	/*$enlace_actual = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];
	echo $enlace_actual;
         * 
         */
    // LLAMANDO A PROCESOS
    require_once "controladores/controlador.procesos.php";
    $login = new ControladorProcesos();
    $login -> procesos();


