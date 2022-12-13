<?php 

class ControladorUsuarios{

    // INGRESO DE USUARIO

    static public function ctrIngresoUsuario() {
        
        if(isset($_POST["IngUsuario"])){

                if(preg_match('/^[a-zA-Z0-9]+$/', $_POST["IngUsuario"]) &&
                   preg_match('/^[a-zA-Z0-9]+$/', $_POST["IngPassword"])){

                    $tabla = "Usuarios";

                    $item = "usuario";
                    $valor = $_POST["IngUsuario"];

                    $respuesta = ModeloUsuarios::MdlMostrarUsuarios($tabla, $item, $valor);



                    if($respuesta["Usuario"] == $_POST["IngUsuario"] && $respuesta["Contraseña"] == $_POST["IngPassword"]) {

                        $_SESSION["iniciarsesion"] = "ok";

                        echo '<script>
                        
                            window.location = "inicio";

                        </script>';

                        echo '<br><div class="alert alert-success">¡Bienvenido al Sistema!</div>';

                    }else {

                        echo '<br><div class="alert alert-danger">¡Error al ingresar, vuelve a intentarlo!</div>';

                    }
                


                }


        }
    }

     // REGISTRO DE USUARIO

     static public function ctrCrearUsuario(){

        if(isset($_POST["NuevoUsuario"])){
        
            if(preg_match('/^[a-zA-Z0-9ñNáéíóúÁÉÍÓÚ ]+$/', $_POST["NuevoNombre"]) && 
               preg_match('/^[0-9]+$/', $_POST["NuevoUsuario"]) &&
               preg_match('/^[a-zA-Z0-9]+$/', $_POST["NuevoContraseña"])){

                // VALIDAR IMAGEN

                if(isset($_FILES["NuevaFoto"]["tmp_name"])){

                    var_dump($_FILES["NuevaFoto"]["tmp_name"]);

                }

            //     $tabla = "usuarios";

            //     $datos = array("Nombre" => $_POST["NuevoNombre"],
            //                    "Usuario" => $_POST["NuevoUsuario"],
            //                    "Contraseña" => $_POST["NuevoContraseña"],
            //                    "Rol" => $_POST["NuevoRol"]);

            //     $respuesta = ModeloUsuarios::mdlIngresarUsuario($tabla, $datos);

            //     if($respuesta == "ok"){

            //         echo '<script>

            //         swal({
            //             title: "Correcto!",
            //             text: "El usuario se guardo con exito!",
            //             icon: "success"

            //         }).then((result)=>{

            //             if(result.value){

            //                 window.location = "usuarios";
                            
            //             }

            //         });

                    
            //         </script>';

            //     }



            //    }else{

            //         echo '<script>

            //         swal({
            //             title: "Datos Invalidos!",
            //             text: "El usuario no puede llevar caracteres especiales!",
            //             icon: "error"


            //         }).then((result)=>{

            //             if(result.value){

            //                 window.location = "usuarios";
                            
            //             }

            //         });

                    
            //         </script>';

               }
        }
     }




}
