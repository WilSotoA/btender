<?php
include("../include/conexion.php");
include("../include/log.php");

$id = $_GET['id'];
$eliminar = "DELETE FROM detatempcuero WHERE Id_tempcuero = '$id'";
$resultadoeliminar = mysqli_query($conex, $eliminar);
if ($resultadoeliminar) {
    echo '<script>alert("Se ha eliminado);location.replace("../costos.php");</script>';
} else {

    echo "<script>alert('NO se pudo eliminar');location.replace('../costos.php');</script>";
}
