<?php
include("../conexion.php");

?>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">
    <title>administar clientes</title>
   

    </head>
	 <body>

     <a  class="btn btn-danger" href='/LOGIN ROLES/usuarios/index.php'><span class="material-symbols-outlined">
            exit_to_app
        </span>leave</a>

        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
        <h1>admistarr que clienets tiene cada recruiter</h1>
        </center>

<center>
    <table border="1" class="table table-striped" >

        <tr style="background:#337ab7; color:WHITE;" >
        <td>#</td>
        <td>recruiters_id</td>
        <TD>clients id</TD>
        <td>recruiter name</td>
        <td>client name</td>
    
        
        </tr>

        <?php

        $consulta=$con->query("SELECT * FROM recruiters_clients");



        while($row=$consulta->fetch_array()){


        ?>

        <!-- tiene un error hay que fijarse en la correspondencia de la columnas -->


        <tr class="table-info">
      <td><?php echo $row['id_recruiters__clients'] ?></td>
      <td><?php echo $row['recruiters_id'] ?></td>
      <td><?php echo $row['clients_id'] ?></td>
      <td><?php echo $row['recruiter_name'] ?></td>
      <td><?php echo $row['client_name'] ?></td>


      <?php
      }

      ?>


        </table>

        </center>


        
			
	</body>
</html>

