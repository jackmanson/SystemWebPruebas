<!DOCTYPE html>
<html>
<head>
<?php
    require_once "controladores/controlador.head.php";

    $miHead = new ControladorHead();
    $miHead -> head();
?>
        
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
                <a href="registro.php" class="text-center col-xs-12">Registrarse</a>
            </div>


            </div>
	</div>

	
</body>
</html>