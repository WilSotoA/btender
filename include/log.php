<?php   
include 'conexion.php';
session_start();
if ($_SESSION['Id'] == '' || $_SESSION['Id'] == null) {
    header('location:../login.php');
    die();
}