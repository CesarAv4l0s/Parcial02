-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2022 a las 22:12:28
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela_cfga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `clave` varchar(4) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `horas_semana` tinyint(4) NOT NULL,
  `horas_totales` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`clave`, `nombre`, `horas_semana`, `horas_totales`) VALUES
('CBDD', 'Construye Base De Datos', 6, 72),
('CLIL', 'Calculo Integral', 5, 100),
('CTSV', 'Ciencias Sociales', 4, 54),
('DAWB', 'Desarrolla Aplicaciones', 6, 72),
('FISC', 'Fisica', 4, 54),
('INGL', 'Ingles', 5, 100),
('TUTR', 'Tutoria', 1, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `nombre` varchar(20) NOT NULL,
  `turno` varchar(15) NOT NULL,
  `lider_academia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`nombre`, `turno`, `lider_academia`) VALUES
('CONTABILIDAD', 'MIXTO', 'LUIS GODINEZ ALMAGUER'),
('ELECTRICIDAD', 'MATUTINO', ''),
('LOGISTICA', 'MIXTO', 'SILVIA CARRILLO MOSTACHE'),
('MECANICA', 'MATUTINO', ''),
('PROGRAMACION', 'MIXTO', 'RICARDO MENDEZ ROJAS'),
('QUIMICO BIOLOGICO', 'MIXTO', 'ADRIAN EDUARDO PEREZ MARTINEZ'),
('RECURSOS HUMANOS', 'MIXTO', ''),
('SOPORTE', 'MIXTO', 'FRANCISCO CASILLAS BARAJAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `num_control` varchar(14) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `edad` varchar(2) NOT NULL,
  `domicilio` varchar(50) DEFAULT NULL,
  `grupo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`num_control`, `telefono`, `apellidos`, `nombre`, `edad`, `domicilio`, `grupo`) VALUES
('1311111111SHZ1', '4181111111', 'Guitierrez Loredo', 'Itzel', '15', 'La Esperanza', '5MM'),
('1311113311SHJ1', '4183333333', 'Mejia Mondragon', 'Isaac', '17', 'Lindavista', '5PV'),
('13111211339GSH', '4186666666', 'Gutierrez Campos', 'Uriel', '16', 'Col San ANTONIO', '5CV'),
('131114513345GS', '4181313131', 'Hernandez Deanda', 'Ingrid', '18', 'Fracc. Independecia', '5PM'),
('1311222SHZ1222', '4182222222', 'Avalos Mejia', 'Sandra', '16', 'San Antonio', '5MV'),
('1311343441SHZ1', '4185555555', 'Garcia Juarez', 'Tamara', '19', 'Lindavista', '5MM'),
('1311811199SHZ1', '4184444444', 'Perez Martinez', 'Adrian', '17', 'La Esperzanza', '5PM'),
('13JL1211939GKH', '4181515151', 'Largo Aguayo', 'Irving', '18', 'Jesus Maria', '5CM'),
('161OGT11339GSH', '4181212121', 'Marquez Deanda', 'Elena', '17', 'El Llanito', '5PV'),
('17711211PO9GSH', '4186666666', 'Garza Aguilar', 'Jonathan', '17', 'La Esperanza', '5PM'),
('17AA1B11647GSH', '4189999999', 'Castañeda Lozano', 'Angel', '15', 'Col La Rumorosa', '5MV'),
('1871112UUL39SH', '4181414141', 'Vazquez Palcios', 'Paolo', '17', 'Lomas Verdes', '5CV'),
('1CD1112AB339GS', '4187777777', 'Aguillon Mellado', 'Oscar', '19', 'El Llanito', '5CM'),
('1O91HH11339GSH', '4188888888', 'Martinez Martinez', 'Efrain', '18', 'Col San Pablo', '5SM'),
('20311050750500', '4181103104', 'Gonzalez Avalos', 'Cesar Fernando', '17', 'Col. Independencia', '5PV'),
('ÑC1U12KP339GSH', '4181611616', 'Placios Avalos', 'Baruck', '18', 'El Llanito', '5MM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_asignatura`
--

CREATE TABLE `estudiante_asignatura` (
  `num_control` varchar(14) NOT NULL,
  `asignatura` varchar(4) NOT NULL,
  `fecha` date NOT NULL,
  `semestre` tinyint(4) NOT NULL,
  `calificacion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante_asignatura`
--

INSERT INTO `estudiante_asignatura` (`num_control`, `asignatura`, `fecha`, `semestre`, `calificacion`) VALUES
('1311111111SHZ1', 'CBDD', '0000-00-00', 5, 8),
('13111211339GSH', 'DAWB', '2022-10-20', 5, 10),
('1311222SHZ1222', 'DAWB', '2022-10-14', 5, 10),
('13JL1211939GKH', 'CBDD', '2022-10-17', 5, 9),
('13JL1211939GKH', 'DAWB', '2022-10-18', 5, 7),
('17AA1B11647GSH', 'CBDD', '2022-10-18', 5, 10),
('1O91HH11339GSH', 'CBDD', '2022-10-17', 5, 7),
('20311050750500', 'CBDD', '2022-10-18', 5, 9),
('20311050750500', 'DAWB', '2022-10-18', 5, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `nombre` varchar(3) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `tutor` varchar(30) NOT NULL,
  `representante` varchar(30) DEFAULT NULL,
  `carrera` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`nombre`, `turno`, `tutor`, `representante`, `carrera`) VALUES
('5AM', 'MATUTINO', 'PAOLO PALACIOS', 'DIEGO ARRIAGA', 'RECURSOS HUMANOS'),
('5AV', 'VESPERTINO', 'MIGUEL AVILES', 'SAUL ORTIZ', 'RECURSOS HUMANOS'),
('5CM', 'Matutino', 'Casillas', 'Brandon Gael', 'CONTABILIDAD'),
('5CV', 'Vespertino', 'Carlos Horacio Teran', 'Uriel Gonzalez', 'Contabilidad'),
('5E', 'MATUTINO', 'SALVADOR GUTIERREZ', 'SAMAEL VAZQUEZ', 'ELECTRICIDAD'),
('5LM', 'Matutino', 'Francisco', 'Aaron Caleb', 'LOGISTICA'),
('5LV', 'VESPERTINO', 'DEANDA INGRID', NULL, 'LOGISTICA'),
('5MM', 'Matutino', 'Godinez', ' Israel Juarez', 'MECANICA'),
('5MV', 'Matutino', 'Godinez', 'Israel', 'Mecanica'),
('5PM', 'Matutino', 'Ricardo Mendez Rojas', 'Adrian Eduardo', 'Programación'),
('5PV', ' Vespertin', 'Silvia Carrillo Mostache', 'Luis Rey Mujica Zacarias', 'Programacion'),
('5SM', 'Matutino', 'Casillas', 'Brandon Gael', 'Soporte'),
('5SV', 'VESPERTINO', 'MARTIN ALMAGUER', 'JENNIFER CANO', 'SOPORTE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`num_control`),
  ADD KEY `indice_2` (`grupo`);

--
-- Indices de la tabla `estudiante_asignatura`
--
ALTER TABLE `estudiante_asignatura`
  ADD PRIMARY KEY (`num_control`,`asignatura`),
  ADD KEY `asignatura` (`asignatura`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`nombre`),
  ADD KEY `indice_carrera` (`carrera`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `grupo` FOREIGN KEY (`grupo`) REFERENCES `grupo` (`nombre`);

--
-- Filtros para la tabla `estudiante_asignatura`
--
ALTER TABLE `estudiante_asignatura`
  ADD CONSTRAINT `asignatura` FOREIGN KEY (`asignatura`) REFERENCES `asignatura` (`clave`),
  ADD CONSTRAINT `num_control` FOREIGN KEY (`num_control`) REFERENCES `estudiante` (`num_control`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `carrera` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
