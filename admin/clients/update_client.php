
<?php 

include("../conexion.php");
// se debe incluir la conexion a base de datos 
// con este codigo recibimos los datos

$ï»¿client_id=$_POST['ï»¿client_id'];
$client_name=$_POST['client_name'];
$level=$_POST['level'];
$location=$_POST['location'];

// se usa un codigo SQL para insertar los valores en la base de datos

$sql="UPDATE clients SET 

client_name='$client_name',level='$level',location='$location'
WHERE ï»¿client_id='$ï»¿client_id' ";
$query=mysqli_query($con,$sql);


?>

<?php if($query) { ?>
    <h3>REGISTRO MODIFICADO</h3>
   
    <?php } else { ?>
    <h3>ERROR AL MODIFICAR</h3>
<?php } ?>

 "<script language='JavaScript'>
    alert('CLIENTE ACTUALIZADO');
    location.assign('/LOGIN ROLES/admin/clients/muestra_clients.php');
    </script>";


<!-- <a href="/VES/clients/muestra_clients.php" class="btn btn-primary">Regresar</a> -->





















