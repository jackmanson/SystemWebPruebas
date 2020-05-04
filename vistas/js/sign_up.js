// VALIDANDO REGISTRO 
    function validandoLogin(){
    
        // VALIDAR TERMINOS Y CONDICIONES
        var terminos = $("#regTerminos:checked").val();
        
        if(terminos != "on" || terminos == "undefined"){
            $("#regCheckLabel").parent().before('<div class="alert alert-warning"><strong>ATENCIÓN:</strong>Debe aceptar nuestras condiciones de uso y políticas de privacidad.</div>');
            return false;
        }
        
        return true;
    }


$('document').ready(function(){
    
    // modal de terminos y condiciones
    $(".classTerminos").click(function(){
        $("#misTerminos").modal();
    });
    

    
    
    
    
});