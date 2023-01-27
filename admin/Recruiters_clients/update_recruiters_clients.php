
<?php 

include("../conexion.php");
// se debe incluir la conexion a base de datos 
// con este codigo recibimos los datos

$id_recruiters__clients=$_POST['id_recruiters__clients'];
$recruiters_id=$_POST['recruiters_id'];
$clients_id=$_POST['clients_id'];
$recruiter_name=$_POST['recruiter_name'];
$client_name=$_POST['client_name'];

// se usa un codigo SQL para insertar los valores en la base de datos
$sql="UPDATE recruiters_clients SET 

id_recruiters__clients='$id_recruiters__clients',recruiters_id='$recruiters_id',clients_id='$clients_id',recruiter_name='$recruiter_name',
client_name='$client_name'

WHERE id_recruiters__clients='$id_recruiters__clients'";

$query=mysqli_query($con,$sql);


?>

<?php if($query) { ?>
    <h3>REGISTRO MODIFICADO</h3>
   
    <?php } else { ?>
    <h3>ERROR AL MODIFICAR</h3>
<?php } ?>

 <script language='JavaScript'>
    alert('update');
    location.assign('/LOGIN ROLES/admin/recruiters_clients/muestra_recruiters_clients.php');
    </script>;


<!-- <a href="/VES/clients/muestra_clients.php" class="btn btn-primary">Regresar</a> -->



