
<?php  

$host = "localhost";
$user = "root";
$pass = "";
$db = "ves";

$con = new mysqli($host,$user,$pass,$db);

if ($con->connect_errno){
    die("error inesperado");
}

?>
