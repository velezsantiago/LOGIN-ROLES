

<?php

include("../conexion.php");


$id=$_GET['id'];

$sql="DELETE FROM usuarios  WHERE id='$id'";
$query=mysqli_query($con,$sql);

    if($query){
     
        echo "<script language='JavaScript'>
        alert('informacion de usuario ELIMINADA');
        location.assign('/LOGIN ROLES/admin/administrador/administrar_usuarios.php');
        </script>";
    
    }

else{
    echo "<script language='JavaScript'>
    alert('a ocurrido un error inesperado');
    location.assign('/LOGIN ROLES/admin/administrador/administrar_usuarios.php');
    </script>";

}
?>


