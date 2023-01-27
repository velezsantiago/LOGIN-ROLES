<html>
	<head>
    <link rel="stylesheet" href="/LOGIN ROLES/CSS/PAGINAS_PRINCI.CSS">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
		<title>Menu Desplegable</title>
<style type="text/css">
			

			center{
				background: #34495e;

			}
			* {
				margin:0px;
				padding:0px;
			}
			
			#header {
				margin:auto;
				width:500px;
				font-family:Arial, Helvetica, sans-serif;
			}
			
			ul, ol {
				list-style:none;
			}
			
			.nav > li {
				float:left;
			}
			
			.nav li a {
				background-color:#006299;
				color:#fff;
				text-decoration:none;
				padding:10px 12px;
				display:block;
			}
			
			.nav li a:hover {
				background-color:#434343;
			}
			
			.nav li ul {
				display:none;
				position:absolute;
				min-width:140px;
			}
			
			.nav li:hover > ul {
				display:block;
			}
			
			.nav li ul li {
				position:relative;
			}
			
			.nav li ul li ul {
				right: 100px;
				top:0px;
			}
			
		</style>
	</head>
	<body>
	<?php
	include "conexion.php";
	$consulta=$con->query("SELECT * FROM cargo where id='1'");
	  ($row=$consulta->fetch_array())
?>

<center><?php echo $row['descripcion']; ?></center>
	

    <nav >

   

<?php
session_start();

if(isset($_SESSION['usuarios']))
{
?>
  
<CENTER style="color:white;">
  
<?php

 
    echo  $_SESSION['usuarios']  ;

   
}
?>
</CENTER>


		
	<ul class="nav">
	<li><a href="">Inicio</a>
    <ul>
	
                       
					 
	<li><a href="../cerrar_sesion.php"><button class="btn btn-danger text-left"><span class="material-symbols-outlined" style="
    font-variation-settings:
    'FILL' 0,
    'wght' 400,
    'GRAD' 0,
    'opsz' 48">do_not_disturb_on</span> Cerrar Sesion</button></a>
  </li>
                    
     </li>
				</ul>
            
           
                </li>
            
				<li><a href="/LOGIN ROLES/usuarios/clients/muestra_clients.php">clients</a>
					<ul>
						<li><a href="/LOGIN ROLES/usuarios/recruiters_clients/muestra_recruiters_clients.php">clients recruiters</a></li>
						</li>
					</ul>

				</li>
				<li><a href="/LOGIN ROLES/usuarios/recruiters/muestra_recruiters.php">recruiters</a>
					<ul>
						<li><a href="/LOGIN ROLES/usuarios/positions_recruiters/muestra_position_recruiters.php">position recruiters</a></li>
						<li><a href="/LOGIN ROLES/usuarios/teams/mostrar_teams.php">teams</a></li>
					
					</ul>

                    
				</li>
				<li><a href="/LOGIN ROLES/usuarios/positions/mostrar_positions.php">positions</a></li>
                <li><a href="/LOGIN ROLES/usuarios/CANDIDATOS/muestra_candidatos.php">candidates</a></li>
			</ul>
			
		
        </nav>
        
        <section>

        </section>
      
	</body>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</html>