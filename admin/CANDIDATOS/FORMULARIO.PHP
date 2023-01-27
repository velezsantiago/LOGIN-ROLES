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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/LOGIN ROLES/admin/CANDIDATOS/CANDIDATOS.CSS">

</head>

<a href="/LOGIN ROLES/admin/CANDIDATOS/muestra_candidatos.php" class="btn btn-secondary"><span class="material-symbols-outlined">
reply
</span>regresar</a>

<body>


        <form class="imagen">
         <img src="data:image/png;base64,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" alt="">
          <h4>VIRTUAL MANAGEMENT SYSTEM</h4>
          </form> 






        <form action="Recibe_candidatos.php" method="post">

        
                <center>             
                      
                        <h3>CANDIDATES</h3>

                    
                        <label for="">Candidate name</label>
                        <input type="text" name="name" placeholder="Candidate Name"><br>

                        <label for="">phone number</label>
                        <input type="text" name="phone_number" placeholder="PHONE NUMBER"><br>

                        <label for="">email</label>
                        <input type="text" name="email" placeholder="EMAIL"><br>

                        <label >Date submitted<br>
                        <input type="date" name="date_submitted" placeholder="DATE SUBMITTED"><br><br>
                        </label>

                        <label for="">position</label>
                        <input type="text" name="position" placeholder="POSITION"><br>

                        <label for="">type of role</label>
                        <input type="text" name="type_of_role" placeholder="TYPE OF ROLE"><br>

                        <label for="">company</label>
                        <input type="text" name="company" placeholder="COMPANY"><br>

                        <label for="">city</label>
                        <input type="text" name="city" placeholder="CITY"><br>


                        <label >notes</label><br>
                        <textarea 
                        class="notes" name="notes" type="text" >
                        </textarea><br>
                    

                        <LABEL class="">selecciona grupo </LABEL><br>
                      <select  name="team_id" type="number"><br>

                        <?php
                          $query =$conexion -> query ("SELECT * FROM teams");
                          while ($valores = mysqli_fetch_array($query)) 
                         {								
                             echo '<option value="'.$valores['team_id'].'">'.$valores['team_name'].'</option>';
                                    
                         }

                        ?>

                        </select><br><br>

                        
                        <LABEL class="">selecciona reclutador </LABEL><br>
                      <select  name="recruiter_id" type="number"><br>

                        <?php
                          $query =$conexion -> query ("SELECT * FROM recruiters");
                          while ($valores = mysqli_fetch_array($query)) 
                         {								
                             echo '<option value="'.$valores['recruiters_id'].'">'.$valores['full_name'].'</option>';
                                    
                         }

                        ?>

                        </select><br><br>
                       

                        <button>send</button>

                 
              
        </form>
        </center>
</body>
</html>