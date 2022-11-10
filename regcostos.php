<?php 
include 'include/conexion.php';
include 'include/logeado.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/regcostos.css">
    <link rel="shortcut icon" href="src/favicon.png" type="image/x-icon">
    <title>Hojas De Costos</title>
</head>
<body>
    <a href="costos.php" class="btnlink">Hojas de Costos</a>
    <h1 class="title">Hojas De Costos</h1>
    <div class="containeript">
    <input type="date" class="ipt" name="search" id="search" placeholder="Ingrese la fecha">
    </div>
    <div class="costos" id="costos">
    </div>
</body>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/regcostos.js"></script>
</html>