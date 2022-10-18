<?php
include ("../include/conexion.php");

$id = $_GET['id'];
$eliminar = "DELETE FROM detatemplaser WHERE Id_templaser = '$id'";
$resultadoeliminar = mysqli_query($conex, $eliminar);
if ($resultadoeliminar) {
    echo "<script>alert('Se pudo eliminar'); window.history.go(-1);location.reload()</script>";
} else {

    echo "<script>alert('NO se pudo eliminar'); window.history.go(-1)</script>";
}    