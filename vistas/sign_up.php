<!DOCTYPE html>
<html lang="es">
<head>
<?php
    require_once "controladores/controlador.head.php";

    $miHead = new ControladorHead();
    $miHead -> head();
?>
        
        <!-- main CSS --> 
        <link rel="stylesheet" type="text/css" href="vistas/css/sign_up.css"/>
        
        <!-- main JS -->
        <script type="text/javascript" src="vistas/js/sign_up.js"></script>


</head>

<body>
    
    <!-- FORMULARIO DE REGISTRO -->
	
    <div class="container-fluid">
        
        <div class="container">
            
            <div class="formularioRegistro"><br/>
                
                <h1 class="text-center"><strong>Registrate</strong></h1><br/>
                
                <form action="#" method="POST" class="row">
                    
                    <div class="col-sm-6 ">
                    
                        <div class="form-group">
                            <label for="nombres">Nombres:</label>
                            <input type="text" name="nombres" class="form-control" id="nombres" placeholder="Ingresar sus nombres">
                        </div>
                        
                        <div class="form-group">
                            <label for="apellidoPaterno">Apellido Paterno:</label>
                            <input type="text" name="apellidoPaterno" class="form-control" id="apellidoPaterno" placeholder="Ingresar su apellido paterno">
                        </div>
                        
                        <div class="form-group">
                            <label for="apellidoMaterno">Apellido Materno:</label>
                            <input type="text" name="apellidoMaterno" class="form-control" id="apellidoMaterno" placeholder="Ingresar su apellido materno">
                        </div>
                        
                        <div class="form-group">
                            <label for="tipoDocumento">Tipo de documento:</label>
                            <select name="tipoDocumento" class="form-control" id="tipoDocumento">
                                <option value="" disabled>Seleccione</option>
                                <option value="documentoDni" selected>DNI</option>
                                <option value="documentoPasaporte">Pasaporte</option>
                                <option value="documentoExtranjeria">Documento de Extranjeria</option>
                                <option value="partidaNacimiento">Partida de nacimiento</option>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <label for="numeroDocumento">Número de docuemnto:</label>
                            <input type="text" name="numeroDocumento" class="form-control" id="numeroDocumento" placeholder="Ingresar el número de documento">
                        </div>
                        
                        <div class="form-group">
                            <label for="nacionalidad">Nacionalidad:</label>
                            <select  name="nacionalidad" class="form-control" id="nacionalidad">
                                <option value="" disabled>Seleccione</option>
                                <option value="peruano" selected>Peruana</option>
                                <option value="venezolano">Venezolano</option>
                                <option value="brasileño">Brasileño</option>
                                <option value="argentino">Argentino</option>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <label for="estadoCivil">Estado civil:</label>
                            <select name="estadoCivil" class="form-control" id="estadoCivil">
                                <option value="" disabled>Seleccione</option>
                                <option value="peruano" selected>Solero</option>
                                <option value="venezolano">Venezolano</option>
                                <option value="brasileño">Brasileño</option>
                                <option value="argentino">Argentino</option>
                            </select> 
                        </div>
                        
                    </div>
                    
                    <div class="col-sm-6">

                        <div class="form-group">
                            <label for="direccion">Dirección:</label>
                            <input type="text" name="direccion" class="form-control" id="direccion" placeholder="Ingresar su dirección">
                        </div>

                        <div class="form-group">
                            <label for="distrito">Distrito:</label>
                            <select name="distrito" class="form-control" id="distrito">
                                <option value="" disabled>Seleccione</option>
                                <option value="lima" selected>Lima</option>
                                <option value="venezolano">Venezolano</option>
                                <option value="brasileño">Brasileño</option>
                                <option value="argentino">Argentino</option>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <label for="provincia">Provincia:</label>
                            <select name="provincia" class="form-control" id="provincia">
                                <option value="" disabled>Seleccione</option>
                                <option value="lima" selected>Lima</option>
                                <option value="venezolano">Venezolano</option>
                                <option value="brasileño">Brasileño</option>
                                <option value="argentino">Argentino</option>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <label for="departamento">Departamento:</label>
                            <select name="departamento" class="form-control" id="departamento">
                                <option value="" disabled>Seleccione</option>
                                <option value="lima" selected>Lima</option>
                                <option value="venezolano">Venezolano</option>
                                <option value="brasileño">Brasileño</option>
                                <option value="argentino">Argentino</option>
                            </select> 
                        </div>
                        
                        <div class="form-group">
                            <label for="fechaNacimiento">Fecha de nacimiento:</label>
                            <input type="date" name="fechaNacimiento" class="form-control" id="fechaNacimiento">
                        </div>
                        
                        <div class="form-group">
                            <label for="cantHijos">Número de hijos:</label>
                            <input type="text" name="cantHijos" class="form-control" id="cantHijos" placeholder="Ingresar cantidad de hijos">
                        </div>
                        
                        <div class="form-group">
                            <label for="fotoUsuario">Subir su Fotografia:</label>
                            <input type="file" name="fotoUsuario" class="form-control" id="fotoUsuario">
                        </div>
                        
                    </div><br/>
                    
                    <h1 class="text-center col-sm-12"><strong>Crear Cuenta de Usuario</strong></h1><br/>
                    
                    <div class="col-sm-6 ">
                    
                        <div class="form-group">
                            <label for="nick">Nick:</label>
                            <input type="text" name="nick" class="form-control" id="nick" placeholder="Ingresar su nick">
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email address:</label>
                            <input type="email" class="form-control" id="email" placeholder="Ingresar su email">
                        </div>

                    </div>
                    
                    <div class="col-sm-6 ">

                        <div class="form-group">
                            <label for="pwd">Password:</label>
                            <input type="password" class="form-control" id="pwd">
                        </div>
                        
                        <div class="form-group">
                            <label for="rePwd">Repetir Password:</label>
                            <input type="password" class="form-control" id="rePwd">
                        </div>
                        
                        
                    </div>
                    
                    <div class="checkbox col-sm-12">
                        <label><input type="checkbox"> <b>Acepto los</b> <a href="#" class="classTerminos">Terminos y Condiciones.</a></label>
                    </div><br/>
                    
                    <button type="submit" class="btn btn-default col-sm-2 col-xs-12">Crear cuenta</button>
                    <br/>
                </form> <br/><br/>

            </div>

        </div>
        
    </div>
    

    
</body>
</html>