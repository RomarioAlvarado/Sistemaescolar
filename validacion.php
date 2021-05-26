<?php 
	session_start();
	$_SESSION['usuario']=$usuario;
	$host = "localhost";
	$user = "root";
	$password = "";
	$db = "autogestion2";

	$conection = @mysqli_connect($host,$user,$password,$db);
	if (!$conection) {
		# code...
		die("No hay conexión: ".mysqli_connect_error());
	}

	$nombre =$_POST["txtusuario"];
	$pass = $_POST["txtpassword"];
	$userType = $_POST['userType'];
	

	$query = mysqli_query($conection,"SELECT u.Usuario, u.Password, r.Perfil FROM usuarios u, roles r WHERE u.Id_Rol=r.Id_Rol AND Usuario = '".$nombre."' and Password = '".$pass."' and Perfil = '".$userType."' ");
	$nr = mysqli_num_rows($query);

	if ($nr == 1) {
		# code...
		$r=$query->fetch_array();
	    $nom = $r['Usuario'];
	    $perfil = $r['Perfil'];
	    $_SESSION['usuario']=$nom;
	 	$_SESSION['rol']=$perfil;
		header("Location: principal.php");
		//echo "Bienvenido " .$_SESSION['rol'];

	}
	else if ($nr == 0) {
		# code...
		//echo  "No Ingreso";
	?>
  <script language="javascript" type="text/javascript">
    alert("Usuario no autorizado");
  </script>

 <?php
  header("Location: index.html");
	}

 ?>