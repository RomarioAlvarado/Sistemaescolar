-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2021 a las 03:46:29
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autogestion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
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
-- Estructura de tabla para la tabla `administracion`
--

CREATE TABLE `administracion` (
  `Id_Administrador` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Id_Usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumdiscs`
--

CREATE TABLE `alumdiscs` (
  `Id_AlumDisc` int(10) NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Id_Discapacidad` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumgetnicos`
--

CREATE TABLE `alumgetnicos` (
  `Id_AEtnico` int(10) NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Id_gEtnico` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Id_Alumno` int(10) NOT NULL,
  `Primer_Nombre` varchar(25) NOT NULL,
  `Segundo_Nombre` varchar(25) NOT NULL,
  `Primer_Apellido` varchar(25) NOT NULL,
  `Segundo_Apellido` varchar(25) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Direcccion` varchar(50) NOT NULL,
  `Id_Grado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `Id_Asistencia` int(10) NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Estado` varchar(25) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
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
-- Estructura de tabla para la tabla `discapacidades`
--

CREATE TABLE `discapacidades` (
  `Id_Discapacidad` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `Id_Docente` int(10) NOT NULL,
  `Primer_Nombre` varchar(25) NOT NULL,
  `Segundo_Nombre` varchar(25) NOT NULL,
  `Primer_Apellido` varchar(25) NOT NULL,
  `Segundo_Apellido` varchar(25) NOT NULL,
  `DPI` int(13) NOT NULL,
  `Direcccion` varchar(50) NOT NULL,
  `Telefono` int(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Fecha_Nac` date NOT NULL,
  `Id_Usuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargados`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento`
--

CREATE TABLE `establecimiento` (
  `Id_Establicimeinto` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fichasalumnos`
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
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `Id_Grado` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Id_Seccion` int(10) NOT NULL,
  `Id_Docente` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gruposetnicos`
--

CREATE TABLE `gruposetnicos` (
  `Id_gEtnico` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incripciones`
--

CREATE TABLE `incripciones` (
  `Id_Inscripcion` int(10) NOT NULL,
  `Id_Alumno` int(10) NOT NULL,
  `Id_Grado` int(10) NOT NULL,
  `Fecha_Inscripción` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `Id_Materia` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `Id_Rol` int(10) NOT NULL,
  `Perfil` varchar(25) NOT NULL,
  `Estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `Id_Seccion` int(10) NOT NULL,
  `Seccion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Id_Rol` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`Id_Actividad`),
  ADD KEY `Id_Docente` (`Id_Docente`);

--
-- Indices de la tabla `administracion`
--
ALTER TABLE `administracion`
  ADD PRIMARY KEY (`Id_Administrador`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `alumdiscs`
--
ALTER TABLE `alumdiscs`
  ADD PRIMARY KEY (`Id_AlumDisc`),
  ADD KEY `Id_Alumno` (`Id_Alumno`,`Id_Discapacidad`),
  ADD KEY `Id_Discapacidad` (`Id_Discapacidad`);

--
-- Indices de la tabla `alumgetnicos`
--
ALTER TABLE `alumgetnicos`
  ADD PRIMARY KEY (`Id_AEtnico`),
  ADD KEY `Id_Alumno` (`Id_Alumno`,`Id_gEtnico`),
  ADD KEY `Id_gEtnico` (`Id_gEtnico`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Id_Alumno`),
  ADD KEY `Id_Grado` (`Id_Grado`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`Id_Asistencia`),
  ADD KEY `Id_Alumno` (`Id_Alumno`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`Id_Calificacion`),
  ADD KEY `Id_Alumno` (`Id_Alumno`,`Id_Materia`),
  ADD KEY `Id_Materia` (`Id_Materia`);

--
-- Indices de la tabla `discapacidades`
--
ALTER TABLE `discapacidades`
  ADD PRIMARY KEY (`Id_Discapacidad`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`Id_Docente`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `encargados`
--
ALTER TABLE `encargados`
  ADD PRIMARY KEY (`Id_Encargado`);

--
-- Indices de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD PRIMARY KEY (`Id_Establicimeinto`);

--
-- Indices de la tabla `fichasalumnos`
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
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`Id_Grado`),
  ADD KEY `Id_Seccion` (`Id_Seccion`,`Id_Docente`),
  ADD KEY `Id_Docente` (`Id_Docente`);

--
-- Indices de la tabla `gruposetnicos`
--
ALTER TABLE `gruposetnicos`
  ADD PRIMARY KEY (`Id_gEtnico`);

--
-- Indices de la tabla `incripciones`
--
ALTER TABLE `incripciones`
  ADD PRIMARY KEY (`Id_Inscripcion`),
  ADD KEY `Id_Alumno` (`Id_Alumno`,`Id_Grado`),
  ADD KEY `Id_Grado` (`Id_Grado`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`Id_Materia`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id_Rol`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`Id_Seccion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Rol` (`Id_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `Id_Actividad` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `administracion`
--
ALTER TABLE `administracion`
  MODIFY `Id_Administrador` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumdiscs`
--
ALTER TABLE `alumdiscs`
  MODIFY `Id_AlumDisc` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumgetnicos`
--
ALTER TABLE `alumgetnicos`
  MODIFY `Id_AEtnico` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `Id_Alumno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `Id_Asistencia` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `Id_Calificacion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `discapacidades`
--
ALTER TABLE `discapacidades`
  MODIFY `Id_Discapacidad` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `Id_Docente` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encargados`
--
ALTER TABLE `encargados`
  MODIFY `Id_Encargado` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  MODIFY `Id_Establicimeinto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fichasalumnos`
--
ALTER TABLE `fichasalumnos`
  MODIFY `Id_FichaAlumno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `Id_Grado` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gruposetnicos`
--
ALTER TABLE `gruposetnicos`
  MODIFY `Id_gEtnico` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `incripciones`
--
ALTER TABLE `incripciones`
  MODIFY `Id_Inscripcion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `Id_Materia` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `Id_Rol` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `Id_Seccion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`Id_Docente`) REFERENCES `docentes` (`Id_Docente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `administracion`
--
ALTER TABLE `administracion`
  ADD CONSTRAINT `administracion_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `alumdiscs`
--
ALTER TABLE `alumdiscs`
  ADD CONSTRAINT `alumdiscs_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumdiscs_ibfk_2` FOREIGN KEY (`Id_Discapacidad`) REFERENCES `discapacidades` (`Id_Discapacidad`) ON DELETE CASCADE;

--
-- Filtros para la tabla `alumgetnicos`
--
ALTER TABLE `alumgetnicos`
  ADD CONSTRAINT `alumgetnicos_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE,
  ADD CONSTRAINT `alumgetnicos_ibfk_2` FOREIGN KEY (`Id_gEtnico`) REFERENCES `gruposetnicos` (`Id_gEtnico`) ON DELETE CASCADE;

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`Id_Grado`) REFERENCES `grados` (`Id_Grado`) ON DELETE CASCADE;

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE;

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`Id_Materia`) REFERENCES `materias` (`Id_Materia`) ON DELETE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE;

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docentes_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `fichasalumnos`
--
ALTER TABLE `fichasalumnos`
  ADD CONSTRAINT `fichasalumnos_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_2` FOREIGN KEY (`Id_Grado`) REFERENCES `grados` (`Id_Grado`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_3` FOREIGN KEY (`Id_Encargado`) REFERENCES `encargados` (`Id_Encargado`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_4` FOREIGN KEY (`Id_AlumDisc`) REFERENCES `alumdiscs` (`Id_AlumDisc`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_5` FOREIGN KEY (`Id_Calificacion`) REFERENCES `calificaciones` (`Id_Calificacion`) ON DELETE CASCADE,
  ADD CONSTRAINT `fichasalumnos_ibfk_6` FOREIGN KEY (`Id_AEtnico`) REFERENCES `alumgetnicos` (`Id_AEtnico`) ON DELETE CASCADE;

--
-- Filtros para la tabla `grados`
--
ALTER TABLE `grados`
  ADD CONSTRAINT `grados_ibfk_1` FOREIGN KEY (`Id_Seccion`) REFERENCES `secciones` (`Id_Seccion`) ON DELETE CASCADE,
  ADD CONSTRAINT `grados_ibfk_2` FOREIGN KEY (`Id_Docente`) REFERENCES `docentes` (`Id_Docente`) ON DELETE CASCADE;

--
-- Filtros para la tabla `incripciones`
--
ALTER TABLE `incripciones`
  ADD CONSTRAINT `incripciones_ibfk_1` FOREIGN KEY (`Id_Grado`) REFERENCES `grados` (`Id_Grado`) ON DELETE CASCADE,
  ADD CONSTRAINT `incripciones_ibfk_2` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_Rol`) REFERENCES `roles` (`Id_Rol`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
