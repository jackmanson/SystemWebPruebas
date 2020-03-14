<?php

	function llamaLogin(){
		require_once "controladores/controlador.login.php";

		$login = new ControladorLogin();
		$login -> login();
	}

	function llamarRegistro(){
		
	}
