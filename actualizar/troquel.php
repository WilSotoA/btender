<?php
error_reporting(0);
include("../include/conexion.php");
include ("../include/log.php");
$id = $_GET['id'];
$query = mysqli_query($conex, "SELECT * FROM troquel WHERE Id_troquel = $id");
$rows = mysqli_num_rows($query);
if ($rows>0){
    $datos = mysqli_fetch_assoc($query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/regcostos.css">
    <link rel="shortcut icon" href="../src/favicon.png" type="image/x-icon">
    <title>Actualizar Troquel</title>
</head>
<body>
    <a href="../costos.php" class="btnlink">Volver</a>
    <h1 class="title">Actualizar Troquel</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <table class="tb">
            <tr>
                <th>Nombre</th>
                <th>Decimetro</th>
                <th>Imagen(Opcional)</th>
            </tr>
            <tr>
                <td><input type="text" name="nombre" id="nombre" value="<?php echo $datos['Nombre_troquel'] ?>" required></td>
                <td><input type="number" name="dcm" id="dcm" value="<?php echo $datos['DCM'] ?>" step="0.01" required></td>
                <td><input type="file" name="img" id="img" accept="image/png"></td>
            </tr>
            <tr>
                <td colspan="3"><input class="update" type="submit" name="actualizar" id="actualizar"></td>
            </tr>
        </table>
    </form>
    <!-- ,Img_troquel='$img' -->
    <?php 
    if(isset($_POST['actualizar'])){
        $nombre = $_POST['nombre'];
        $dcm = mysqli_real_escape_string($conex, $_POST['dcm']);
        if($_POST['img'] != ''){
            if($_FILES['img']['size'] < 600000) {
                $img=mysqli_real_escape_string($conex, file_get_contents($_FILES["img"]["tmp_name"]));
            } else {
                echo '<script>alert("tamaño maximo de imagen)</script>';
                $img = null;
            }
        $queryupd = mysqli_query($conex, "UPDATE troquel SET Nombre_troquel='$nombre',DCM='$dcm',Img_troquel='$img' WHERE Id_troquel = $id");
        } else {
            echo 'hola';
            $queryupd = mysqli_query($conex, "UPDATE troquel SET Nombre_troquel='$nombre',DCM='$dcm'WHERE Id_troquel = $id");
        }
        if ($queryupd){
            echo '<script>alert("Se ha actualizado CORRECTAMENTE");location.replace("../costos.php");</script>';
        } else {
            echo "<script>alert('NO Se ha actualizado CORRECTAMENTE');</script>";
        } 
    }
} else {
    echo "<script>alert('hubo un error');windows.history.go(-1);</script>";
}
    ?>

</body>
</html>