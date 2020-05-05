$('document').ready(function(){
    
    // modal de terminos y condiciones
    $(".classTerminos").click(function(){
        $("#misTerminos").modal();
    });
    
    // LIMPIA ALERTAS
     $("#btnCrearCuenta").click(function(){
        $(".alertNom").hide();
        $(".atenNom").hide();
        $(".alertApePat").hide();
        $(".atenApePat").hide();
        $(".alertApeMat").hide();
        $(".atenApeMat").hide();
        $(".alertTipoDoc").hide();
        $(".atenTipoDoc").hide();
        $(".alertNumoDoc").hide();
        $(".atenNumDoc").hide();
        $(".alertNac").hide();
        $(".atenNac").hide();
        $(".alertCiv").hide();
        $(".atenCiv").hide();
        
        $(".atenTerminos").hide();
        console.log("Eliminando ventadas 9");
    });
    
});

// VALIDANDO REGISTRO 
    function validandoLogin(){
        
        // VALIDAR NOMBRE
        var nombre = $("#nombres").val();
        if(nombre !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
            if(!expresion.test(nombre)){
                $("#nombres").parent().before('<div class="alert alert-danger alertNom" id=""><strong>NOMBRES ERROR:</strong> No se permiten caracteres ni números especiales!</div>');
                return false; 
            }
        }else{
            $("#nombres").parent().before('<div class="alert alert-warning atenNom" id=""><strong>ATENCIÓN:</strong> Campo nombres es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR APELLIDO PATERNO
        var apellidoPaterno = $("#apellidoPaterno").val();
        if(apellidoPaterno !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
            if(!expresion.test(apellidoPaterno)){
                $("#apellidoPaterno").parent().before('<div class="alert alert-danger alertApePat" id=""><strong>APELLIDO PATERNO ERROR:</strong> No se permiten caracteres ni números especiales!</div>');
                return false;
            }
        }else{
            $("#apellidoPaterno").parent().before('<div class="alert alert-warning atenApePat" id=""><strong>ATENCIÓN:</strong> Campo apellido paterno es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR APELLIDO MATERNO
        var apellidoPaterno = $("#apellidoMaterno").val();
        if(apellidoPaterno !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
            if(!expresion.test(apellidoPaterno)){
                $("#apellidoMaterno").parent().before('<div class="alert alert-danger alertApeMat" id=""><strong>APELLIDO MATERNO ERROR:</strong> No se permiten caracteres ni números especiales!</div>');
                return false;
            }
        }else{
            $("#apellidoMaterno").parent().before('<div class="alert alert-warning atenApeMat" id=""><strong>ATENCIÓN:</strong> Campo apellido materno es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR TIPO DE DOCUMENTO
        var tipoDocumento = $("#tipoDocumento").val();
        if(tipoDocumento !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
            if(!expresion.test(tipoDocumento)){
                $("#tipoDocumento").parent().before('<div class="alert alert-danger alertTipoDoc" id=""><strong>TIPO DE DOCUMENTO ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#tipoDocumento").parent().before('<div class="alert alert-warning atenTipoDoc" id=""><strong>ATENCIÓN:</strong> Campo tipo documento es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR NUMERO DE DOCUMENTO
        var numeroDocumento = $("#numeroDocumento").val();
        if(numeroDocumento !== ""){
            var expresion = /^[0-9]*$/;
            if(!expresion.test(numeroDocumento)){
                $("#numeroDocumento").parent().before('<div class="alert alert-danger alertNumoDoc" id=""><strong>NÚMERO DE DOCUMENTO ERROR:</strong> No se permiten letras ni caracteres especiales en el campo!</div>');
                return false;
            }
        }else{
            $("#numeroDocumento").parent().before('<div class="alert alert-warning atenNumDoc" id=""><strong>ATENCIÓN:</strong> Campo Número del tipo de documento es obligatorio!</div>');
            return false;
        }
        
        // VALIDAR NACIONALIDAD
        var nacionalidad = $("#nacionalidad").val();
        if(nacionalidad !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
            if(!expresion.test(nacionalidad)){
                $("#nacionalidad").parent().before('<div class="alert alert-danger alertNac" id=""><strong>NACIONALIDAD ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#nacionalidad").parent().before('<div class="alert alert-warning atenNac" id=""><strong>ATENCIÓN:</strong> Campo nacionalidad es obligatorio!</div>');
            return false;
        }
        
        // ESTADO CIVIL
        var estadoCivil = $("#estadoCivil").val();
        if(estadoCivil !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
            if(!expresion.test(estadoCivil)){
                $("#estadoCivil").parent().before('<div class="alert alert-danger alertCiv" id=""><strong>ESTADO CIVIL ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#estadoCivil").parent().before('<div class="alert alert-warning atenCiv" id=""><strong>ATENCIÓN:</strong> Campo estado civil es obligatorio!</div>');
            return false;
        }
        
        // DIRECCION
        var direccion = $("#direccion").val();
        if(direccion !== ""){
            var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ0-9]*$/;
            if(!expresion.test(direccion)){
                $("#direccion").parent().before('<div class="alert alert-danger alertCiv" id=""><strong>DIRECCIÓN ERROR:</strong> Existe un error en el campo!</div>');
                return false;
            }
        }else{
            $("#direccion").parent().before('<div class="alert alert-warning atenCiv" id=""><strong>ATENCIÓN:</strong> Campo dirección es obligatorio!</div>');
            return false;
        }
        
        
        
        
        
    
        // VALIDAR TERMINOS Y CONDICIONES 
        var terminos = $("#regTerminos:checked").val();
        if(terminos !== "on" || terminos === "undefined"){
            $("#regCheckLabel").parent().before('<div class="alert alert-warning atenTerminos" id=""><strong>ATENCIÓN:</strong> Debe aceptar nuestras condiciones de uso y políticas de privacidad.</div>');
            return false;
        }else if(terminos === "on"){
            return true;
        }
    }


