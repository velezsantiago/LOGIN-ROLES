
<?php 

include("../conexion.php");
// se debe incluir la conexion a base de datos 
// con este codigo recibimos los datos

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



// se usa un codigo SQL para insertar los valores en la base de datos

$sql="UPDATE recruiters SET 

pep='$pep',myunknowncolumn='$myunknowncolumn',td='$td',passport='$passport',pep='$pep',full_name='$full_name',first_name='$first_name',middle_name='$middle_name',last_name='$last_name',second_last_name='$second_last_name', birth_date='$birth_date',phone_number='$phone_number',email='$email',position='$position',bank_account='$bank_account',adress='$adress',identification='$identification',city='$city',entry_date='$entry_date',allergies='$allergies',type_blood='$type_blood',eps='$eps',pension_fund='$pension_fund',bank='$bank',team_id='$team_id',recruiterscol='$recruiterscol'
WHERE recruiters_id='$recruiters_id' ";
$query=mysqli_query($con,$sql);


if($query){

    echo "<script language='JavaScript'>
    alert('info del reclutador modificada');
    location.assign('/LOGIN ROLES/admin/recruiters/muestra_recruiter.php');
    </script>";

  


}else{
    echo "<script language='JavaScript'>
    alert('a ocurrido un error inesperado');
    location.assign('/LOGIN ROLES/admin/recruiters/muestra_recruiter.php');
    </script>";

}



?>




<!-- <a href="/VES/clients/muestra_clients.php" class="btn btn-primary">Regresar</a> -->





















