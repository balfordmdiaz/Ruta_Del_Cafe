<?php

		include("utils/conexion.php");
		$id = $_GET["iddepartamento"];
    $sql = "SELECT * FROM tbl_hoteles WHERE iddepartamento=".$id;
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
    <link rel="stylesheet" type="text/css" href="jqm/jquery.mobile-1.2.0.css">
	<script type="text/javascript" src="jqm/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="jqm/jquery.mobile-1.2.0.js"></script>


</head>
<body>
     <div data-role="page" data-theme="c" id="p1">
     <!------------------Parte superior de contacto------------------>
     <div data-role="header" data-theme="c" data-position="fixed">
     <div id="parte_superior">

              <a href="#"><i class="fa fa-facebook-official"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-instagram"></i></a>
              <a href="#"><i class="fa fa-youtube-play"></i></a>
     </div>

     <!----------------Icono y Menu-------------------------------->

     <div id="menu">
        <div id="icono">
              <img src="img/cafe.png" alt="">
        </div>

      <h2 id="titulo" style="font-weight: bold; font-family: 'Trade Winds', cursive;">Ruta del Cafe</h2>

        <div id="menu_eleccion">
          <nav class="navegacion">
            <ul class="select" data-role="listview" data-inset="true"  data-theme="c">
                <li><a href="sobrenic.html">Sobre Nicaragua</a></li>
            </ul>
          </nav>
        </div>

     </div>
     </div>
     
     <header>
     <div id="content-departamentos">
     
     <ul class="" data-role="listview" data-inset="true" data-theme="c">
     
     <!--------------Lista de hoteles------------------>

                <?php
                      while ($fila = mysql_fetch_array($peticion)){
                      echo '
                           <li>
                           <h1>'.utf8_encode($fila["nombre"]).'</h1>
                           <h3>Direccion:</h3>
                           <p>'.utf8_encode($fila["direccion"]).'</p>
                           <h3>Descripcion:</h3>
                           <p>'.utf8_encode($fila["descripcion"]).'</p>
                           </li>
                        ';
                      }
	                   
	            ?>
     
     <!------------------------------------------------------>
     </ul>

     </div>

     </header>

     <footer class="footer">
         <p>Copyright - 2020 Nicaragua Derechos reservados</p>
         
         <a href="#"><i class="fa fa-facebook-official" style="color:#0066D9"></i></a>
         <a href="#"><i class="fa fa-twitter" style="color:#6FBEFF"></i></a>
         <a href="#"><i class="fa fa-instagram" style="color:#FF952C"></i></a>
         <a href="#"><i class="fa fa-youtube-play" style="color:#FF0000"></i></a>

     </footer>

     <div data-role="footer" data-position="fixed" data-theme="b">
        <div data-role="navbar">
        <ul>
            <li><a href="#" data-rel="back" data-icon="back">Regresar</a></li>
        </ul>
        </div>
    </div>

     <div>

     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>