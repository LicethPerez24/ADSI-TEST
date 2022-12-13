 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">

    <section class="content-header">
     
    <h1>

       Administrar Usuarios

     </h1>

      <ol class="breadcrumb">

        <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>

        <li class="active">Administrar Usuarios</li>

      </ol>

    </section>

    <section class="content">


      <div class="box">

        <div class="box-header with-border">

        <button class="btn btn-primary mb1 bg-green" data-toggle="modal" data-target="#modalAgregarUsuario">

          Agregar Usuario

        </button>

        </div>

        <div class="box-body">

        <table class="table table-bordered table-striped dt-responsive tablas">

        <thead>

        <tr>

        <th style="width: 10px;">#</th>
        <th>Nombre</th>
        <th>Usuario</th>
        <th>Foto</th>
        <th>Perfil</th>
        <th>Estado</th>
        <th>Acciones</th>

        </tr>

        </thead>

        <tbody>

        <tr>
          <td>1</td>
          <td>Usuario Administrador</td>
          <td>Admin</td>
          <td><img src="Vistas/Img/Usuarios/default/Anonymous.png" class="img-thumbnail" width="40px"></td>
          <td>Administrador</td>
          <td><button class="btn btn-success btn-xs">Activado</button></td>
          <td>
            <div class="btn-group">

            <button class="btn btn-warning"><i class="fa fa-pencil"></i></button>

            <button class="btn btn-danger"><i class="fa fa-times"></i></button>

            </div>
          </td>
        </tr>
        </tbody>





        </table>


        </div>
     

        </div>

      </div>


    </section>

  </div>

  <!-- MODAL AGREGAR USUARIO -->

  <div id="modalAgregarUsuario" class="modal fade" role="dialog">
    
    <div class="modal-dialog">

    <div class="modal-content">

    <form role="form" method="post" enctype="multipart/form-data">

    <!-- CABEZA DEL MODAL -->

      <div class="modal-header" style="background:#2A8220; color:white">

        <button type="button" class="close" data-dismis="modal">&times;</button>

        <h4 class="modal-title">Agregar Usuario</h4>

      </div>

      <!-- CUERPO DEL MODAL-->

      <div class="modal-body">
     
      <div class="box-body">

        <!-- ENTRADA PARA NOMBRE -->

        <div class="form-group">

        <div class="input-group">

          <span class="input-group-addon"><i class="fa fa-user"></i></span>

          <input type="text" class="form-control input-lg" name="NuevoNombre" placeholder="Ingresar Nombre" required>

        </div>

        </div>

        <!-- ENTRADA PARA USUARIO -->

        <div class="form-group">

        <div class="input-group">

          <span class="input-group-addon"><i class="fa fa-key"></i></span>

          <input type="text" class="form-control input-lg" name="NuevoUsuario" placeholder="Ingresar Usuario" required>

        </div>

        </div>

        <!-- ENTRADA PARA CONTRASEÑA -->

        <div class="form-group">

        <div class="input-group">

          <span class="input-group-addon"><i class="fa fa-lock"></i></span>

          <input type="password" class="form-control input-lg" name="NuevoPassword" placeholder="Ingresar Contraseña" required>

        </div>

        </div>

        <!-- ENTRADA PARA SELECCIONAR SU PERFIL -->

        <div class="form-group">

        <div class="input-group">

          <span class="input-group-addon"><i class="fa fa-users"></i></span>

          <select class="form-control input-lg" name="NuevoPerfil">

          <option value="">Seleccionar Perfil</option>

          <option value="Administrador">Administrador</option>

          <option value="Estudiante">Estudiante</option>

          <option value="">Docente</option>

          </select>

        </div>

        </div>

        <!-- ENTRADA PARA SUBIR FOTO -->

        <div class="form-group">

        <div class="panel">SUBIR FOTO</div>

        <input type="file" id="NuevaFoto" name="NuevaFoto">

        <p class="help-block">Peso máximo de la foto 200 MB</p>

        <img src="Vistas/Img/Usuarios/default/Anonymous.png" class="img-thumbnail" width="100px">

        </div>

      </div>

      </div>

      <!-- PIE DEL MODAL -->

      <div class="modal-footer">

        <button type="button" class="btn btn-default pull-left mb1 bg-green" data-dismis="modal">Cerrar</button>

        <button type="submit" class="btn btn-primary mb1 bg-green">Guardar usuario</button>

      </div>

      </form>

      </div>

      </div>

      </div>