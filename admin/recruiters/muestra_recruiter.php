<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>mostrar reclutadores </title>
</head>
<body>
<a  class="btn btn-danger" href='/LOGIN ROLES/admin/index.php'><span class="material-symbols-outlined">
            exit_to_app
        </span>leave</a>

        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

     <script type="text/javascript">
    function confirmretirar()
    {

        var respuesta = confirm("al acetar eliminaras usuario ");
    
    if (respuesta == true)
     {
   
        
return true;

    }
    else{
        return false;
    }


    }


</script>

<style>
    body{
        /* color: #337ab7; */
        background-color: #8AC6BF;
    }

    h1{
        color: white;
  

    }
</style>
	
        <center>          
        <h1>admistrar recruitersr</h1>
        </center>

<center>










<table  border="1" class="table table-striped" >
<tr style="background:#337ab7; color:WHITE;">
<td>#</td>
    <td>pep</td>
    <td>myunknowncolumn</td>
    <TD>td</TD>
    <td>Passport</td>
    <td>full name </td>
    <TD>first name</TD>
    <td>midle name</td>
    <TD>last name</TD>
    <TD>second_last_name</TD>
    <td>birth date</td>
    <th>phone_number</th>
    <th>email</th>
    <th>position</th>
    <th>bank_acount</th>
    <th>adress</th>
    <th>identification</th>
    <th>city</th>
    <th>entry date</th>
    <th>allergies</th>
    <th>type_blood</th>
    <th>eps</th>
    <th>pension fund</th>
    <th>bank</th>
    <th>team id</th>
    <th>recruiterscol</th>


    <td>editar</td> 
    
</tr>





<?php

include("../conexion.php");

$consulta=$con->query("SELECT * FROM recruiters ");



while($row=$consulta->fetch_array()){


?>

<!-- tiene un error hay que fijarse en la correspondencia de la columnas -->


<tr class="table-info">

<td><?php echo $row['recruiters_id'] ?></td>
<td><?php echo $row['pep'] ?></td>
<td><?php echo $row['myunknowncolumn'] ?></td>
<td><?php echo $row['td'] ?></td>
<td><?php echo $row['passport'] ?></td>
<td><?php echo $row['full_name'] ?></td>
<td><?php echo $row['first_name'] ?></td>
<td><?php echo $row['middle_name'] ?></td>
<td><?php echo $row['last_name'] ?></td>
<td><?php echo $row['second_last_name'] ?></td>
<td><?php echo $row['birth_date'] ?></td>
<td><?php echo $row['phone_number'] ?></td>
<td><?php echo $row['email'] ?></td>
<td><?php echo $row['position'] ?></td>
<td><?php echo $row['bank_account'] ?></td>
<td><?php echo $row['adress'] ?></td>
<td><?php echo $row['identification'] ?></td>
<td><?php echo $row['city'] ?></td>


<td><?php echo $row['entry_date'] ?></td>
<td><?php echo $row['allergies'] ?></td>
<td><?php echo $row['type_blood'] ?></td>
<td><?php echo $row['eps'] ?></td>
<td><?php echo $row['pension_fund'] ?></td>
<td><?php echo $row['bank'] ?></td>
<td><?php echo $row['team_id'] ?></td>
<td><?php echo $row['recruiterscol'] ?></td>





<TD><a href="modificar_recruiter.php? id=<?php echo $row['recruiters_id'] ?>" class="btn btn-info" >Editar</a></TD>
<?php
}

?>


</table>


  
</body>
</html>