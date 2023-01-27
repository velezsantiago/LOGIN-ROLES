<?php 

include("../conexion.php");

// error_reporting(1);
   
    $name=$_POST['name'];
    $phone_number=$_POST['phone_number'];
    $email=$_POST['email'];
    $date_submitted=$_POST['date_submitted'];
    $position=$_POST['position'];
    $type_of_role=$_POST['type_of_role'];
    $company=$_POST['company'];
    $city=$_POST['city'];
    $notes=$_POST['notes'];
    $team_id=$_POST['team_id'];
    $recruiter_id=$_POST['recruiter_id'];
 
  


$sql="INSERT INTO candidates 
VALUES ('$name','$phone_number','$email' ,'$date_submitted','$position','$type_of_role','$company','$city','$notes','null','$team_id','$recruiter_id' )";

if (mysqli_query($con,$sql)) {
    // echo "New record created successfully";

echo "<script language='JavaScript'>
    alert('informacion insertada');
    location.assign('/LOGIN ROLES/admin/CANDIDATOS/FORMULARIO.PHP');
    </script>";


} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($con);
?>
