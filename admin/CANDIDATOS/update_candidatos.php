
<?php 

include("../conexion.php");
// se debe incluir la conexion a base de datos 
// con este codigo recibimos los datos

$name=$_POST['name'];
$phone_number=$_POST['phone_number'];
$email=$_POST['email'];
$date_submitted=$_POST['date_submitted'];
$position=$_POST['position'];
$type_of_role=$_POST['type_of_role'];
$company=$_POST['company'];
$city=$_POST['city'];
$notes=$_POST['notes'];
$candidates_id=$_POST['candidates_id'];
$team_id=$_POST['team_id'];

$recruiter_id=$_POST['recruiter_id'];


// se usa un codigo SQL para insertar los valores en la base de datos

$sql="UPDATE candidates SET 

name='$name',phone_number='$phone_number',email='$email',date_submitted='$date_submitted',
position='$position',type_of_role='$type_of_role',company='$company',city='$city',
notes='$notes',candidates_id='$candidates_id',team_id='$team_id',recruiter_id='$recruiter_id'
WHERE candidates_id='$candidates_id'";

$query=mysqli_query($con,$sql);


?>

<?php if($query) { ?>
    <h3>REGISTRO MODIFICADO</h3>
   
    <?php } else { ?>
    <h3>ERROR AL MODIFICAR</h3>
<?php } ?>

 <script language='JavaScript'>
    alert('Position actualizada');
    location.assign('/LOGIN ROLES/admin/CANDIDATOS/FORMULARIO.PHP');
    </script>;


<!-- <a href="/VES/clients/muestra_clients.php" class="btn btn-primary">Regresar</a> -->




