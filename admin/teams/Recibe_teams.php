<?php 

include("../conexion.php");

   
    $team_name=$_POST['team_name'];
    $workgroup=$_POST['workgroup'];
    $leader_id=$_POST['leader_id'];
   

  


$sql="INSERT INTO teams
VALUES ('null','$team_name','$workgroup','$leader_id' )";

if (mysqli_query($con,$sql)) {
    // echo "New record created successfully";

echo "<script language='JavaScript'>
    alert('informacion insertada');
    location.assign('formulario_teams.php');
    </script>";


} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($con);
?>
