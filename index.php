<?php

require_once "Controladores/plantilla.controlador.php";
require_once "Controladores/usuarios.controlador.php";
require_once "Controladores/estudiantes.controlador.php";
require_once "Controladores/docentes.controlador.php";
require_once "Controladores/cursos.controlador.php";
require_once "Controladores/asignaturas.controlador.php";
require_once "Controladores/periodo-escolar.controlador.php";


require_once "Modelos/usuarios.modelo.php";
require_once "Modelos/conexion.php";
require_once "Modelos/estudiantes.modelo.php";
require_once "Modelos/docentes.modelo.php";
require_once "Modelos/cursos.modelo.php";
require_once "Modelos/asignaturas.modelo.php";
require_once "Modelos/periodo-escolar.modelo.php";

$plantilla = new ControladorPlantilla();
$plantilla -> ctrPlantilla();
