<?php
 
  // $mysqli = new mysqli('localhost', 'usuario', 'password', 'base_de_datos');
 
  $mysqli = new mysqli('localhost', 'root', '', 'ves');
  
  
?>
  
<html>
  
<a href="/LOGIN ROLES/admin/positions_recruiters/muestra_positions_recruiters.php">ver</a>
<head>
  
  <title>Prueba con una lista y menú desplegable</title>
  
  <meta charset="utf-8"  />
  
</head>
  
<body>
  
  <div align="center">                       
  
    <p>digite las pocision con la que trabaja el empleado:</p>
  
    <form action="recibe_positions_recruiters.php"  method="POST">

  

     <!-- <p>company_id: -->
  

<div class="recruiters_id">
<LABEL class="">recruiter name:</LABEL></BR>
<select  name="recruiters_id" type="number">

<option value="0">Selecciona:</option>
    <?php
    $query = $mysqli -> query ("SELECT * FROM recruiters");
    while ($valores = mysqli_fetch_array($query)) {

 echo '<option value="'.$valores['recruiters_id'].'">'.$valores['full_name'].'</option>';
    }

    ?>

  </select>
  
  </div>
  <br>


<div class="positions_id">
<!-- segundo select  -->
<label class="">positions name</label><br>
<select  name="positions_id" type="number">

<option value="0">Selecciona:</option>
    <?php
    $query = $mysqli -> query ("SELECT * FROM positions ");
    while ($valores = mysqli_fetch_array($query)) {

 echo '<option value="'.$valores['positions_id'].'">'.$valores['name'].'</option>';
    }

    ?>

  </select>
  </div>
 <br>

  <button>Enviar</button>

<!-- </p> -->
</form>
  </div>

</body>

</HTml>