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

    $sql="SELECT * FROM recruiters_clients WHERE id_recruiters__clients='$id'";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
    

?>




</head>
<body>

        <center>

<H1>modificar clientes de los reclutadores</H1>

<div class="container">


            <form action="update_recruiters_clients.php" method="POST" class="">


                        <INPUT type="hidden" name="id_recruiters__clients" value="<?php echo $row['id_recruiters__clients']?>">
                       

                        
                        <div>
                        <LABEL class="">recruiter id</LABEL></BR>
                        <select  name="recruiters_id" type="number"   >

                        <option ><?php echo $row['recruiters_id'] ?></option><br><br>
                        <?php

                        // en el query con se tiene la opcion de elegir con que variable se creo la conexion
                            $query =$con -> query ("SELECT * FROM recruiters");
                            while ($valores = mysqli_fetch_array($query)) 
                            {								
                            // echo  '<option value="'.$valores['descripcion'].'">'.$valores['id'].' '.$valores['descripcion'].' </option>';
                            echo  '<option value="'.$valores['recruiters_id'].'">'.$valores['full_name'].'  </option>';
                            
                            }

                        ?>

                    </select><br>
                    </div>

                    <div>
                        <LABEL class="">client id</LABEL></BR>
                        <select  name="clients_id" type="number"    >

                        <option ><?php echo $row['clients_id'] ?></option><br><br>
                        <?php

                        // en el query con se tiene la opcion de elegir con que variable se creo la conexion
                            $query =$con -> query ("SELECT * FROM clients");
                            while ($valores = mysqli_fetch_array($query)) 
                            {		
                                // en el siguinente debe traer atributos de la tabala refereneciada						
                           
                            echo  '<option value="'.$valores['ï»¿client_id'].'">'.$valores['client_name'].'  </option>';
                            
                            }

                        ?>

                    </select><br>
                    </div>





                       <!-- ------------------------------------------------------------------------ -->
                        <label for="">recruiter_name</label><br>
                        <input type="text" name="recruiter_name" value="<?php echo $row['recruiter_name']?>"><br>

                        <label for="">client_name</label><br>
                        <input type="text" name="client_name" value="<?php echo $row['client_name']?>"><br>

                        <!-- ----------------------------------------------------------------- -->


                        
                        <button class="btn btn-primary ">actualizar</button>

                    <!-- <input type="submit" class="btn btn-primary btn block" value= "Actualizar"> -->

                        <a href="FORMULARIO.PHP"  class="btn btn-primary">REGRESAR</a>

            </form>
            </center>

</div>
    

</body>
</html>
