
<?php
    // LA SIGUIENTE CONEXION ES MUY UTIL A LA HORA DE HACER LO9S SELECT
    $conexion = new mysqli('localhost', 'root', '', 'ves');
?>

<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>formulario de los traquers</title>
</head>

<body>

<a href="/LOGIN ROLES/admin/teams/mostrar_teams.php">visualizar</a>
     <center>
         <h1>ingrese info de los teams</h1>
     </center>
    

     <form action="Recibe_teams.php" method="post">
             <center>
                 <div class="inputs">
                     <label for="">info</label><br><br>
                 
                     <input type="text" name="team_name" placeholder="INGRESE NOMBRE CANDIDATO"><br>
                     <input type="text" name="workgroup" placeholder="workgroup"><br>
                    

                  

                     <LABEL class="">id del lider</LABEL><br>
                   <select  name="leader_id" type="number"><br>

                     <?php
                       $query =$conexion -> query ("SELECT * FROM recruiters");
                       while ($valores = mysqli_fetch_array($query)) 
                      {								
                          echo '<option value="'.$valores['recruiters_id'].'">'.$valores['full_name'].'</option>';
                                 
                      }

                     ?>

                     </select><br><br>

                     <input type="submit" value="send">

                    
                     <!-- <input type="number" name="recruiter_id" placeholder="id de reclutadores"><br> -->

                 </div>
             </center>
     </form>

</body>
</html>