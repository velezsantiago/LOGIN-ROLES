

<?php
//ESTA CONEXION ESTA CREADA CON EL OBJETIVO DE HACER FUNCIONAR EL INPUT PARA SELECCIONAR EL ID_CARGO
	// $mysqli = new mysqli('localhost', 'usuario', 'password', 'base_de_datos');
	$conexion = new mysqli('localhost', 'root', '', 'ves');
	// $sql="SELECT * FROM cargo";
	// $query=mysqli_query($conexion,$sql);

	// $row=mysqli_fetch_array($query);
?>




<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>pagina  registro</title>

		<link rel="stylesheet" href="../CSS/registro.css" >
	</head>
	<body>

		<div id="contenedor">
		<div id="central">
		<div id="login">
		<div class="titulo">crear usuario </div>


	<form id="loginform" method="POST" action="insertar_registro.php">
														
														
	<input type="text" name="nombre" placeholder="nombre_empleado" class="input-100" required>
	<input type="text" name="usuarios"  placeholder="ingrese usuario" class="input-48" required>
	<input type="password" name="contraseña" placeholder="ingrese contraseña"  class="input-48" required>


	<!-- <input type="number" name="id_cargo" placeholder="digite numero de cargo"  class="input-48" required> -->


	<div>
	<LABEL class="">selecciona cargo</LABEL></BR>
	<select  name="id_cargo" type="number">

	<?php
		$query =$conexion -> query ("SELECT * FROM cargo");
		while ($valores = mysqli_fetch_array($query)) 
		{								
		echo '<option value="'.$valores['id'].'">'.$valores['descripcion'].'</option>';
		
		}

	?>

</select><br>
</div>
	<br><br>
<!-- boton para enviar -->
	<input type="submit" value="send"  >

    <a href="../admin/index.php">volver</a><br/><br/>
   
  </form>


</body>
</html>
