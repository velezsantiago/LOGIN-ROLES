<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PAGINA INICIAL</title>

    <link rel="stylesheet" href="/LOGIN ROLES/CSS/PAGINAS_PRINCI2.CSS">
    <script
    src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous">
    </script>
    <!-- <script 
    src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous">
    </script> -->

    <script>
                $(document),ready(function(){
        $('#icon').click(function(){
        $('ul').toggleClass('show')


            });
                });
    </script>


</head>

<style>
  center{
    color: white;
  }
</style>
<body>
   
    <nav >

   

<?php
session_start();

if(isset($_SESSION['usuarios']))
{
?>
  
<CENTER>
  welcome
<?php

 
    echo  $_SESSION['usuarios']  ;

   
}
?>
</CENTER>


  


<!-- <label class="logo">company info</label><br> -->
<!-- <li><a class="active" href="#">home</a></li>  -->

<div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    HOME
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
      <!-- <a class="dropdown-item" href="/LOGIN ROLES/admin/admin_portada.php" class="btn btn-success" >  <span class="material-symbols-outlined" style="
    font-variation-settings:
    'FILL' 0,
    'wght' 400,
    'GRAD' 0,
    'opsz' 48">assignment_add</span>administar usuarios</a>
 

    <a class="dropdown-item" href="../registro.php" class="btn btn-success" >  <span class="material-symbols-outlined" style="
  font-variation-settings:
  'FILL' 0,
  'wght' 400,
  'GRAD' 0,
  'opsz' 48">assignment_add</span>CREAR NUEVO USUARIO</a> -->


<a href="/LOGIN ROLES/admin/administrar_usuarios.php"><button class="btn btn-info text-left"> <span class="material-symbols-outlined" style="
    font-variation-settings:
    'FILL' 0,
    'wght' 400,
    'GRAD' 0,
    'opsz' 48">admin_panel_settings</span> administrar usuarios</button></a><br><br>

<a href="../registro/registro.php"><button class="btn btn-info text-left"><span class="material-symbols-outlined" style="
    font-variation-settings:
    'FILL' 0,
    'wght' 400,
    'GRAD' 0,
    'opsz' 48">person_add</span> crear nuevo user</button></a><br><br>

<a href="../cerrar_sesion.php"><button class="btn btn-danger text-left"><span class="material-symbols-outlined" style="
    font-variation-settings:
    'FILL' 0,
    'wght' 400,
    'GRAD' 0,
    'opsz' 48">do_not_disturb_on</span> Cerrar Sesion</button></a>
  
  
</ul>
<ul>





<li><a href="/LOGIN ROLES/admin/clients/clients.php">clients</a></li>
<li><a href="/LOGIN ROLES/admin/positions_recruiters/form_position_recruiters.php">positions recruiters</a></li>
<li><a href="/LOGIN ROLES/admin/positions/formulario_positions.php">positions</a></li>
<li><a href="/LOGIN ROLES/admin/recruiters/formulario_recruiter.php">recruiters</a></li>
<li><a href="/LOGIN ROLES/admin/recruiters_clients/form_recruiter_client.php"">clients recruiters</a></li>
<li><a href="/LOGIN ROLES/admin/teams/mostrar_teams.php"">teams</a></li>



</ul>

<label id="icon"> 

<i class="fas fa-bars" ></i>



</label>

    </nav>

    <section>

    </section>

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"> -->

    <!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script> -->

<!-- LLAMARV A GOOGLE  FONTS -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
        integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" 
        crossorigin="anonymous"> -->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>