<?php 

$usuarios=$_POST['usuarios'];
$contraseña=$_POST['contraseña'];
session_start();
$_SESSION['usuarios']=$usuarios;
error_reporting(0);

$conexion=mysqli_connect("localhost" ,"root","","ves");

$consulta="SELECT * FROM usuarios where usuarios='$usuarios' and contraseña='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);

$filas=mysqli_fetch_array($resultado);

if ($filas['id_cargo']==3){ // administrtador
    echo "<script language='JavaScript'>
    alert('session iniciada');
    location.assign('/LOGIN ROLES/admin/index.php');
    </script>";


    // header("location:/LOGIN ROLES/admin/index.php");
}


else if($filas['id_cargo']==2){//otro usuario lider

    header("location:/LOGIN ROLES/lider/lider_portada.php");
}

else if($filas['id_cargo']==1){//otro usuario lider

    header("location:/LOGIN ROLES/usuarios/index.php");
}






else {
    ?>
    <?php 
    include("index.html");
    ?>
  "<script language='JavaScript'>
    alert('error de autentificacion');
  
    </script>";
<!-- 
    <h1>error de autentificacion</h1> -->
    <?php
}
mysqli_free_result($resultado);
mysqli_close($conexion);




