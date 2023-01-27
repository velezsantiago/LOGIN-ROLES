
<?php 

include("../conexion.php");
// se debe incluir la conexion a base de datos 
// con este codigo recibimos los datos

$id=$_POST['id'];
$nombre=$_POST['nombre'];
$usuarios=$_POST['usuarios'];
$contraseña=$_POST['contraseña'];
$id_cargo=$_POST['id_cargo'];


// se usa un codigo SQL para insertar los valores en la base de datos

$sql="UPDATE usuarios SET 

nombre='$nombre',usuarios='$usuarios',contraseña='$contraseña',id_cargo='$id_cargo'
WHERE id='$id' ";
$query=mysqli_query($con,$sql);


if($query){

    echo "<script language='JavaScript'>
    alert('informacion de usuario actualizada');
    location.assign('/LOGIN ROLES/admin/administrador/administrar_usuarios.php');
    </script>";

  


}else{
    echo "<script language='JavaScript'>
    alert('a ocurrido un error inesperado');
    location.assign('/LOGIN ROLES/admin/administrador/administrar_usuarios.php');
    </script>";

}



?>
