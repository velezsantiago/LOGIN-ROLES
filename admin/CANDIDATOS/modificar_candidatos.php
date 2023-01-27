<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>actualizar</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">


    <?php 
    include("../conexion.php");
   

    $id=$_GET['id'];

    $sql="SELECT * FROM candidates WHERE candidates_id='$id'";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
    

?>




</head>
<body>

        <center>

<H1>modificar info candidatos</H1>

<div class="container">


            <form action="update_candidatos.php" method="POST" class="">


                            <label for=""></label><br>
                        <INPUT type="hidden" name="candidates_id" value="<?php echo $row['candidates_id']?>">
                        <label for="">name</label><br>
                        <input type="text" name="name" value="<?php echo $row['name']?>"><br>

                        <label for="">phone number</label><br>
                        <input type="text" name="phone_number" value="<?php echo $row['phone_number']?>"><br>

                        <label for="">email</label><br>
                        <input type="text" name="email" value="<?php echo $row['email']?>"><br>

                        <label >Date submitted<br>
                        <input type="date" name="date_submitted" value="<?php echo $row['date_submitted']?>"><br>
                        </label><br>


                        <label for="">position</label><br>
                        <input type="text" name="position" value="<?php echo $row['position']?>" ><br>

                        <label for="">type of role</label><br>
                        <input type="text" name="type_of_role" value="<?php echo $row['type_of_role']?>"><br>

                        <label for="">company</label><br>
                        <input type="text" name="company" value="<?php echo $row['company']?>" ><br>

                        <label for="">city</label><br>
                        <input type="text" name="city" value="<?php echo $row['city']?>" ><br>

                        <label >notes</label><br><br>
                        <input type="text" name="notes" value="<?php echo $row['notes']?>" ><br>
                       
             
                                            <div>
                        <LABEL class="">modificar grupo</LABEL></BR>
                        <select  name="team_id" type="number"  value="<?php echo $row['team_id']?>"   >

                        <option ><?php echo $row['team_id'] ?></option><br><br>
                        <?php

                        // en el query con se tiene la opcion de elegir con que variable se creo la conexion
                            $query =$con -> query ("SELECT * FROM teams");
                            while ($valores = mysqli_fetch_array($query)) 
                            {								
                            // echo  '<option value="'.$valores['descripcion'].'">'.$valores['id'].' '.$valores['descripcion'].' </option>';
                            echo  '<option value="'.$valores['team_id'].'">'.$valores['team_name'].'  </option>';
                            
                            }

                        ?>

                    </select><br>
                    </div>

                    <div>
                        <LABEL class="">recruiters de los candidatos</LABEL></BR>
                        <select  name="recruiter_id" type="number"    >

                        <option ><?php echo $row['recruiter_id'] ?></option><br><br>
                        <?php

                        // en el query con se tiene la opcion de elegir con que variable se creo la conexion
                            $query =$con -> query ("SELECT * FROM recruiters");
                            while ($valores = mysqli_fetch_array($query)) 
                            {		
                                // en el siguinente debe traer atributos de la tabala refereneciada						
                           
                            echo  '<option value="'.$valores['recruiters_id'].'">'.$valores['full_name'].'  </option>';
                            
                            }

                        ?>

                    </select><br>
                    </div>





                        
                        <button class="btn btn-primary ">actualizar</button>

                    <!-- <input type="submit" class="btn btn-primary btn block" value= "Actualizar"> -->

                        <a href="FORMULARIO.PHP"  class="btn btn-primary">REGRESAR</a>

            </form>
            </center>

</div>
    

</body>
</html>
