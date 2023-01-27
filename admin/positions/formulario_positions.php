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
    <title>form the positions</title>
</head>
<body>



<h1>formulario de las posisiones  </h1>


<a href="/LOGIN ROLES/admin/positions/mostrar_positions.php">visualizar posiciones</a>

<h2>ingrese informacion de las posiciones</h2>

<!-- -----------------FORMULARIO DE LAS POSCISIONES------------------------------------------------------ -->


<form action="recibe_position.php"  method="POST">



<div class="name">
<LABEL class="">name:</LABEL></BR>
<input type="text" class=" " name="name" placeholder="name position " value=""> <br>
</div>

<div class="company">
<LABEL class="">company:</LABEL></BR>
<input type="text" class=" " name="company" placeholder="company" value=""> <br>
</div>

 <!-- <p>company_id: -->
<div class="company_id">
<LABEL class="">company_id:</LABEL></BR>
<select  name="company_id" type="number" placeholder="company_id">

<option value="0">Selecciona:</option>
<?php
$query = $mysqli -> query ("SELECT * FROM clients");
while ($valores = mysqli_fetch_array($query)) {

echo '<option value="'.$valores['ï»¿client_id'].'">'.$valores['client_name'].'</option>';

echo '<option value="'.$valores['client_name'].'">'.$valores['ï»¿client_id'].'</option>';
}

?>

</select>
</div>
<br>

<button>Enviar</button>

<!-- </p> -->
</form>
</div>







<!-- -----------------FIN DEL FORMULARIO------------------------------------------------------ -->



    
</body>
</html>