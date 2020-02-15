<!DOCTYPE html>
<html>
<head>
	<title>process</title>
	<meta charset="utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
	<h1>Procesos</h1>
	<?= "hola mundo";?> 
	<?php
		session_start();

		$_SESSION['variable_persistente'] = "Ingreso";

		echo "<br>".$_SESSION['variable_persistente'];

	?>
	
</body>
</html>