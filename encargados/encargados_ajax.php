<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../styles3.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="file:///E:/jquery.js"></script>
	<title></title>
</head>
<body>
<?php

	# conectare la base de datos
    $con=@mysqli_connect('localhost', 'root', '', 'autogestion2');
    if(!$con){
        die("imposible conectarse: ".mysqli_error($con));
    }
    if (@mysqli_connect_errno()) {
        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }
	$action = (isset($_REQUEST['action'])&& $_REQUEST['action'] !=NULL)?$_REQUEST['action']:'';
	if($action == 'ajax'){
		include 'paginationEncargado.php'; //incluir el archivo de paginación
		//las variables de paginación
		$page = (isset($_REQUEST['page']) && !empty($_REQUEST['page']))?$_REQUEST['page']:1;
		$per_page = 4; //la cantidad de registros que desea mostrar
		$adjacents  = 4; //brecha entre páginas después de varios adyacentes
		$offset = ($page - 1) * $per_page;
		//Cuenta el número total de filas de la tabla*/
		$count_query   = mysqli_query($con,"SELECT count(*) AS numrows FROM encargados ");
		if ($row= mysqli_fetch_array($count_query)){$numrows = $row['numrows'];}
		$total_pages = ceil($numrows/$per_page);
		$reload = 'paginadorEncargados.php';
		//consulta principal para recuperar los datos
		$query = mysqli_query($con,"SELECT * FROM encargados order by Id_Encargado LIMIT $offset,$per_page");
		
		if ($numrows>0){
			?>
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
                            <?php echo paginate($reload, $page, $total_pages, $adjacents);?>
                        </div>

			<?php
			
		} else {
			?>
			<div class="alert alert-warning alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
              <h4>Aviso!!!</h4> No hay datos para mostrar
            </div>
			<?php
		}
	}
?>
</body>
</html>
