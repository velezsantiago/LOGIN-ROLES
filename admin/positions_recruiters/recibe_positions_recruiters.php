<?php 

include("../conexion.php");

// error_reporting(1);
   
    $id_positions_recruiters=$_POST['id_positions_recruiters'];
    $recruiters_id=$_POST['recruiters_id'];
    $positions_id=$_POST['positions_id'];
   
 
  
$sql="INSERT INTO positions_recruiters VALUES ('$id_positions_recruiters','$recruiters_id','$positions_id')";

if (mysqli_query($con, $sql)) {
    // echo "New record created successfully";

echo "<script language='JavaScript'>
    alert('New record created successfully');
    location.assign('/LOGIN ROLES/admin/positions_recruiters/form_position_recruiters.php');
    </script>";


} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($con);
?>
