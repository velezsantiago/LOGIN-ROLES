
<?php
$servername = "localhost";
$database = "ves";
$username = "root";
$password = "";
// Create connection
$con = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$con) {
      die("Connection failed: " . mysqli_connect_error());
}
 
// echo "<script language='JavaScript'>
//     alert('Connected successfully);
    
//     </script>";

