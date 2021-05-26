<?php 
    include("conexion.php");
    $con=conectar();

$id=$_GET['id']; //este id esta cargado en encargado.php

$sql="SELECT * FROM encargados WHERE Id_Encargado='$id'";
$query=mysqli_query($con,$sql);

$row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <title>Actualizar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="../styles3.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="file:///E:/jquery.js"></script>
        
    </head>
    <body>
         <!-- Inicio del menu -->
  <nav>
      <div class="logo">Nombre de Escuela</div>
      <label for="btn" class="icon">
        <span class="fa fa-bars"></span>
      </label>
      <input type="checkbox" id="btn">
      <ul>
        <li><a href="../principal.php">Inicio</a></li>
        <li><a href="#">Salir</a></li>
      </ul>
    </nav>
  <!-- fin del menu -->
                <div class="container mt-5">
                    <form action="updateEncargados.php" method="POST">
<input type="hidden" name="idEncargado" value="<?php echo $row['Id_Encargado']  ?>">
<input type="text" class="form-control mb-3" name="primer_nombre" placeholder="Dni" value="<?php echo $row['Primer_Nombre']  ?>">
<input type="text" class="form-control mb-3" name="segundo_nombre" placeholder="Dni" value="<?php echo $row['Segundo_Nombre']  ?>">
<input type="text" class="form-control mb-3" name="primer_apellido" placeholder="Nombres" value="<?php echo $row['Primer_Apellido']  ?>">
<input type="text" class="form-control mb-3" name="segundo_apellido" placeholder="Apellidos" value="<?php echo $row['Segundo_Apellido']  ?>">
<input type="text" class="form-control mb-3" name="fecha_nacimiento" placeholder="Apellidos" value="<?php echo $row['Fecha_Nacimiento']  ?>">
<input type="text" class="form-control mb-3" name="direccion" placeholder="Apellidos" value="<?php echo $row['Direcccion']  ?>">
<input type="text" class="form-control mb-3" name="telefono" placeholder="Apellidos" value="<?php echo $row['Telefono']  ?>">
<input type="text" class="form-control mb-3" name="parentesco" placeholder="Apellidos" value="<?php echo $row['Parentesco']  ?>">
                                
                            <input type="submit" class="btn btn-primary btn-block" value="Actualizar">
                    </form>
                    
                </div>
    </body>
</html>