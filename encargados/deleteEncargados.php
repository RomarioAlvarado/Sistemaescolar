<?php

include("conexion.php");
$con=conectar();

$idEncargado=$_GET['id'];

$sql="DELETE FROM encargados  WHERE Id_Encargado='$idEncargado'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: encargados.php");
    }
?>
