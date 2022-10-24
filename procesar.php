<?php 
include "include/conexion.php";

if (isset($_POST['creartroquel'])){
    $nombre = $_POST['nombretroquel'];
    $dcm = $_POST['dcm'];
    echo $_FILES['imagentroquel']['size'];
    if($_FILES['imagentroquel']['size'] < 600000) {
        $imagentroquel=mysqli_real_escape_string($conex, file_get_contents($_FILES["imagentroquel"]["tmp_name"]));
    } else {
        echo '<script>alert("tamaño maximo de imagen)</script>';
        $imagentroquel = null;
    }
    $insert = mysqli_query($conex, "INSERT INTO troquel (Nombre_troquel, DCM, Img_troquel) VALUES ('$nombre', '$dcm', '$imagentroquel')");
    if ($insert) {
        echo '<script>alert("Guardado exitosamente");recargar(event);</script>';
    } else {
        mysqli_error($conex, $insert);
        echo '<script>alert("no se guardo");recargar(event);</script>';
    }
}
header('Location: costos.php');
