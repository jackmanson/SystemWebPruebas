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
	

		


	<link rel="stylesheet" type="text/css" href="css/main.css"/>
	<script type="text/javascript" src="vistas/js/main.js"></script>

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
				<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</div>
	</nav>
	
	<!-- CUERPO DEL CONTENIDO --> 
	<div class="container-fluid text-center">   
		<div class="row content" id="todoAlto">

			<!-- BARRA IZQUIERDA --> 
			<div class="col-sm-2 sidenav " id="todoAlto">
				 <!-- BUSCADOR --> 
				<form>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Buscar" id="tags">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form> 
				<br/>

				<!-- MENU -->
				<ul class="list-group" id="todoAlto">
					<li class="list-group-item active">Mensajes <span class="badge">12</span></li>
					<li class="list-group-item">Diseño <span class="badge">5</span></li>
					<li class="list-group-item">Abios <span class="badge">3</span></li>
					<li class="list-group-item">Gestión Telas <span class="badge">3</span></li>
					<li class="list-group-item">Corte <span class="badge">3</span></li>
					<li class="list-group-item">Estampado <span class="badge">3</span></li>
					<li class="list-group-item">Confección <span class="badge">3</span></li>
					<li class="list-group-item">Distribución <span class="badge">3</span></li>
					<li class="list-group-item">Guías <span class="badge">3</span></li>
				</ul> 
			</div>

			<!-- CONTENIDO --> 
			<div class="col-sm-8 text-left"> 

				<!-- TABLA DE DATOS -->		
				<div class="container">
					<h2>Contenido de Campo</h2>
					<p>The .table-striped class adds zebra-stripes to a table:</p>            
					<table class="table table-striped">
						<thead>
						<tr>
							<th>Firstname</th>
							<th>Lastname</th>
							<th>Email</th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>John</td>
							<td>Doe</td>
							<td>john@example.com</td>
						</tr>
						<tr>
							<td>Mary</td>
							<td>Moe</td>
							<td>mary@example.com</td>
						</tr>
						<tr>
							<td>July</td>
							<td>Dooley</td>
							<td>july@example.com</td>
						</tr>
						</tbody>
					</table>
				</div>

			</div>

			<!-- BARRA DERECHA -->
			<div class="col-sm-2 sidenav miAside">
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
				<div class="well">
					<p>ADS</p>
				</div>
			</div>
		</div>
	</div>

	<!-- BARRA DOWN -->
	<footer class="container-fluid text-center">
	<p>Copyright © 2020-2024 Jasson Polo All rights reserved.</p>
	</footer>
	
</body>
</html>