
<?php 

include("../conexion.php");
// se debe incluir la conexion a base de datos 
// con este codigo recibimos los datos

$team_id=$_POST['team_id'];
$team_name=$_POST['team_name'];
$workgroup=$_POST['workgroup'];
$leader_id=$_POST['leader_id'];


// se usa un codigo SQL para insertar los valores en la base de datos

$sql="UPDATE teams SET 

team_name='$team_name',workgroup='$workgroup',leader_id='$leader_id'
WHERE team_id='$team_id'";
$query=mysqli_query($con,$sql);


?>

<?php if($query) { ?>
    <h3>REGISTRO MODIFICADO</h3>
   
    <?php } else { ?>
    <h3>ERROR AL MODIFICAR</h3>
<?php } ?>

 <script language='JavaScript'>
    alert('Position actualizada');
    location.assign('/LOGIN ROLES/admin/teams/mostrar_teams.php');
    </script>;


<!-- <a href="/VES/clients/muestra_clients.php" class="btn btn-primary">Regresar</a> -->




