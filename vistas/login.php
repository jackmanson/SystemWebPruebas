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


	<script type="text/javascript" src="vistas/js/login.js"></script>
	<link rel="stylesheet" type="text/css" href="vistas/css/login.css"/>
                                                                   
 
</head>
<body>
<!-- Estructura de login -->
	<div class="container-fluid">
		<div class="cajaLogin ">
			<h2 class="text-center">Cuenta de Usuario</h2>
			 <form action="/action_page.php">
			    <div class="form-group">
			      <label for="email">Email:</label>
			      <input type="email" class="form-control fondoBlanco" id="email" placeholder="Enter email" name="email">
			    </div>
			    <div class="form-group">
			      <label for="pwd">Password:</label>
			      <input type="password" class="form-control fondoBlanco" id="pwd" placeholder="Enter password" name="pwd">
			    </div>
			    <div class="checkbox">
			      <label class=""><input type="checkbox" name="remember"> Recuerdame</label>
			    </div>
			    <button type="submit" class="btn btn-primary btn-block">Enviar</button>
			 </form>
			<br/>
		 	<div class="recuperacionLogin">
		    	<a href="#" class="text-center col-xs-12">Olvidé mi contraseña</a>
		    	<a href="vistas/sign_up.php" class="text-center col-xs-12">Registrarse</a>
		    </div>
		    

		</div>
	</div>

	
</body>
</html>