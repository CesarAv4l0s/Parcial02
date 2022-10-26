-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2022 a las 22:41:54
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
-- Base de datos: `empresa_cfga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cod_cliente` int(4) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `calle` varchar(20) NOT NULL,
  `portal` int(3) NOT NULL,
  `piso` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_product`
--

CREATE TABLE `cliente_product` (
  `cod_cliente` int(4) NOT NULL,
  `producto` int(4) NOT NULL,
  `fecha` date NOT NULL,
  `ganancia` int(4) NOT NULL,
  `empleado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `cod_depart` varchar(5) NOT NULL,
  `nombre_dep` varchar(20) NOT NULL,
  `empleado_dep` varchar(15) NOT NULL,
  `gerente` varchar(20) NOT NULL,
  `empleadotr` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleadotr`
--

CREATE TABLE `empleadotr` (
  `id` int(4) NOT NULL,
  `nombre_tra` varchar(30) NOT NULL,
  `contacto` varchar(10) NOT NULL,
  `ventas` varchar(5) NOT NULL,
  `direccion` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_producto` int(4) NOT NULL,
  `precio` int(4) NOT NULL,
  `oferta` int(4) DEFAULT NULL,
  `fecha` date NOT NULL,
  `departamento` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Indices de la tabla `cliente_product`
--
ALTER TABLE `cliente_product`
  ADD PRIMARY KEY (`cod_cliente`,`producto`),
  ADD KEY `producto` (`producto`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`cod_depart`),
  ADD KEY `idxempl` (`empleadotr`);

--
-- Indices de la tabla `empleadotr`
--
ALTER TABLE `empleadotr`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_producto`),
  ADD KEY `indx_departa` (`departamento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente_product`
--
ALTER TABLE `cliente_product`
  ADD CONSTRAINT `cod_cliente` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  ADD CONSTRAINT `producto` FOREIGN KEY (`producto`) REFERENCES `producto` (`cod_producto`);

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `empleadotr` FOREIGN KEY (`empleadotr`) REFERENCES `empleadotr` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `departamento` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`cod_depart`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
