<?php
include("../include/conexion.php");
include("../include/log.php");

$id = $_GET['id'];
$eliminar = "DELETE FROM detatempsublimacion WHERE Id_tempsublimacion = '$id'";
$resultadoeliminar = mysqli_query($conex, $eliminar);
if ($resultadoeliminar) {
    echo "<script>alert('Se pudo eliminar'); window.history.go(-1)</script>";
} else {

    echo "<script>alert('NO se pudo eliminar'); window.history.go(-1)</script>";
}
