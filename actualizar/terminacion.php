<?php
error_reporting(0);
include("../include/conexion.php");
include ("../include/log.php");
$id = $_GET['id'];
$query = mysqli_query($conex, "SELECT * FROM terminacion WHERE Id_terminacion = $id");
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
    <title>Actualizar Terminación</title>
</head>
<body>
    <a href="../costos.php" class="btnlink">Volver</a>
    <h1 class="title">Actualizar Terminación</h1>
    <form action="" method="post">
        <table class="tb">
            <tr>
                <th>Descripción</th>
                <th>Valor Unitario</th>
            </tr>
            <tr>
                <td><input type="text" name="descrip" id="descrip" value="<?php echo $datos['Descripcion_terminacion'] ?>" required></td>
                <td><input type="number" name="precio" id="precio" value="<?php echo $datos['Valor_terminacion'] ?>" required></td>
            </tr>
            <tr>
                <td colspan="2"><input class="update" type="submit" name="actualizar" id="actualizar"></td>
            </tr>
        </table>
    </form>
    <?php 
    if(isset($_POST['actualizar'])){
        $descrip = mysqli_real_escape_string($conex, $_POST['descrip']);
        $precio = mysqli_real_escape_string($conex, $_POST['precio']);
        $queryupd = mysqli_query($conex, "UPDATE terminacion SET Descripcion_terminacion='$descrip',Valor_terminacion='$precio' WHERE Id_terminacion = $id");
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