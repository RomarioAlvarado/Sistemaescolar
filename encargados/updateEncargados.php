<?php

include("conexion.php");
$con=conectar();

$idEncargado=$_POST['idEncargado'];
$primer_nombre=$_POST['primer_nombre'];
$segundo_nombre=$_POST['segundo_nombre'];
$primer_apellido=$_POST['primer_apellido'];
$segundo_apellido=$_POST['segundo_apellido'];
$fecha_nacimiento=$_POST['fecha_nacimiento'];
$direccion=$_POST['direccion'];
$telefono=$_POST['telefono'];
$parentesco=$_POST['parentesco'];

$sql="UPDATE encargados SET  Primer_Nombre='$primer_nombre', Segundo_Nombre='$segundo_nombre', Primer_Apellido='$primer_apellido', Segundo_Apellido='$segundo_apellido', Fecha_Nacimiento='$fecha_nacimiento', Direcccion='$direccion', Telefono='$telefono', Parentesco='$parentesco' WHERE Id_Encargado='$idEncargado'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: encargados.php");
    }
?>