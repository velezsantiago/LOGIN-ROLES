
<?php 

include("../conexion.php");
// se debe incluir la conexion a base de datos 
// con este codigo recibimos los datos

$id_positions_recruiters=$_POST['id_positions_recruiters'];
$recruiters_id=$_POST['recruiters_id'];
$positions_id=$_POST['positions_id'];

// se usa un codigo SQL para insertar los valores en la base de datos
$sql="UPDATE positions_recruiters SET 

recruiters_id='$recruiters_id',positions_id='$positions_id'
WHERE id_positions_recruiters='$id_positions_recruiters' ";
$query=mysqli_query($con,$sql);


?>

<?php if($query) { ?>
    <h3>REGISTRO MODIFICADO</h3>
   
    <?php } else { ?>
    <h3>ERROR AL MODIFICAR</h3>
<?php } ?>

 "<script language='JavaScript'>
    alert('posicion de cada reclutador actualizada');
    location.assign('/LOGIN ROLES/admin/positions_recruiters/muestra_positions_recruiters.php');
    </script>";


<!-- <a href="/VES/clients/muestra_clients.php" class="btn btn-primary">Regresar</a> -->



