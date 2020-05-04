// VALIDANDO LOGIN 

function validandoLogin(){
    
    // validando email
    var email = $(".miEmail").val();
    
    if(email != ""){
        var expresion = /^[a-zA-ZñÑáéíóúÁÉÍÓÚ]*$/;
        
        if(!expresion.test(email)){
            $(".miEmail").parent().before('<div class="alert alert-warming"><strong>ATENCIÓN:</strong>No se permiten números ni caracteres especiales.</div>');
        }
        
    }else{
        $(".miEmail").parent().before('<div class="alert alert-warming"><strong>ATENCIÓN:</strong>Este campo es obligatorio</div>');
    }
    

    
    return true;
}

