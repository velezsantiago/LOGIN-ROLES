
<!-- -----ESTE CODIGO AYUDA A EVITAR QUE LA SESSION SIGA ABIERTA AUNQUE ESTE SE CIERRE------- -->

<?php 

session_start();
if (isset($_SESSION["usuarios"])) {
   


?>
<!-- -----ESTE CODIGO AYUDA A EVITAR QUE LA SESSION SIGA ABIERTA AUNQUE ESTE SE CIERRE------- -->





<?php

include("conexion.php");
$nombre=$_POST['nombre'];
$usuarios=$_POST['usuarios'];
$contraseña=$_POST['contraseña'];
$id_cargo=$_POST['id_cargo'];


if(strlen($contraseña) < 6){
    echo "<script language='JavaScript'>
    alert('contraseña debe tener 6 caracteres');
    location.assign('/LOGIN ROLES/registro/registro.php');
    </script>";

 }
 else if(strlen($contraseña) > 16){
 
    echo "<script language='JavaScript'>
    alert('no puede tener mas de 16 caracteres');
    location.assign('/LOGIN ROLES/registro/registro.php');
    </script>";

    
 }
 else if (!preg_match('`[a-z]`',$contraseña)){
    echo "<script language='JavaScript'>
    alert('la contraseña debe tener al menos una letra minuscula');
    location.assign('/LOGIN ROLES/registro/registro.php');
    </script>";


 }
 else if (!preg_match('`[A-Z]`',$contraseña)){
    echo "<script language='JavaScript'>
    alert('la contraseña debe tener al menos una letra mayuscula');
    location.assign('/LOGIN ROLES/registro/registro.php');
    </script>";
 }
 else if (!preg_match('`[0-9]`',$contraseña)){
    echo "<script language='JavaScript'>
    alert('debe tener almenos un caracter numerico');
    location.assign('/LOGIN ROLES/registro/registro.php');
    </script>";
 }

 else {
    $sql="INSERT INTO usuarios (nombre,usuarios,contraseña,id_cargo)  
VALUES  ('$nombre','$usuarios','$contraseña','$id_cargo')";
}

$query=mysqli_query($con,$sql);

if($query){


    echo "<script language='JavaScript'>
    alert('USUARIO CREADO CON EXITO');
    location.assign('../admin/index.php');
    </script>";
    

 
}else {

    echo '<script> alert("error")</script>';

}
?>
<!-- -----ESTE CODIGO AYUDA A EVITAR QUE LA SESSION SIGA ABIERTA AUNQUE ESTE SE CIERRE------- -->

<?php 

}else {
   
    header("location:../cerrar_sesion.php");

}

?>
<!-- -----ESTE CODIGO AYUDA A EVITAR QUE LA SESSION SIGA ABIERTA AUNQUE ESTE SE CIERRE------- -->

