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

    $sql="SELECT * FROM teams WHERE team_id='$id'";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
    
?>




</head>
<body>

<center>

<H1>modificar teams</H1>

<div class="container ">


<form action="update_teams.php" method="POST" class="" id="">



<INPUT type="hidden" name="team_id" value="<?php echo $row['team_id']?>">

<LABEL class="">team name:</LABEL></BR>
<input type="text" class=" " name="team_name" value="<?php echo $row['team_name'] ?>"> <br>

<LABEL class="">workgroup</LABEL></BR>
<input type="text" class="" name="workgroup"  value="<?php echo $row['workgroup'] ?>"><br>


<LABEL class="">id_lider:</LABEL></BR>
<select  name="leader_id" type="number"   >

<option ><?php echo $row['leader_id'] ?></option>
<?php
$query = $mysqli -> query ("SELECT * FROM recruiters");
while ($valores = mysqli_fetch_array($query)) {

echo '<option value="'.$valores['recruiters_id'].'">'.$valores['full_name'].'</option>';
}

?>

</select><br><br>


<button class="btn btn-primary ">actualizar</button>

<!-- <input type="submit" class="btn btn-primary btn block" value= "Actualizar"> -->

<a href="/LOGIN ROLES/admin/positions/mostrar_positions.php"  class="btn btn-primary">REGRESAR</a>

</div>

</form>
</center>

</div>
    

</body>
</html>
