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

    $sql="SELECT * FROM positions WHERE positions_id='$id'";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
    
?>




</head>
<body>



<H1>modificar positions</H1>

<div class="container ">


<form action="update_position.php" method="POST" class="" id="">



<INPUT type="hidden" name="positions_id" value="<?php echo $row['positions_id']?>">

<LABEL class="">name position:</LABEL></BR>
<input type="text" class=" " name="name" placeholder="name_position" value="<?php echo $row['name'] ?>"> <br>

<LABEL class="">company:</LABEL></BR>
<input type="text" class="" name="company" placeholder="company" value="<?php echo $row['company'] ?>"><br>

<!-- <LABEL class="">company_id:</LABEL></BR>
<input type="number" class=" " name="company_id" placeholder="company_id" value="<?php echo $row['company_id'] ?>"> <br> -->


<LABEL class="">company_id:</LABEL></BR>
<select  name="company_id" type="number"   value="">

<option value=""><?php echo $row['company_id'] ?></option>
<?php
$query = $mysqli -> query ("SELECT * FROM clients");
while ($valores = mysqli_fetch_array($query)) {

echo '<option value="'.$valores['ï»¿client_id'].'">'.$valores['client_name'].'</option>';
}

?>

</select>


<button class="btn btn-primary ">actualizar</button>

<!-- <input type="submit" class="btn btn-primary btn block" value= "Actualizar"> -->

<a href="/LOGIN ROLES/admin/positions/mostrar_positions.php"  class="btn btn-primary">REGRESAR</a>

</div>

</form>


</div>
    

</body>
</html>
