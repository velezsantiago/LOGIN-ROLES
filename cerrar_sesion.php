
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>closed</title>
</head>
<body>


<style>
    body{
        color: blue;
        background-color: blue;
    }
</style>
<?php
session_start();


echo "<script language='JavaScript'>
alert('session cerrada');
location.assign('index.html');
</script>";


// header("location:index.php");

session_destroy();



?>
    
</body>
</html>
