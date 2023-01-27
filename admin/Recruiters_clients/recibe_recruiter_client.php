<?php 

include("../conexion.php");

// error_reporting(1);
   
    $id_recruiters__clients=$_POST['id_recruiters__clients'];
    $recruiters_id=$_POST['recruiters_id'];
    $ï»¿client_id=$_POST['ï»¿client_id'];
    $recruiter_name=$_POST['recruiter_name'];
    $client_name=$_POST['client_name'];
   
 
  
$sql="INSERT INTO recruiters_clients VALUES ('$id_recruiters__clients','$recruiters_id','$ï»¿client_id'
,'$recruiter_name','$client_name')";

if (mysqli_query($con, $sql)) {
    // echo "New record created successfully";

echo "<script language='JavaScript'>
    alert('New record created successfully');
    location.assign('/LOGIN ROLES/admin/Recruiters_clients/form_recruiter_client.PHP');
    </script>";


} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    echo "<script language='JavaScript'>
    location.assign('/LOGIN ROLES/admin/Recruiters_clients/form_recruiter_client.PHP');
    </script>";
}
mysqli_close($con);
?>
