<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>form clients</title>
</head>
<body>
<a href="/LOGIN ROLES/admin/clients/muestra_clients.php">visualizar</a>
<center>
<h1>formulario de los clientes  </h1>




<h2>ingrese informacion de los clientes</h2>

<!-- -----------------FORMULARIO DE LOS RECLTADORES------------------------------------------------------ -->

<form action="recibe_client.php" method="post" class="">

<div>

<!-- 

<LABEL class="">client_id:</LABEL></BR>
<input type="text" class="" name="pep" placeholder="pep" value=""> <br> -->

<div class="client_name">
<LABEL class="">client_name:</LABEL></BR>
<input type="text" class=" " name="client_name" placeholder="client_name" value=""> <br>
</div>


<div class="level">
<LABEL class="">level:</LABEL></BR>
<input type="number" class=" " name="level" placeholder="level" value=""> <br>
</div>

<div class="location">
<LABEL class="">location:</LABEL></BR>
<input type="text" class=" " name="location" placeholder="location" value=""> <br>
</div>


<input type="submit" value="send" class="btn-enviar">

</div>

</form>
</center>
<!-- -----------------FIN DEL FORMULARIO------------------------------------------------------ -->



    
</body>
</html>