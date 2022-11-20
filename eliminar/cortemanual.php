<?php
include("../include/conexion.php");

$id = $_GET['id'];
$eliminar = "DELETE FROM cortemanual WHERE Codigo = '$id'";
$resultadoeliminar = mysqli_query($conex, $eliminar);
if ($resultadoeliminar) {
    echo '<script>alert("Se ha eliminado");location.replace("../costos.php");</script>';
} else {

    echo "<script>alert('NO se pudo eliminar');location.replace('../costos.php');</script>";
}
