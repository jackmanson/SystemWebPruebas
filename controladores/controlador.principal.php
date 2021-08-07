<?php


class ControladorPrincipal{
    
    // LLAMAMOS A LA PLANTILLA
    public function principal(){
        
        include "vistas/principal.php";
        
    }
    
    //TRAEMOS LOS ESTILOS DINAMICOS DEL PLANTILLA
    public function ctrEstiloPrincipal(){
        $tabla = "principal";
        
        $respuesta = ModeloPrincipal::modeloEstiloPrinciapal($tabla);
        
        return $respuesta;
    }
    
    
    //INSERTAMOS Y REGISTROS DE SUSCRIPTOR POR EL EMAIL
    public function ctrPrincipalPortalSuscriptor($email){
        // TODO: Casilla registro de corrro
        $suscripcion = new ModeloPrincipal();
        $suscripcion->principalSuscripcionInsert($email);

    }
        

    //CONTACTAR Y REGISTROS DE COMENTARIOS
    public function ctrPrincipalPortalContactar($correo,$email,$comments){
        // TODO: principal formulario de contacto
        $contactar = new ModeloPrincipal();
        $contactar->PrincipalPortalContactar($correo,$email,$comments);
        echo $correo;
        return $contactar;
    }
    
}
