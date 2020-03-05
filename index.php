<?php

		include("utils/conexion.php");
		$sql = "SELECT * FROM tbl_departamentos";
		$peticion = mysql_query($sql,$conexion);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="img/myicon.ico" type="image/x-icon" rel="shortcut icon" />
    <title>Ruta del cafe</title>  


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/myestilo.css">
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
     <!------------------Parte superior de contacto------------------>
     <div id="parte_superior">

        <div id="parte_superior_izquierda">
            <p>Telefono (505) 255441177 │ Nicaragua@cafe.com.ni</p>
        </div>

        <div id="parte_superior_derecha">

              <a href="#"><i class="fa fa-facebook-official"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-instagram"></i></a>
              <a href="#"><i class="fa fa-youtube-play"></i></a>
   
        </div>
     </div>

     <!----------------Icono y Menu-------------------------------->

     <div id="menu">
        <div id="icono">
              <img src="img/cafe.png" alt="">
        </div>

        <div id="menu_eleccion">
          <nav class="navegacion">
            <ul class="select">
                <li><a href="#">Sobre Nicaragua</a></li>
                <li><a href="#">Departamentos</a></li>
                <li><a href="#">Hoteles</a></li>
                <li><a href="#">Restaurantes</a></li>
                <li><a href="#">Lugares Turisticos</a></li>
            </ul>
          </nav>
        </div>

     </div>

     <header>
     <h2 id="titulo">Ruta del Cafe</h2>

     <section class="banner">
         <div class="banner-content">
             <h2>Esto es la Ruta del cafe</h2>

         </div>
     </section>

     <div id="content-departamentos">
     <!--------------Lista de departamentos------------------>

                    <?php
                           while ($fila = mysql_fetch_array($peticion))
                           {

		                   echo '
			                    <li>
				                <a href="#" data-transition="slide"> 
					            <p>'.utf8_encode($fila["nombre"]).'</p>
				                </a>
			                    </li>
                           ';}
                    ?>
              

     <!------------------------------------------------------>
     </div>

     </header>

     <footer class="footer">
         <p>Copyright - 2020 Nicaragua Derechos reservados</p>
         
         <a href="#"><i class="fa fa-facebook-official" style="color:#0066D9"></i></a>
         <a href="#"><i class="fa fa-twitter" style="color:#6FBEFF"></i></a>
         <a href="#"><i class="fa fa-instagram" style="color:#FF952C"></i></a>
         <a href="#"><i class="fa fa-youtube-play" style="color:#FF0000"></i></a>

     </footer>


     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>