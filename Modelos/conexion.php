<?php

class Conexion{

    public function Conectar(){

        $link = new PDO("mysql:host=localhost;dbname=ceestrellasfuturo",
                        "root",
                         "");

        $link -> exec("set names utf8");

        return $link;
        
    }

}