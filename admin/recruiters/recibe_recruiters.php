<?php 

include("../conexion.php");

error_reporting(1);
   
    $recruiters_id=$_POST['recruiters_id'];
    $pep=$_POST['pep'];
    $myunknowncolumn=$_POST['myunknowncolumn'];
    $td=$_POST['td'];
    $passport=$_POST['passport'];
    $full_name=$_POST['full_name'];
    $first_name=$_POST['first_name'];
    $middle_name=$_POST['middle_name'];
    $last_name=$_POST['last_name'];
    $second_last_name=$_POST['second_last_name'];
    $birth_date=$_POST['birth_date'];
    $phone_number=$_POST['phone_number'];
    $email=$_POST['email'];
    $position=$_POST['position'];
    $bank_account=$_POST['bank_account'];
    $adress=$_POST['adress'];
    $identification=$_POST['identification'];
    $city=$_POST['city'];
    $entry_date=$_POST['entry_date'];
    $allergies=$_POST['allergies'];
    $type_blood=$_POST['type_blood'];
    $eps=$_POST['eps'];
    $pension_fund=$_POST['pension_fund'];
    $bank=$_POST['bank'];
    $team_id=$_POST['team_id'];
    $recruiterscol=$_POST['recruiterscol'];
    





$sql="INSERT INTO recruiters VALUES ('$recruiters_id','$pep','$myunknowncolumn','$td',
 '$passport','$full_name','$first_name','$middle_name','$last_name','$second_last_name','$birth_date',
 '$phone_number', '$email', '$position','$bank_account','$adress','$identification','$city','$entry_date','$allergies',
 '$type_blood','$eps', '$pension_fund','$bank',$team_id,'$recruiterscol')";

if (mysqli_query($con, $sql)) {
    // echo "New record created successfully";

echo "<script language='JavaScript'>
    alert('New record created successfully');
    location.assign('/LOGIN ROLES/admin/recruiters/formulario_recruiter.php');
    </script>";


} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($con);
?>

<!-- if($query){

    
    echo "<script language='JavaScript'>
    alert('informacion ingresada correctamente');
    location.assign('formulario.php');
    </script>";
    

    // echo '<script> alert("insercion realizada corretamente")</script>';
    




   

    // Header("Location:inventariob.php");
    
}else {

    echo '<script> alert("error al insertar datos fijese en ingresar informacion correspondiente")</script>';

} -->
