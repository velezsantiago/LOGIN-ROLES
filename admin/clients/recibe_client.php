<?php 

include("../conexion.php");

// error_reporting(1);
   
    $client_id=$_POST['client_id'];
    $client_name=$_POST['client_name'];
    $level=$_POST['level'];
    $location=$_POST['location'];
 
  


$sql="INSERT INTO clients VALUES ('$client_id','$client_name','$level' ,'$location')";

if (mysqli_query($con, $sql)) {
    // echo "New record created successfully";

echo "<script language='JavaScript'>
    alert('New record created successfully');
    location.assign('clients.php');
    </script>";


} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($con);
?>
