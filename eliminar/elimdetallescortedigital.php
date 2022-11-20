<?php
include("../include/conexion.php");
include("../include/log.php");

$id = $_GET['id'];
$eliminar = "DELETE FROM detatempcortedigital WHERE Id_tempcortedigital = '$id'";
$resultadoeliminar = mysqli_query($conex, $eliminar);
if ($resultadoeliminar) {
    echo "<script>alert('Se pudo eliminar');location.replace('../costos.php');</script>";
} else {

    echo "<script>alert('NO se pudo eliminar');location.replace('../costos.php');</script>";
}
