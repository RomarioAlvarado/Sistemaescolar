<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT *  FROM encargados";
    $query=mysqli_query($con,$sql);
    $row=mysqli_fetch_array($query);

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title> PAGINA ENCARGADOS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
                    <div class="row"> 
                        
                        <div class="col-md-3">
                            <h1>Ingrese datos</h1>
                                <form action="insertarEncargados.php" method="POST">

                                    <input type="text" class="form-control mb-3" name="Primer_Nombre" placeholder="Primer Nombre">
                                    <input type="text" class="form-control mb-3" name="Segundo_Nombre" placeholder="Segundo Nombre">
                                    <input type="text" class="form-control mb-3" name="Primer_Apellido" placeholder="Primer Apellido">
                                    <input type="text" class="form-control mb-3" name="Segundo_Apellido" placeholder="Segundo Apellido">
                                    <input type="text" class="form-control mb-3" name="Fecha_Nacimiento" placeholder="Fecha de Nacimiento (AA-MM-DD)">
                                    <input type="text" class="form-control mb-3" name="direccion" placeholder="Direccion">
                                    <input type="text" class="form-control mb-3" name="telefono" placeholder="Telefono">
                                    <input type="text" class="form-control mb-3" name="parentesco" placeholder="Parentesco">
                                    
                                    <input type="submit" class="btn btn-primary">
                                </form>
                        </div>
                        
                        <div class="col-md-8">
                            
                            <table class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
                                        <th>ID</th>
                                        <th>Primer Nombre</th>
                                        <th>Segundo Nombre</th>
                                        <th>Primer Apellido</th>
                                        <th>Segundo Apellido</th>
                                        <th>Fecha de Nacimiento</th>
                                        <th>Direccion</th>
                                        <th>Telefono</th>
                                        <th>Parentesco</th>
                                        <th>Acción</th>
                                        <th>Acción</th>
                                    </tr>
                                </thead>

                                <tbody>
                                        
                                        
                                        <?php


                                            while($row=mysqli_fetch_array($query)){
                                        ?>
                                            <tr>
                                                <th><?php  echo $row['Id_Encargado']?></th>
                                                <th><?php  echo $row['Primer_Nombre']?></th>
                                                <th><?php  echo $row['Segundo_Nombre']?></th>
                                                <th><?php  echo $row['Primer_Apellido']?></th>
                                                <th><?php  echo $row['Segundo_Apellido']?></th>
                                                <th><?php  echo $row['Fecha_Nacimiento']?></th>
                                                <th><?php  echo $row['Direcccion']?></th>
                                                <th><?php  echo $row['Telefono']?></th>
                                                <th><?php  echo $row['Parentesco']?></th>    
                                                <th><a href="actualizarEncargados.php?id=<?php echo $row['Id_Encargado'] ?>" class="btn btn-info">Editar</a></th>
                                                <th><a href="deleteEncargados.php?id=<?php echo $row['Id_Encargado'] ?>" class="btn btn-danger">Eliminar</a></th>                                        
                                            </tr>
                                        <?php 
                                            }
                                        ?>
                                </tbody>
                            </table>
                            
                            

                        </div>
                        
  

                    </div>  

            </div>
      
    </body>
</html>

