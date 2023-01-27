<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>actualizar</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">


    <?php
 
 // $mysqli = new mysqli('localhost', 'usuario', 'password', 'base_de_datos');

 $mysqli = new mysqli('localhost', 'root', '', 'ves');
 
?>


    <?php 
    include("../conexion.php");
   

    $id=$_GET['id'];

    $sql="SELECT * FROM recruiters WHERE recruiters_id='$id'";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
    

?>




</head>
<body>



<H1>modificar recruiters</H1>

<div class="container ">


<form action="update_recruiter.php" method="POST" class=" " >



<INPUT type="hidden" name="recruiters_id" value="<?php echo $row['recruiters_id']?>">

<LABEL class="">pep:</LABEL></BR>
<input type="text" class="" name="pep"  value="<?php echo $row['pep'] ?>"> <br>

<LABEL class="">myunknowncolumn:</LABEL></BR>
<input type="text" class=" " name="myunknowncolumn" value="<?php echo $row['myunknowncolumn'] ?>"><br>

<LABEL class="">td:</LABEL></BR>
<input type="text" class=" " name="td"  value="<?php echo $row['td'] ?>"> <br>

<LABEL class="">passport:</LABEL></BR>
<input type="text" class="" name="passport"  value="<?php echo $row['passport'] ?>"> <br>

<LABEL class="">full name:</LABEL></BR>
<input type="text" class=" " name="full_name"  value="<?php echo $row['full_name'] ?>"> <br>

<LABEL class="">first_name:</LABEL></BR>
<input type="text" class=" " name="first_name"  value="<?php echo $row['first_name'] ?>"> <br>
 
<LABEL class="">middle_name:</LABEL></BR>
<input type="text" class=" " name="middle_name"  value="<?php echo $row['middle_name'] ?>"> <br>

<LABEL class="">last name:</LABEL></BR>
<input type="text" class=" " name="last_name"  value="<?php echo $row['last_name'] ?>"> <br>

<LABEL class="">second last name:</LABEL></BR>
<input type="text" class=" " name="second_last_name"  value="<?php echo $row['second_last_name'] ?>"> <br>

<LABEL class="">birth date:</LABEL></BR>
<input type="date" class=" " name="birth_date"  value="<?php echo $row['birth_date'] ?>"> <br>

<LABEL class="">phone_number:</LABEL></BR>
<input type="text" class=" " name="phone_number"  value="<?php echo $row['phone_number'] ?>"> <br>

<LABEL class="">email:</LABEL></BR>
<input type="text" class=" " name="email"  value="<?php echo $row['email'] ?>"> <br>

<LABEL class="">position:</LABEL></BR>
<input type="text" class=" " name="position"  value="<?php echo $row['position'] ?>"> <br>

<LABEL class="">bank account:</LABEL></BR>
<input type="text" class=" " name="bank_account"  value="<?php echo $row['bank_account'] ?>"> <br>

<LABEL class="">adress:</LABEL></BR>
<input type="text" class=" " name="adress"  value="<?php echo $row['adress'] ?>"> <br>

<LABEL class="">identification:</LABEL></BR>
<input type="text" class=" " name="identification"  value="<?php echo $row['identification'] ?>"> <br>

<LABEL class="">city:</LABEL></BR>
<input type="text" class=" " name="city"  value="<?php echo $row['city'] ?>"> <br>

<LABEL class="">entry date:</LABEL></BR>
<input type="date" class=" " name="entry_date"  value="<?php echo $row['entry_date'] ?>"> <br>

<LABEL class="">allergies:</LABEL></BR>
<input type="text" class=" " name="allergies"  value="<?php echo $row['allergies'] ?>"> <br>

<LABEL class="">type blood:</LABEL></BR>
<input type="text" class=" " name="type_blood"  value="<?php echo $row['type_blood'] ?>"> <br>

<LABEL class="">eps:</LABEL></BR>
<input type="text" class=" " name="eps"  value="<?php echo $row['eps'] ?>"> <br>

<LABEL class="">pension_fund:</LABEL></BR>
<input type="text" class=" " name="pension_fund"  value="<?php echo $row['pension_fund'] ?>"> <br>

<LABEL class="">bank:</LABEL></BR>
<input type="text" class=" " name="bank"  value="<?php echo $row['bank'] ?>"> <br>





<LABEL class="">team id:</LABEL></BR>
<select  name="team_id" type="number"   value="">

<option value=""><?php echo $row['team_id'] ?></option>
<?php
$query = $mysqli -> query ("SELECT * FROM teams");
while ($valores = mysqli_fetch_array($query)) {

    
echo '<option value="'.$valores['team_id'].'">'.$valores['team_name'].'</option>';

}

?>

</select><br>





<LABEL class="">recruiterscol:</LABEL></BR>
<input type="text" class=" " name="recruiterscol"  value="<?php echo $row['recruiterscol'] ?>"> <br>



<button class="btn btn-primary ">actualizar</button>

<!-- <input type="submit" class="btn btn-primary btn block" value= "Actualizar"> -->

<a href="/LOGIN ROLES/admin/recruiters/formulario_recruiter.php"  class="btn btn-primary">REGRESAR</a>

</div>

</form>


</div>
    

</body>
</html>
