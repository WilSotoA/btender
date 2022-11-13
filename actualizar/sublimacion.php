<?php
error_reporting(0);
include("../include/conexion.php");
$id = $_GET['id'];
$query = mysqli_query($conex, "SELECT * FROM sublimacion WHERE Id_sublimacion = $id");
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
    <title>Actualizar Sublimación</title>
</head>
<body>
    <a href="../costos.php" class="btnlink">Volver</a>
    <h1 class="title">Actualizar Sublimación</h1>
    <form action="" method="post">
        <table class="tb">
            <tr>
                <th>Proveedor</th>
                <th>Metro</th>
                <th>Valor Unitario</th>
            </tr>
            <tr>
                <td><input type="text" name="proveedor" id="proveedor" value="<?php echo $datos['Proveedores'] ?>" required></td>
                <td><input type="number" name="metro" id="metro" value="<?php echo $datos['Metro'] ?>" step="0.01" required></td>
                <td><input type="number" name="precio" id="precio" value="<?php echo $datos['Precio'] ?>" required></td>
            </tr>
            <tr>
                <td colspan="3"><input class="update" type="submit" name="actualizar" id="actualizar"></td>
            </tr>
        </table>
    </form>
    <?php 
    if(isset($_POST['actualizar'])){
        $proveedor = mysqli_real_escape_string($conex, $_POST['proveedor']);
        $metro = mysqli_real_escape_string($conex, $_POST['metro']);
        $precio = mysqli_real_escape_string($conex, $_POST['precio']);
        $queryupd = mysqli_query($conex, "UPDATE sublimacion SET Proveedores='$proveedor',Metro='$metro',Precio='$precio' WHERE Id_sublimacion = $id");
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