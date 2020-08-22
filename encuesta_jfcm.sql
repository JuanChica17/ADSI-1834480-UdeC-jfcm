-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2020 a las 19:33:20
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `encuesta_jfcm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes_jfcm`
--

CREATE TABLE `estudiantes_jfcm` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `tipo_doc` enum('Tarjeta de identidad','Cedula de ciudadania','Cedula de extranjeria','Pasaportes') DEFAULT NULL,
  `num_doc` varchar(10) DEFAULT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `celular` varchar(12) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` enum('Masculino','Femenino') DEFAULT NULL,
  `zona` enum('Rural','Urbana') DEFAULT NULL,
  `estadoc` enum('Soltero(a)','Casado(a)','Viudo(a)','Comprometido(a)') DEFAULT NULL,
  `programaf` enum('Tecnico en seguridad industrial','Tecnico en costrucciones civiles','Tecnico en mantenimiento electronico industrial','Tecnico en mantenimiento mecanico industrial','Tecnico en analisis quimico industrial','Tecnico en operacion de procesos industriales') DEFAULT NULL,
  `tipoie` enum('Privada','Publica','Mixta') DEFAULT NULL,
  `tiempogb` varchar(30) DEFAULT NULL,
  `nivelep` enum('Analfabeta','Primaria','Secundaria','Bachiller','Tecnico','Tecnologo','Profesional') DEFAULT NULL,
  `actividadep` varchar(30) DEFAULT NULL,
  `tipovi` enum('Propia','Alquilada','Familiar') DEFAULT NULL,
  `nivelih` varchar(30) DEFAULT NULL,
  `calificacionpm` enum('Excelente','Mal','Bien','Regular') DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `tipo_usuario` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estudiantes_jfcm`
--

INSERT INTO `estudiantes_jfcm` (`id`, `nombre`, `apellido`, `tipo_doc`, `num_doc`, `direccion`, `celular`, `fecha_nacimiento`, `genero`, `zona`, `estadoc`, `programaf`, `tipoie`, `tiempogb`, `nivelep`, `actividadep`, `tipovi`, `nivelih`, `calificacionpm`, `email`, `password`, `tipo_usuario`) VALUES
(1, 'juan fernando', 'chica medina', 'Cedula de ciudadania', '1007188503', 'alto prado mz3 lt 14 b', '3002661261', '1999-12-01', 'Masculino', 'Urbana', 'Soltero(a)', 'Tecnico en seguridad industrial', 'Privada', '2 años', 'Primaria', 'asasasas', 'Alquilada', '1000000', 'Excelente', 'juanfernando@hotmail.com', '11111', 'Estudiante'),
(2, 'valentina rosa', 'perez martinez', 'Tarjeta de identidad', '1007182635', 'alto prado mz6 lt 12 b', '3002661547', '2000-12-01', 'Femenino', 'Rural', 'Comprometido(a)', 'Tecnico en seguridad industrial', 'Privada', '1 año', 'Secundaria', 'zxzxzx', 'Propia', '2000000', 'Bien', 'valentinaperez@hotmail.com', '22222', 'Estudiante'),
(3, 'felipe jose', 'peña corrales', 'Cedula de ciudadania', '1007182415', 'alto prado mz2 lt 10 b', '3002667821', '2001-12-01', 'Masculino', 'Urbana', 'Soltero(a)', 'Tecnico en costrucciones civiles', 'Publica', '2 años', 'Primaria', 'hjhjhjhj', 'Alquilada', '3000000', 'Excelente', 'felipecorrales@hotmail.com', '33333', 'Estudiante'),
(4, 'carolina maria', 'bolaños perea', 'Tarjeta de identidad', '1007187845', 'alto prado mz5 lt 11 b', '3002663259', '2002-12-01', 'Femenino', 'Urbana', 'Comprometido(a)', 'Tecnico en costrucciones civiles', 'Publica', '1 año', 'Secundaria', 'cvcvcv', 'Propia', '4000000', 'Bien', 'carolinaperea@hotmail.com', '44444', 'Estudiante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_jfcm`
--

CREATE TABLE `usuarios_jfcm` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `tipo_usuario` enum('Administrativo','Estudiante') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_jfcm`
--

INSERT INTO `usuarios_jfcm` (`id`, `nombre`, `apellido`, `email`, `password`, `tipo_usuario`) VALUES
(1, 'miguel enrique', 'enrique peñaranda', 'miguelromero@hotmail.com', '12345', 'Administrativo'),
(2, 'asasas', 'zxzxzx', 'asasas@hotmail.com', '1212', 'Administrativo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes_jfcm`
--
ALTER TABLE `estudiantes_jfcm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `num_doc` (`num_doc`);

--
-- Indices de la tabla `usuarios_jfcm`
--
ALTER TABLE `usuarios_jfcm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes_jfcm`
--
ALTER TABLE `estudiantes_jfcm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios_jfcm`
--
ALTER TABLE `usuarios_jfcm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
