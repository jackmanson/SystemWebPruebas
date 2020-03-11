<!DOCTYPE html>
<html>
<head>
	<title>process</title>
	<meta charset="utf-8"/>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

	<!-- Jquery v3.4.1 -->
		<script type="text/javascript" src="vistas/js/jquery_v3.4.1.js"></script>
	
	<!-- Jquery IU -->
		<link rel="stylesheet" type="text/css" href="vistas/js/jquery-ui-1.12.1.custom/jquery-ui.min.css"/>
		<link rel="stylesheet" type="text/css" href="vistas/js/jquery-ui-1.12.1.custom/jquery-ui.theme.min.css"/>
		<link rel="stylesheet" type="text/css" href="vistas/js/jquery-ui-1.12.1.custom/jquery-ui.structure.min.css"/>
		<script type="text/javascript" src="vistas/js/jquery-ui-1.12.1.custom/jquery-ui.js"></script>

	<!-- Bootstrap v3.4.1-->
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

		<!-- Latest compiled and minified JavaScript -->
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>


	<script type="text/javascript" src="vistas/js/main.js"></script>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>

	<style type="text/css">
		#usuarioMenu{
			margin: 0;
			position: absolute;
			top: 4em;
			right: 25px;
			z-index: 3000;
		}
		
		/* cursos imagen */
		#imagenUsuario{
			cursor: pointer;
		}

		.list-group-item{
			cursor: pointer;	
		}
		.icono-menu{
			margin-right:  0.5em;
		}

	</style>
		

</head>
<body>
<!-- Estructura de plantilla -->
	<!-- BARRA TOP BLACK -->
	<nav class="navbar navbar-inverse">

		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>                        
				</button>
				<a class="navbar-brand" href="#">COMERCIAL MONELY E.I.R.L.</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Ordenes</a></li>
					<li><a href="#">Guías</a></li>
					<li><a href="#">Reportes</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span></a></li>
					<li><a href="#"><span class="glyphicon glyphicon-envelope"></span></a></li>
					<li><a href="#"><span class="glyphicon glyphicon-bell"></span></a></li>
					<li class="classLogin"><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="#"><span class="nombreUsuario">Jasson Polo</span></a></li>
					<li><img src="vistas/img/jass.png" class="img-circle" id="imagenUsuario" alt="Cinque Terre"/></li>
				</ul>

				<!-- Menu de usuario -->
				<ul id="usuarioMenu">
				  <li class="ui-state-disabled"><div class="rolUsuario">Administrador:</div></li>
				  <li><div>Perfil</div></li>
				  <li><div>Configuración</div></li>
				  <!--<li><div>Electronics</div>
				    <ul>
				      <li class="ui-state-disabled"><div>Home Entertainment</div></li>
				      <li><div>Car Hifi</div></li>
				      <li><div>Utilities</div></li>
				    </ul>
				  </li>-->
				  <li><div>Cerrar Sesión</div></li>
				</ul>
			</div>


		</div>
	</nav>
	
	<!-- CUERPO DEL CONTENIDO --> 

	<div class="container-fluid">   
		<div class="row content">

			
			
		</div>
	</div>

	<!-- BARRA DOWN -->
	<footer class="container-fluid text-center footerBotton">
	<p>Copyright © 2020-2022 Jasson Polo All rights reserved.</p>
	</footer>
	
</body>
</html>