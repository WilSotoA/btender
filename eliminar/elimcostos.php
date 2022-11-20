<?php
include("../include/conexion.php");
include("../include/log.php");

$id = $_GET['id'];
$eliminar = "DELETE FROM costos WHERE Id_costos = '$id'";
$resultadoeliminar = mysqli_query($conex, $eliminar);
if ($resultadoeliminar) {
    echo '<script>alert("Se ha eliminado");location.replace("../regcostos.php");</script>';

} else {

    echo "<script>alert('NO se pudo eliminar');location.replace('../regcostos.php');</script>";
}
