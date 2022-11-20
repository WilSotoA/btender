<?php
error_reporting(0);
include("../include/conexion.php");
include ("../include/log.php");
$id = $_GET['id'];
$query = mysqli_query($conex, "SELECT * FROM telas WHERE Id_tela = $id");
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
    <title>Actualizar Tela</title>
</head>
<body>
    <a href="../costos.php" class="btnlink">Volver</a>
    <h1 class="title">Actualizar Tela</h1>
    <form action="" method="post">
        <table class="tb">
            <tr>
                <th>Descripción</th>
                <th>Proveedor</th>
                <th>Valor Unitario</th>
            </tr>
            <tr>
                <td><input type="text" name="descrip" id="descrip" value="<?php echo $datos['Descripcion_tela'] ?>" required></td>
                <td><input type="text" name="proveedor" id="proveedor" value="<?php echo $datos['Proveedor'] ?>" required></td>
                <td><input type="number" name="precio" id="precio" value="<?php echo $datos['Valor_uni'] ?>" required></td>
            </tr>
            <tr>
                <td colspan="3"><input class="update" type="submit" name="actualizar" id="actualizar"></td>
            </tr>
        </table>
    </form>
    <?php 
    if(isset($_POST['actualizar'])){
        $descrip = mysqli_real_escape_string($conex, $_POST['descrip']);
        $proveedor = mysqli_real_escape_string($conex, $_POST['proveedor']);
        $precio = mysqli_real_escape_string($conex, $_POST['precio']);
        $queryupd = mysqli_query($conex, "UPDATE telas SET Descripcion_tela='$descrip',Proveedor='$proveedor',Valor_uni='$precio' WHERE Id_tela = $id");
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