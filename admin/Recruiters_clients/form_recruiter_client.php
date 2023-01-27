<?php
 
  // $mysqli = new mysqli('localhost', 'usuario', 'password', 'base_de_datos');
 
  $mysqli = new mysqli('localhost', 'root', '', 'ves');
  
  
?>
  
<html>
  
<head>
  
  <title>Prueba con una lista y menú desplegable</title>
  
  <meta charset="utf-8"/>
  
</head>
  <a href="/LOGIN ROLES/admin/recruiters_clients/muestra_recruiters_clients.php">ver</a>
<body>
  
  <div align="center">                       
  
    <p>digite los clientes que tiene cada reclutador:</p>
  
    <form action="recibe_recruiter_client.php"  method="POST">

  

     <!-- <p>company_id: -->
  

     <!-- primer select -->
 <div class="recruiters_id"> 
<LABEL class="">recruiters_id:</LABEL></BR>
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

   

   <div class="clients_id">
<!-- segundo select  -->
<label class="">clients_id</label><br>
<select  name="ï»¿client_id" type="number">

<option value="0">Selecciona:</option>
    <?php
    $query = $mysqli -> query ("SELECT * FROM clients ");
    while ($valores = mysqli_fetch_array($query)) {

 echo '<option value="'.$valores['ï»¿client_id'].'">'.$valores['client_name'].'</option>';
    }

    ?>

  </select></div><br>

<div class="recruiter_name">
  <label for="" class="">recruiter name</label><br>
  <input type="text" name="recruiter_name"><br>
  </div>
  
<div class="client_name">
  <label for="" class="">client_name</label><br>
  <input type="text" name="client_name"><br>
  </div>

  <button>Enviar</button>

<!-- </p> -->
</form>
  </div>

</body>

</HTml>