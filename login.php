<?php 
include 'include/conexion.php';
session_start();
error_reporting(0);
if ($_SESSION['Id'] != '' || $_SESSION['Id'] != null) {
    header('location: costos.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="author" content="Wilmer Soto">
    <meta name="keywords" content="btender, BTENDER, Btender, Facturación, B●TENDER, btender">
    <meta name="copyright" content="© Derechos reservados B●TENDER">
    <meta name="description" content="Sistema de información B●TENDER">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login B●TENDER</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" href="src/favicon.png" type="image/x-icon">
</head>

<body>
    <div class="container">
        <div class="container__log">
            <div class="banner">
                <img class="banner__img" src="src/logo.jpg" alt="Logo">
            </div>
            <form action="" method="post">
            <div class="container__ipts">
                <div class="container__icon">
                    <img class="icons" src="src/svg/user.svg" alt="User">
                </div>
                <div class="container__ipt">
                    <input type="text" name="user" id="user" class="ipt" placeholder="Ingrese su usuario" required>
                </div>
            </div>
            <div class="container__ipts">
                <div class="container__icon">
                    <img class="icons" src="src/svg/password.svg" alt="User">
                </div>
                <div class="container__ipt">
                    <input type="password" name="password" id="password" class="ipt" placeholder="Ingrese su contraseña" required>
                </div>
            </div>
            <div class="view__password">
                <input class="checkbox" type="checkbox" name="view" id="view">
                <label class="label" for="view">Ver Contraseña</label>
            </div>
            <div class="containerbtn">
                <input class="btn" type="submit" name="ingresar" value="Ingresar">
            </div>
            </form>
        </div>
    </div>
    <?php 
    if(isset($_POST['ingresar'])){
        $user = mysqli_real_escape_string($conex,$_POST['user']);
        $password = mysqli_real_escape_string($conex,$_POST['password']);
        $query = mysqli_query($conex, "SELECT * FROM usuarios WHERE Nombre_user='$user'");
        $rows = mysqli_num_rows($query);
        if($rows > 0){
            $array = mysqli_fetch_assoc($query);
            $verify = password_verify($password, $array['Contrasena']);
            if ($verify){
                $_SESSION['Id'] = $array['Id_user'];
                $_SESSION['Nombre'] = $array['Nombre_user'];
                header('location: costos.php');
            } else {
                echo '<script>alert("¡Contraseña Incorrecta!");</script>';
            }
        } else {
                echo '<script>alert("¡Usuario Incorrecto!");</script>';
        }
    }
    ?>
</body>
<script>
    let view = document.getElementById("view");
        view.addEventListener("click", function(){
            var tipo = document.getElementById("password");

            if (tipo.type == 'password') {
                tipo.type = 'text';
            } else {
                tipo.type = 'password';
            }
    });

</script>
</html>