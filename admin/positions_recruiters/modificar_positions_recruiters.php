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

    $sql="SELECT * FROM positions_recruiters WHERE id_positions_recruiters='$id'";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
    

?>




</head>
<body>



<H1>modificar posicion los reclutadores </H1>

<div class="container">


<form action="update_position_recruiters.php" method="POST" class="">



<INPUT type="hidden" name="id_positions_recruiters" value="<?php echo $row['id_positions_recruiters']?>">


<div>

<LABEL class="">recruiters id :</LABEL></BR>
<select  name="recruiters_id" type="number"   value="">

<option value=""><?php echo $row['recruiters_id'] ?></option>
<?php
$query =$con -> query ("SELECT * FROM recruiters");
while ($valores = mysqli_fetch_array($query)) {

    
echo '<option value="'.$valores['recruiters_id'].'">'.$valores['full_name'].'</option>';

}

?>

</select><br>
</div>
<!-- segundo select  -->


<div>
<LABEL class="">position_id :</LABEL></BR>
<select  name="positions_id" type="number"   value="">

<option value=""><?php echo $row['positions_id'] ?></option>
<?php
$query = $con -> query ("SELECT * FROM positions");
while ($valores = mysqli_fetch_array($query)) {

    
echo '<option value="'.$valores['positions_id'].'">'.$valores['name'].'</option>';

}

?>

</select><br>

</div>



<button class="btn btn-primary " >actualizar</button>

<!-- <input type="submit" class="btn btn-primary btn block" value= "Actualizar"> -->

     <a href="/LOGIN ROLES/admin/clients/muestra_clients.php"  class="btn btn-primary">REGRESAR</a>

</div>

</form>


</div>
    

</body>
</html>
