<?php

class ControladorSign_up{

    public function sign_up(){

        include "vistas/sign_up.php";

    }
    
    public function terminosCondiciones(){
        
        include "vistas/modulos/terminos.condiciones.php";
        
    }
    
    public function cabezoteSignUp(){
        
        include 'vistas/modulos/sign_up.cabezote.php';
        
    }
    
    // REGISTRO DE USUARIO
    public function ctrRegistroUsuario(){
        
        if(isset($_POST["nombres"])){
            
            if(preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nombres"] )&&
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["apellidoPaterno"] )&&
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["apellidoMaterno"] )&&
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["tipoDocumento"] )&&     
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["numeroDocumento"] )&&
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nacionalidad"] )&&     
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["estadoCivil"] )&&     
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["direccion"] )&&     
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["distrito"] )&&
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["provincia"] )&&     
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["departamento"] )&&
                    // Revisar como verificar la imagen
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["cantHijos"] )&&  
                    // Revisar como verificar la imagen
               preg_match('/^[a-zA-ZñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nick"] )&& 
               preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_+)*[@][a-zA-Z0-9_]+([.][a-z-A-Z0-9_]+)*[.][a-zA-Z]{2,4}$/', $_POST["email"]) &&
               preg_match('/^[a-zA-Z0-9]+$/', $_POST["pwd"]) &&
               preg_match('/^[a-zA-Z0-9]+$/', $_POST["rePwd"]) &&
               preg_match('/^[a-zA-Z0-9]+$/', $_POST["regTerminos"]) ){
                
            }else{
                
                echo '<script> swal("Error de Registro!", "Completar correctamente los campos!", "error"); </script>';
                
            }
        }
        
        
        
        
    }

    
}