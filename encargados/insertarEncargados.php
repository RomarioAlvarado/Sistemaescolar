<?php
include("conexion.php");
$con=conectar();

$primer_nombre=$_POST['Primer_Nombre'];
$segundo_nombre=$_POST['Segundo_Nombre'];
$primer_apellido=$_POST['Primer_Apellido'];
$segundo_apellido=$_POST['Segundo_Apellido'];
$fecha_nacimiento=$_POST['Fecha_Nacimiento'];
$direccion=$_POST['direccion'];
$telefono=$_POST['telefono'];
$parentesco=$_POST['parentesco'];


$sql="INSERT INTO encargados(Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Fecha_Nacimiento, Direcccion, Telefono, Parentesco) VALUES('$primer_nombre','$segundo_nombre','$primer_apellido','$segundo_apellido','$fecha_nacimiento','$direccion','$telefono','$parentesco')";
$query= mysqli_query($con,$sql);
if($query){
    Header("Location: encargados.php");
    
}else {
	
}
?>