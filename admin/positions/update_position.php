
<?php 

include("../conexion.php");
// se debe incluir la conexion a base de datos 
// con este codigo recibimos los datos

$positions_id=$_POST['positions_id'];
$name=$_POST['name'];
$company=$_POST['company'];
$company_id=$_POST['company_id'];


// se usa un codigo SQL para insertar los valores en la base de datos

$sql="UPDATE positions SET 

name='$name',company='$company',company_id='$company_id'
WHERE positions_id='$positions_id'";
$query=mysqli_query($con,$sql);


?>

<?php if($query) { ?>
    <h3>REGISTRO MODIFICADO</h3>
   
    <?php } else { ?>
    <h3>ERROR AL MODIFICAR</h3>
<?php } ?>

 <script language='JavaScript'>
    alert('Position actualizada');
    location.assign('/LOGIN ROLES/admin/positions/mostrar_positions.php');
    </script>;


<!-- <a href="/VES/clients/muestra_clients.php" class="btn btn-primary">Regresar</a> -->





















