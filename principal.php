<?php

session_start();
if (!isset($_SESSION['usuario'])) {
  # code...
  header("Location: index.html");
}
if ($_SESSION['rol']=="Docente") {
  # code...


 header("Location: principalDoc.html");
  //echo "Bienvenido";
}else{
  //print_r($_SESSION['usuario']);
  //header("Location: index.html");
  

?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="styles1.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="file:///E:/jquery.js"></script>
  
  <title>Sistema de Autogesti&oacute;n</title>
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
        <li><a href="#">Usuarios</a></li>
        <li><a href="serrarSecion.php">Salir</a></li>
      </ul>
    </nav>
  <!-- fin del menu -->
<div class="container">

  <div class="box">
    
    <div class="img-box" title="Establecimiento" >
      <img src="imagenes/establecimiento.jpg" alt=""></div>
      
      <div class="content">
        <h2>Establecimiento</h2>
     
     <a href="escuela.html" ><button type="button" class="ghost-btn">Ingresar...</button></a></div>

    </div>

  <div class="box">
    
    <div class="img-box"  title="Docentes">
         <img src="imagenes/maestra.jpg" alt=""></div>
      
      <div class="content">
        <h2>Docentes</h2>
       <a href="encargados/paginadorEncargados.php" ><button class="ghost-btn">Ingresar...</button></a></div>
    
    </div>

    <div class="box">
    
    <div class="img-box" title="Encargados" >
      <img src="imagenes/encargados.jpg" alt=""></div>
      
      <div class="content">
        <h4>Encargados del alumnado</h4>
        <a href="encargados/encargados.php" ><button class="ghost-btn">Ingresar...</button></a></div>
    
    </div>
  
    <div class="box">
    
    <div class="img-box" title="Alumnos">
      <img src="imagenes/Alumnos2.jpg" alt=""></div>
      
      <div class="content">
        <h2>Alumnos</h2>
         <a href="encargados/prueba.php" ><button class="ghost-btn">Ingresar...</button></a></div>
    
    </div>

    <div class="box">
    
    <div class="img-box" title="Inscripciones" >
      <img src="imagenes/inscripciones.jpg" alt=""></div>
      
      <div class="content">
        <h2>Inscripciones</h2>
      <a href="inscripciones.php"><button class="ghost-btn">Ingresar...</button></a></div>
    
    </div>
  
      <div class="box">
    
    <div class="img-box" title="Materias" >
      <img src="imagenes/materias.jpg" alt=""></div>
      
      <div class="content">
        <h2>Materias</h2>
       <button class="ghost-btn">Ingresar...</button></div>
    
    </div>
  
      <div class="box">
    
    <div class="img-box" title="Grados" >
      <img src="imagenes/grados.jpg" alt=""></div>
      
      <div class="content">
        <h2>Grados</h2>
        <button class="ghost-btn">Ingresar...</button></div>
    
    </div>
  
      <div class="box">
    
    <div class="img-box" title="Secciones">
      <img src="imagenes/secciones.jpg" alt=""></div>
      
      <div class="content">
        <h2>Secciones</h2>
       <button class="ghost-btn">Ingresar...</button></div>
    
    </div>

     <div class="box">
    
    <div class="img-box" title="Notas">
      <img src="imagenes/nota.jpg" alt=""></div>
      
      <div class="content">
        <h2>Notas</h2>
       <button class="ghost-btn">Ingresar...</button></div>
    
    </div>
  
   <div class="box">
    
    <div class="img-box" title="Fichas Informativas" >
      <img src="imagenes/ficha.jpg" alt=""></div>
      
      <div class="content">
        <h2>Fichas de Alumnos</h2>
       <button class="ghost-btn">Ingresar...</button></div>
    
    </div>
  
     <div class="box">
    
    <div class="img-box" title="Informacion Adicional" >
      <img src="imagenes/informacionadicional.jpg" alt=""></div>
      
      <div class="content">
        <h4>Discapacidades y Grupos Étnicos del Alumnado</h4>
        <button class="ghost-btn">Ingresar...</button></div>
    
    </div>
  
     <div class="box">
    
    <div class="img-box" title="Actividades" >
      <img src="imagenes/calendar.jpg" alt=""></div>
      
      <div class="content">
        <h2>Actividades Escolares</h2>
        <button class="ghost-btn">Ingresar...</button></div>
    
    </div>

  
</div>

<?php
}
?>

</body>
</html>
