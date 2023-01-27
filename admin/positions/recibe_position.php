<?php 

include("../conexion.php");


// error_reporting(1);

   

    $positions_id=$_POST['position_id'];
    $name=$_POST['name'];
    $company=$_POST['company'];
    $company_id=$_POST['company_id'];
 
  


$sql="INSERT INTO positions VALUES ('$position_id','$name','$company' ,'$company_id')";

if (mysqli_query($con, $sql)) {
    // echo "New record created successfully";

echo "<script language='JavaScript'>
    alert('New record created successfully');
    location.assign('formulario_positions.php');
    </script>";


} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($con);
?>
