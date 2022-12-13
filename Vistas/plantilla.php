 <?php
session_start();

?>
 
 <!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Centro Educativo Estrellas del Futuro</title>

  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <link rel="icon" href="Vistas/Img/Plantilla/icon.png">

  <!-- PLUGINS DE CSS -->

  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="Vistas/bower_components/bootstrap/dist/css/bootstrap.min.css">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="Vistas/bower_components/font-awesome/css/font-awesome.min.css">

  <!-- Ionicons -->
  <link rel="stylesheet" href="Vistas/bower_components/Ionicons/css/ionicons.min.css">

  <!-- Theme style -->
  <link rel="stylesheet" href="Vistas/dist/css/AdminLTE.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="Vistas/dist/css/skins/_all-skins.min.css">

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

   <!-- DataTables -->
   <link rel="stylesheet" href="Vistas/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
   <link rel="stylesheet" href="Vistas/bower_components/datatables.net-bs/css/responsive.bootstrap.min.css">

  <!-- PLUGINS DE JAVASCRIPT -->

  <!-- jQuery 3 -->
  <script src="Vistas/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap 3.3.7 -->
  <script src="Vistas/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

  <!-- FastClick -->
  <script src="Vistas/bower_components/fastclick/lib/fastclick.js"></script>

  <!-- AdminLTE App -->
  <script src="Vistas/dist/js/adminlte.min.js"></script>

  <!-- AdminLTE for demo purposes -->
  <script src="Vistas/dist/js/demo.js"></script>

  <!-- DataTables -->
  <script src="Vistas/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="Vistas/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <script src="Vistas/bower_components/datatables.net-bs/js/dataTables.responsive.min.js"></script>
  <script src="Vistas/bower_components/datatables.net-bs/js/responsive.bootstrap.min.js"></script>

    <!-- SweetAlert 2.1.2 -->
    <script src="Vistas/plugins/SweetAlert2.1.2/sweetalert.min.js"></script>
  
</head>

<!-- CUERPO DE DOCUMENTO -->

<body class="hold-transition skin-blue sidebar-collapse sidebar-mini login-page">
<!-- Site wrapper -->

  <?php

  if(isset($_SESSION["iniciarsesion"]) && $_SESSION["iniciarsesion"] == "ok"){

  echo '<div class="wrapper">';
  
  // CABEZOTE

  include "Modulos/Cabezote.php";

  // MENU

  include "Modulos/menu.php";

  // CONTENIDO

  if(isset($_GET["ruta"])){

    if($_GET["ruta"] == "inicio" ||
       $_GET["ruta"] == "usuarios" ||
       $_GET["ruta"] == "periodo-escolar" ||
       $_GET["ruta"] == "docentes" ||
       $_GET["ruta"] == "estudiantes" ||
       $_GET["ruta"] == "asignaturas" ||
       $_GET["ruta"] == "cursos" ||
       $_GET["ruta"] == "salir"){

      include "Modulos/".$_GET["ruta"].".php";

    }else{

      include "Modulos/404.php";

    }
  }else{

    include "Modulos/inicio.php";
    
  }

  // FOOTER

  include "Modulos/footer.php";

  echo '</div>';

}else{

  include "Modulos/login.php";

}

  ?>

<script src="Vistas/Js/plantilla.js"></script>
<script src="Vistas/Js/usuarios.js"></script>


</body>
</html>
