<?php
session_start();
$con=mysqli_connect("localhost","root","","autogestion2");
//$host="localhost";
//$username="root";
//$password="";
//$db="autogestion2";
//$con=mysqli_connect($host,$username,$password) or die("No se puede acceder a la base de datos");
//mysqli_connect($db,$con);
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Paginación PHP con MySQL: Concepto y ejemplos</title>
<style type="text/css">

ul.paginador
{
   
}
ul.paginador li
{
   float:left;
}
ul.paginador li a
{
   float:left;
}
ul.paginador li.paginador-active a, ul.paginador li a:hover
{
   background-color: #337ab7;
   border-color: #337ab7;
   color:#FFFFFF;
}
ul.paginador li.paginador-disabled a, ul.paginador li.paginador-disabled a:hover
{
   cursor:default;
}
ul.paginador li.paginador-current
{
}
</style>
<link type="text/css" href="bootstrap.min.css" rel="stylesheet">
<style>
table {
    border-collapse: collapse;
    width: 100%;
}
th, td {
    text-align: left;
    padding: 4px;
}
tr:nth-child(even){background-color: #f2f2f2}
th {
    background-color: #4CAF50;
    color: white;
}
.main-wrapper{
   width:80%;
   margin:0 auto;
}
hr {
    margin-top: 5px;
    margin-bottom: 5px;
    border: 0;
    border-top: 1px solid #eee;
}
</style>
</head>
<body>
<div class="main-wrapper">
<br>
<h1>Paginación PHP con MySQL</h1>
<br>
<table width="90%" border="0" cellspacing="3" cellpadding="0">
   <tr>
      <th width="10%"><strong>ID</strong></th>
      <th width="70%"><strong>Nombre de Pais</strong></th>
      <th width="10%"><strong>Código 2</strong></th>
      <th width="10%"><strong>Código 3</strong></th>
   </tr>
   <?php
   include("class.pagina.php");
   $sql="SELECT * from encargados order by id_Encargado";
   $PAGINADOR=new PAGINADOR($sql);
   
   $sql=$PAGINADOR->sql;
   
   //$res=mysqli_query($con,$sql) or die($sql." - ".mysqli_error());
   while($row=mysql_fetch_array($con))
   {
   ?>
   <tr>
      <td><?php echo $row['Id_Encargado']?></td>
      <td><?php echo $row['Primer_Nombre']?></td>
      <td><?php echo $row['Segundo_Nombre']?></td>
      <td><?php echo $row[3]?></td>
   </tr>
   <?php
   }
   ?>
</table>
<hr />
<div><?php echo $PAGINADOR->ver_pagina("prueba.php")?></div>
</div>
</body>
</html>