<?php
include("../conexion.php");

?>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">
    <title>Multi: Niveles de Usuarios</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

    </head>
	 <body>

     <a  class="btn btn-danger" href='/LOGIN ROLES/admin/index.php'><span class="material-symbols-outlined">
            exit_to_app
        </span>leave</a>


     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

     <script type="text/javascript">
    function confirmretirar()
    {

        var respuesta = confirm("al acetar eliminaras usuario ");
    
    if (respuesta == true)
     {
   
        
return true;

    }
    else{
        return false;
    }


    }


</script>

<style>
    body{
        /* color: #337ab7; */
        background-color: #8AC6BF;
    }

    h1{
        color: white;
  

    }
</style>
	
        <center>          
        <h1>Pagina Administrativa</h1>
        </center>

<center>
    <table border="1" class="table table-dark table-hover" >

        <tr style="background:#337ab7; color:WHITE;" >
            <th>#</th>
            <th>Nombre Empleado</th>
            <Th>Usuario</Th>
            <th>contraseña</th>
            <th>numero Cargo</th>
            <th></th>
            <th></th>
      
        

        </tr>





        <?php

        $consulta=$con->query("SELECT * FROM usuarios");



        while($row=$consulta->fetch_array()){


        ?>

        <!-- tiene un error hay que fijarse en la correspondencia de la columnas -->


        <tr class="table-info">

        <td ><?php echo $row['id'] ?></td>
        <td><?php echo $row['nombre'] ?></td>
        <td><?php echo $row['usuarios'] ?></td>
        <td><?php echo $row['contraseña'] ?></td>
        <td><?php echo $row['id_cargo'] ?></td>

        <TD><a href="modificar_usuarios.php? id=<?php echo $row['id'] ?>" class="btn btn-info" > <span class="material-symbols-outlined">
        edit_note
        </span>    </a></TD>

        <TD><a href="eliminar_usuarios.php? id=<?php echo $row['id'] ?>" class="btn btn-danger"   onclick="return confirmretirar()"> 
          <span class="material-symbols-outlined">
            delete
            </span>
         </a></TD>

        <?php
        }

        ?>


        </table>

        </center>


        
			
	</body>
</html>

