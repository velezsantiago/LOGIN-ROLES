<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>actualizar</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">


    <script type="text/javascript">
    function confirmactualizar()
    {

        var respuesta = confirm("actualizar info? ");
    
    if (respuesta == true)
     {
   
        
return true;

    }
    else{
        return false;
    }


    }


</script>


    <?php
//ESTA CONEXION ESTA CREADA CON EL OBJETIVO DE HACER FUNCIONAR EL INPUT PARA SELECCIONAR EL ID_CARGO
	// $mysqli = new mysqli('localhost', 'usuario', 'password', 'base_de_datos');
	$conexion = new mysqli('localhost', 'root', '', 'ves');


	// $row=mysqli_fetch_array($query);
?>






    <?php 
    include("../conexion.php");
   

    $id=$_GET['id'];

    $sql="SELECT * FROM usuarios WHERE id='$id'";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
    
?>




</head>
<body>

<center>


<div class="container ">



<div class="form">
<form action="actualizar_usuarios.php" method="POST" class="" id="">
<H3>modificar usuarios</H3>


<INPUT type="hidden" name="id" value="<?php echo $row['id']?>">

<LABEL class="">digite el nuevo nombre de empleado</LABEL></BR>
<input type="text" class=" " name="nombre"  value="<?php echo $row['nombre'] ?>"> <br>

<LABEL class="">digite nombre usuario:</LABEL></BR>
<input type="text" class="" name="usuarios" value="<?php echo $row['usuarios'] ?>"><br>

<LABEL class="">modificar contraseña:</LABEL></BR>
<input type="password" class=" " name="contraseña"  value="<?php echo $row['contraseña'] ?>"> <br>








<div>
	<LABEL class="">modificar cargo</LABEL></BR>
	<select  name="id_cargo" type="number"     >

    <option ><?php echo $row['id_cargo'] ?></option><br><br>
	<?php
		$query =$conexion -> query ("SELECT * FROM cargo");
		while ($valores = mysqli_fetch_array($query)) 
		{								
		// echo  '<option value="'.$valores['descripcion'].'">'.$valores['id'].' '.$valores['descripcion'].' </option>';
        echo  '<option value="'.$valores['id'].'">'.$valores['descripcion'].'  </option>';
		
		}

	?>

</select><br>
</div>
<br><br><br><br><br>




<button class="btn btn-primary "  onclick="return confirmactualizar()">actualizar</button>

<!-- <input type="submit" class="btn btn-primary btn block" value= "Actualizar"> -->

<a href="/LOGIN ROLES/admin/index.php"  class="btn btn-primary">REGRESAR</a>

</div>

</form>
</center>
</div>
</div>
    



    <style>

            body{
            background-color: #0e4364;
            }

            .form{
            background-color:#097fb2;
            }

            h3{
                color: white;
                }

                label{
            color: white;

            }

            input{
                background-color: #8AC6BF;
                border: #0e4364;
                text-align: center;
            
                width: 255px;;
                    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            
            }



            select{
                background-color: #8AC6BF;
                width:8em;
                font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            }
    </style>

</body>
</html>
