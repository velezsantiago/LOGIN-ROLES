<?php
 
  // $mysqli = new mysqli('localhost', 'usuario', 'password', 'base_de_datos');
 
  $mysqli = new mysqli('localhost', 'root', '', 'ves');
  
  
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>form recruiters</title>
</head>
<body>
  
<a href="/LOGIN ROLES/admin/recruiters/muestra_recruiter.php">visualizar recruiters</a>

<h1>fomularios de reclutadores</h1>




<h2>ingrese informacion de los recruiters</h2>

<!-- -----------------FORMULARIO DE LOS RECLTADORES------------------------------------------------------ -->

<form action="recibe_recruiters.php" method="post" class="">

<div>

<LABEL class="">pep:</LABEL></BR>
<input type="text" class="" name="pep" placeholder="pep" value=""> <br>


<LABEL class="">myunknowncolumn:</LABEL></BR>
<input type="text" class=" " name="myunknowncolumn" placeholder="myunknowncolumn" value=""> <br>

<LABEL class="">td:</LABEL></BR>
<input type="text" class=" " name="td" placeholder="td" value=""> <br>

<LABEL class="">passport:</LABEL></BR>
<input type="text" class=" " name="passport" placeholder="passport" value=""> <br>


<LABEL class="">full_name:</LABEL></BR>
<input type="text" class=" " name="full_name" placeholder="full_name" value=""> <br>


<LABEL class="">first_name:</LABEL></BR>
<input type="text" class=" " name="first_name" placeholder="first_name" value=""> <br>

<LABEL class="">middle_name:</LABEL></BR>
<input type="text" class="" name="middle_name" placeholder="middle_name" value=""> <br>



<LABEL class="">last_name:</LABEL></BR>
<input type="text" class=" " name="last_name" placeholder="last_name" value=""> <br>

<LABEL class="">second_last_name:</LABEL></BR>
<input type="text" class=" " name="second_last_name" placeholder="second_  last name" value=""> <br>



<LABEL class="">birth_date:</LABEL></BR>
<input type="date" class=" " name="birth_date" placeholder="birth_date" value=""> <br>


<LABEL class="">phone_number:</LABEL></BR>
<input type="text" class=" " name="phone_number" placeholder="phone_number" value=""> <br>

<LABEL class="">email:</LABEL></BR>
<input type="text" class=" " name="email" placeholder="email" value=""> <br>



<LABEL class="">position:</LABEL></BR>
<input type="text" class=" " name="position" placeholder="position" value=""> <br>


<LABEL class="">bank_account:</LABEL></BR>
<input type="text" class=" " name="bank_account" placeholder="bank_account" value=""> <br>



<LABEL class="">adress:</LABEL></BR>
<input type="text" class=" " name="adress" placeholder="adress" value=""> <br>



<LABEL class="">identification:</LABEL></BR>
<input type="text" class=" " name="identification" placeholder="identification" value=""> <br>


<LABEL class="">city:</LABEL></BR>
<input type="text" class=" " name="city" placeholder="city" value=""> <br>
 
<LABEL class="">entry_date:</LABEL></BR>
<input type="date" class=" " name="entry_date" placeholder="entry_date" value=""> <br>

<LABEL class="">allergies:</LABEL></BR>
<input type="text" class=" " name="allergies" placeholder="allergies" value=""> <br>


<LABEL class="">type_blood:</LABEL></BR>
<input type="text" class=" " name="type_blood" placeholder="type_blood" value=""> <br>

<LABEL class="">eps:</LABEL></BR>
<input type="text" class=" " name="eps" placeholder="eps" value=""> <br>


<LABEL class="">pension_fund:</LABEL></BR>
<input type="text" class=" " name="pension_fund" placeholder="pension_fund" value=""> <br>



<LABEL class="">bank:</LABEL></BR>
<input type="text" class=" " name="bank" placeholder="bank" value=""> <br>






     <!-- <p>company_id: -->
  
<!-- USAMOS EL SELECT PARA SELECCIONAR DATOS DE OTRAS TABLAS -->

<LABEL class="">team_id:</LABEL></BR>
<select  name="team_id" type="number" placeholder="team id">

<option value="0">Selecciona:</option>
    <?php
    $query = $mysqli -> query ("SELECT * FROM teams");
    while ($valores = mysqli_fetch_array($query)) {

 echo '<option value="'.$valores['team_id'].'">'.$valores['team_name'].'</option>';
    }

    ?>

  </select>
 <br>
 <!-- USAMOS EL SELECT PARA SELECCIONAR DATOS DE OTRAS TABLAS -->

 <LABEL class="">recruiterscol:</LABEL></BR>
<input type="text" class=" " name="recruiterscol" placeholder="recruiterscol" value=""> <br>


  <button>Enviar</button>



</div>

</form>

<!-- -----------------FIN DEL FORMULARIO------------------------------------------------------ -->



    
</body>
</html>