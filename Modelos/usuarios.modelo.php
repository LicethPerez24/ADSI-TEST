<?php

require_once "conexion.php";

class ModeloUsuarios{

    // MOSTRAR USUARIOS

     static public function mdlMostrarUsuarios($tabla, $item, $valor){

        $stmt = conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

        $stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

        $stmt -> execute();

        return $stmt -> fetch();

        $stmt -> close();

        $stmt = null;

     }


    //  REGISTRO DE USUARIO

 static public function mdlIngresarUsuario($tabla, $datos){

        $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(Nombre, Usuario, Contraseña, Rol) VALUES (:Nombre, :Usuario, :Contraseña, :Rol)");

    $stmt->bindParam(":Nombre", $datos["Nombre"], PDO::PARAM_STR);
    $stmt->bindParam(":Usuario", $datos["Usuario"], PDO::PARAM_STR);
    $stmt->bindParam(":Contraseña", $datos["Contraseña"], PDO::PARAM_STR);
    $stmt->bindParam(":Rol", $datos["Rol"], PDO::PARAM_STR);

    if($stmt->execute()){

        return "ok";

    }else{

        return "error";

    }

    $stmt->close();

    $stmt = null;


    }


}




