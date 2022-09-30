<?php 

class ControladorUsuarios{

    // INGRESO DE USUARIO

    public function ctrIngresoUsuario() {
        
        if(isset($_POST["IngUsuario"])){

                if(preg_match('/^[a-zA-Z0-9]+$/', $_POST["IngUsuario"]) &&
                   preg_match('/^[a-zA-Z0-9]+$/', $_POST["IngPassword"])){

                    $tabla = "usuarios";

                    $item = "usuario";
                    $valor = $_POST["IngUsuario"];

                    $respuesta = ModeloUsuarios::MdlMostrarUsuarios($tabla, $item, $valor);

                    var_dump($respuesta);
                


                }


        }
    }
}
