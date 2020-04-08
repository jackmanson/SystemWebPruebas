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
    
    

    
}
