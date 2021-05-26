<?php
	include("validacion.php");

	session_start();

	if (isset($_SESSION['usuario'])) {
		# code...
		echo "existe sesion";
		session_destroy();
		header("location: principal.php" );
	}else{
		echo "no existe sesion";
	}

?>