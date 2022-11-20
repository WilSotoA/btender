<?php
include("../include/conexion.php");

$id = $_GET['id'];
$eliminar = "DELETE FROM insumos WHERE Id_insumo = '$id'";
$resultadoeliminar = mysqli_query($conex, $eliminar);
if ($resultadoeliminar) {
    echo "<script>alert('Se pudo eliminar');location.replace('../costos.php');</script>";
} else {

    echo "<script>alert('NO se pudo eliminar');location.replace('../costos.php');</script>";
}

