-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 03:43 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autogestion2`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividades`
--

CREATE TABLE `actividades` (
  `Id_Actividad` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Id_Docente` int(10) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `administracion`
--

CREATE TABLE `administracion` (
  `Id_Administrador` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Id_Usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administracion`
--

INSERT INTO `administracion` (`Id_Administrador`, `Nombre`, `Apellido`, `Id_Usuario`) VALUES
(1, 'Tattiana', 'Pineda', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alumdiscs`
--

CREATE TABLE `alumdiscs` (
  `Id_AlumDisc` int(10) NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Id_Discapacidad` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `alumgetnicos`
--

CREATE TABLE `alumgetnicos` (
  `Id_AEtnico` int(10) NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Id_gEtnico` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `Id_Alumno` int(10) NOT NULL,
  `Primer_Nombre` varchar(25) NOT NULL,
  `Segundo_Nombre` varchar(25) NOT NULL,
  `Primer_Apellido` varchar(25) NOT NULL,
  `Segundo_Apellido` varchar(25) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Direcccion` varchar(50) NOT NULL,
  `Id_Grado` int(10) NOT NULL,
  `Id_Encargado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `asistencias`
--

CREATE TABLE `asistencias` (
  `Id_Asistencia` int(10) NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Estado` varchar(25) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `calificaciones`
--

CREATE TABLE `calificaciones` (
  `Id_Calificacion` int(10) NOT NULL,
  `Nota1` int(2) NOT NULL,
  `Nota2` int(2) NOT NULL,
  `Nota3` int(2) NOT NULL,
  `Nota4` int(2) NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Id_Materia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `discapacidades`
--

CREATE TABLE `discapacidades` (
  `Id_Discapacidad` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `docentes`
--

CREATE TABLE `docentes` (
  `Id_Docente` int(10) NOT NULL,
  `Primer_Nombre` varchar(25) NOT NULL,
  `Segundo_Nombre` varchar(25) NOT NULL,
  `Primer_Apellido` varchar(25) NOT NULL,
  `Segundo_Apellido` varchar(25) NOT NULL,
  `DPI` varchar(25) NOT NULL,
  `Direcccion` varchar(50) NOT NULL,
  `Telefono` int(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Id_Usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `docentes`
--

INSERT INTO `docentes` (`Id_Docente`, `Primer_Nombre`, `Segundo_Nombre`, `Primer_Apellido`, `Segundo_Apellido`, `DPI`, `Direcccion`, `Telefono`, `Email`, `Fecha_Nac`, `Id_Usuario`) VALUES
(1, 'Alba', 'Beatriz', 'None', 'Name', '2514163320501', 'Escuintla, Cascada', 78892565, 'alba@gmail.com', '1985-03-11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `encargados`
--

CREATE TABLE `encargados` (
  `Id_Encargado` int(10) NOT NULL,
  `Primer_Nombre` varchar(25) NOT NULL,
  `Segundo_Nombre` varchar(25) NOT NULL,
  `Primer_Apellido` varchar(25) NOT NULL,
  `Segundo_Apellido` varchar(25) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Direcccion` varchar(50) NOT NULL,
  `Telefono` int(8) NOT NULL,
  `Parentesco` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `encargados`
--

INSERT INTO `encargados` (`Id_Encargado`, `Primer_Nombre`, `Segundo_Nombre`, `Primer_Apellido`, `Segundo_Apellido`, `Fecha_Nacimiento`, `Direcccion`, `Telefono`, `Parentesco`) VALUES
(1, 'Roman', 'Romario', 'Alvarado', 'Morales', '1995-01-25', 'Manzana w lote 4 sector 3 la cascada 3 zona 3 de e', 30462435, 'Papa'),
(2, 'Jennifer', 'Tattiana', 'Pineda', 'Barrera', '1991-12-18', 'Escuintla, Guatemala', 59748246, 'Madre'),
(3, 'Roman', 'Romario', 'Alvarado', 'Morales', '1995-01-25', 'Manzana w sector 3 colonia la cascada 3 zona 3 de ', 30462435, 'Papa'),
(7, 'Luis', 'Alberto', 'Velasquez', 'Lopez', '2021-05-19', 'San, Lucas', 78654935, 'Nada'),
(8, 'Prueba 2', 'Prueba 2', 'Prueba 2', 'Prueba 2', '2021-05-06', 'Guatemala', 89674835, 'Nada'),
(9, 'prueba 3', 'prueba 3', 'prueba 3', 'prueba 3', '2021-05-20', 'Guatemala', 784685279, 'Nada');

-- --------------------------------------------------------

--
-- Table structure for table `establecimiento`
--

CREATE TABLE `establecimiento` (
  `Id_Establicimeinto` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fichasalumnos`
--

CREATE TABLE `fichasalumnos` (
  `Id_FichaAlumno` int(10) NOT NULL,
  `Fecha_hora` datetime NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Id_Grado` int(10) NOT NULL,
  `Id_Calificacion` int(10) NOT NULL,
  `Id_Encargado` int(10) NOT NULL,
  `Id_AlumDisc` int(10) NOT NULL,
  `Id_AEtnico` int(10) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grados`
--

CREATE TABLE `grados` (
  `Id_Grado` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Id_Seccion` int(10) NOT NULL,
  `Id_Docente` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gruposetnicos`
--

CREATE TABLE `gruposetnicos` (
  `Id_gEtnico` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inscripciones`
--

CREATE TABLE `inscripciones` (
  `Id_Inscripcion` int(10) NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Id_Grado` int(10) NOT NULL,
  `Fecha_Inscripción` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

CREATE TABLE `materias` (
  `Id_Materia` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `Id_Rol` int(10) NOT NULL,
  `Perfil` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`Id_Rol`, `Perfil`) VALUES
(1, 'Administrador'),
(2, 'Docente');

-- --------------------------------------------------------

--
-- Table structure for table `secciones`
--

CREATE TABLE `secciones` (
  `Id_Seccion` int(10) NOT NULL,
  `Seccion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(10) NOT NULL,
  `Usuario` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Estado` int(1) NOT NULL,
  `Id_Rol` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Usuario`, `Password`, `Estado`, `Id_Rol`) VALUES
(1, 'Tatthu', '181291', 1, 1),
(2, 'Alba', '12345', 1, 2),
(3, 'romario', '123', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`Id_Actividad`),
  ADD KEY `Id_Docente` (`Id_Docente`);

--
-- Indexes for table `administracion`
--
ALTER TABLE `administracion`
  ADD PRIMARY KEY (`Id_Administrador`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indexes for table `alumdiscs`
--
ALTER TABLE `alumdiscs`
  ADD PRIMARY KEY (`Id_AlumDisc`),
  ADD KEY `Id_Alumno` (`Id_Alumno`,`Id_Discapacidad`),
  ADD KEY `Id_Discapacidad` (`Id_Discapacidad`);

--
-- Indexes for table `alumgetnicos`
--
ALTER TABLE `alumgetnicos`
  ADD PRIMARY KEY (`Id_AEtnico`),
  ADD KEY `Id_Alumno` (`Id_Alumno`,`Id_gEtnico`),
  ADD KEY `Id_gEtnico` (`Id_gEtnico`);

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Id_Alumno`),
  ADD KEY `Id_Grado` (`Id_Grado`),
  ADD KEY `Id_Encargado` (`Id_Encargado`);

--
-- Indexes for table `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`Id_Asistencia`),
  ADD KEY `Id_Alumno` (`Id_Alumno`);

--
-- Indexes for table `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`Id_Calificacion`),
  ADD KEY `Id_Alumno` (`Id_Alumno`,`Id_Materia`),
  ADD KEY `Id_Materia` (`Id_Materia`);

--
-- Indexes for table `discapacidades`
--
ALTER TABLE `discapacidades`
  ADD PRIMARY KEY (`Id_Discapacidad`);

--
-- Indexes for table `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`Id_Docente`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indexes for table `encargados`
--
ALTER TABLE `encargados`
  ADD PRIMARY KEY (`Id_Encargado`);

--
-- Indexes for table `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD PRIMARY KEY (`Id_Establicimeinto`);

--
-- Indexes for table `fichasalumnos`
--
ALTER TABLE `fichasalumnos`
  ADD PRIMARY KEY (`Id_FichaAlumno`),
  ADD KEY `Id_Alumno` (`Id_Alumno`,`Id_Grado`,`Id_Encargado`,`Id_AlumDisc`),
  ADD KEY `Id_Grado` (`Id_Grado`),
  ADD KEY `Id_Encargado` (`Id_Encargado`),
  ADD KEY `Id_AlumDisc` (`Id_AlumDisc`),
  ADD KEY `Id_Calificacion` (`Id_Calificacion`),
  ADD KEY `Id_AEtnico` (`Id_AEtnico`);

--
-- Indexes for table `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`Id_Grado`),
  ADD KEY `Id_Seccion` (`Id_Seccion`,`Id_Docente`),
  ADD KEY `Id_Docente` (`Id_Docente`);

--
-- Indexes for table `gruposetnicos`
--
ALTER TABLE `gruposetnicos`
  ADD PRIMARY KEY (`Id_gEtnico`);

--
-- Indexes for table `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`Id_Inscripcion`),
  ADD KEY `Id_Alumno` (`Id_Alumno`,`Id_Grado`),
  ADD KEY `Id_Grado` (`Id_Grado`);

--
-- Indexes for table `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`Id_Materia`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id_Rol`);

--
-- Indexes for table `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`Id_Seccion`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Rol` (`Id_Rol`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividades`
--
ALTER TABLE `actividades`
  MODIFY `Id_Actividad` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administracion`
--
ALTER TABLE `administracion`
  MODIFY `Id_Administrador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `alumdiscs`
--
ALTER TABLE `alumdiscs`
  MODIFY `Id_AlumDisc` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumgetnicos`
--
ALTER TABLE `alumgetnicos`
  MODIFY `Id_AEtnico` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `Id_Alumno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `Id_Asistencia` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `Id_Calificacion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discapacidades`
--
ALTER TABLE `discapacidades`
  MODIFY `Id_Discapacidad` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `docentes`
--
ALTER TABLE `docentes`
  MODIFY `Id_Docente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `encargados`
--
ALTER TABLE `encargados`
  MODIFY `Id_Encargado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `establecimiento`
--
ALTER TABLE `establecimiento`
  MODIFY `Id_Establicimeinto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fichasalumnos`
--
ALTER TABLE `fichasalumnos`
  MODIFY `Id_FichaAlumno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grados`
--
ALTER TABLE `grados`
  MODIFY `Id_Grado` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gruposetnicos`
--
ALTER TABLE `gruposetnicos`
  MODIFY `Id_gEtnico` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `Id_Inscripcion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materias`
--
ALTER TABLE `materias`
  MODIFY `Id_Materia` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `Id_Rol` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `secciones`
--
ALTER TABLE `secciones`
  MODIFY `Id_Seccion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`Id_Docente`) REFERENCES `docentes` (`Id_Docente`) ON DELETE CASCADE;

--
-- Constraints for table `administracion`
--
ALTER TABLE `administracion`
  ADD CONSTRAINT `administracion_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE;

--
-- Constraints for table `alumdiscs`
--
ALTER TABLE `alumdiscs`
  ADD CONSTRAINT `alumdiscs_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumdiscs_ibfk_2` FOREIGN KEY (`Id_Discapacidad`) REFERENCES `discapacidades` (`Id_Discapacidad`) ON DELETE CASCADE;

--
-- Constraints for table `alumgetnicos`
--
ALTER TABLE `alumgetnicos`
  ADD CONSTRAINT `alumgetnicos_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumgetnicos_ibfk_2` FOREIGN KEY (`Id_gEtnico`) REFERENCES `gruposetnicos` (`Id_gEtnico`) ON DELETE CASCADE;

--
-- Constraints for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`Id_Grado`) REFERENCES `grados` (`Id_Grado`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`Id_Encargado`) REFERENCES `encargados` (`Id_Encargado`) ON DELETE CASCADE;

--
-- Constraints for table `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE;

--
-- Constraints for table `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`Id_Materia`) REFERENCES `materias` (`Id_Materia`) ON DELETE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE;

--
-- Constraints for table `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE;

--
-- Constraints for table `fichasalumnos`
--
ALTER TABLE `fichasalumnos`
  ADD CONSTRAINT `fichasalumnos_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_2` FOREIGN KEY (`Id_Grado`) REFERENCES `grados` (`Id_Grado`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_3` FOREIGN KEY (`Id_Encargado`) REFERENCES `encargados` (`Id_Encargado`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_4` FOREIGN KEY (`Id_AlumDisc`) REFERENCES `alumdiscs` (`Id_AlumDisc`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_5` FOREIGN KEY (`Id_Calificacion`) REFERENCES `calificaciones` (`Id_Calificacion`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_6` FOREIGN KEY (`Id_AEtnico`) REFERENCES `alumgetnicos` (`Id_AEtnico`) ON DELETE CASCADE;

--
-- Constraints for table `grados`
--
ALTER TABLE `grados`
  ADD CONSTRAINT `grados_ibfk_1` FOREIGN KEY (`Id_Seccion`) REFERENCES `secciones` (`Id_Seccion`) ON DELETE CASCADE,
  ADD CONSTRAINT `grados_ibfk_2` FOREIGN KEY (`Id_Docente`) REFERENCES `docentes` (`Id_Docente`) ON DELETE CASCADE;

--
-- Constraints for table `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `inscripciones_ibfk_1` FOREIGN KEY (`Id_Grado`) REFERENCES `grados` (`Id_Grado`) ON DELETE CASCADE,
  ADD CONSTRAINT `inscripciones_ibfk_2` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE;

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_Rol`) REFERENCES `roles` (`Id_Rol`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
