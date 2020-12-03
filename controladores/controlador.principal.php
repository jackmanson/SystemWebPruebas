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
    
    
    //INSERTAMOS Y REGISTROS DE SUSCRIPTOR POR EL EMAIL --> 1
    public function ctrPrincipalPortalSuscriptor_1($email){
        
        ModeloPrincipal::princiapalSuscripcion($email);

    }
    
    
    //INSERTAMOS Y REGISTROS DE SUSCRIPTOR POR EL EMAIL --> 2
    public function ctrPrincipalPortalSuscriptor_2($email){
        
        $suscripcion = new ModeloPrincipal();
        $suscripcion->principalSuscripcionInsert($email);

    }
    
}
