<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>actualizar</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">


    <?php 
    include("../conexion.php");
   

    $id=$_GET['id'];

    $sql="SELECT * FROM clients WHERE ï»¿client_id='$id'";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
    

?>




</head>
<body>

 <center>

<H1>modificar clients</H1>

<div class="container">


<form action="update_client.php" method="POST" class="   ">



<INPUT type="hidden" name="ï»¿client_id" value="<?php echo $row['ï»¿client_id']?>">

<LABEL class="">client_name:</LABEL></BR>
<input type="text" class=" " name="client_name" placeholder="client_name" value="<?php echo $row['client_name'] ?>"> <br>

<LABEL class="">level:</LABEL></BR>
<input type="number" class=" " name="level" placeholder="level" value="<?php echo $row['level'] ?>"><br>

<LABEL class="">location:</LABEL></BR>
<input type="text" class=" " name="location" placeholder="location" value="<?php echo $row['location'] ?>"> <br>





<button class="btn btn-primary "   >actualizar</button>

<!-- <input type="submit" class="btn btn-primary btn block" value= "Actualizar"> -->

<a href="/LOGIN ROLES/admin/clients/muestra_clients.php"  class="btn btn-primary">REGRESAR</a>

</div>

</form>
</center>

</div>
    

</body>
</html>
