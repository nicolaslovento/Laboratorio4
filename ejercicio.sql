-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2019 a las 15:26:13
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejercicio`
--
CREATE DATABASE IF NOT EXISTS `ejercicio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ejercicio`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `legajo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `domicilio` varchar(30) NOT NULL,
  `localidad` varchar(30) NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `pnro` int(11) NOT NULL,
  `pnombre` varchar(30) NOT NULL,
  `precio` int(11) NOT NULL,
  `tamaño` varchar(30) NOT NULL,
  `localidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`pnro`, `pnombre`, `precio`, `tamaño`, `localidad`) VALUES
(1, 'Talco', 5, 'Chico', 'Capital Federal'),
(2, 'Talco', 7, 'mediano', 'Capital Federal'),
(3, 'Crema', 8, 'Grande', 'Ramos Mejia'),
(4, 'Cepillo', 2, 'Grande', 'Avellaneda'),
(5, 'Esmalte', 8, 'Normal', 'Chacarita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `numero` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `domicilio` varchar(20) DEFAULT NULL,
  `localidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`numero`, `nombre`, `domicilio`, `localidad`) VALUES
(101, 'Gomez', 'Nazca 920', 'Capital Federal'),
(102, 'Perez', 'Argerich 1030', 'Capital Federal'),
(103, 'Vazquez', 'Sarmiento 450', 'Ramos Mejia'),
(104, 'Lopez', 'Alsina 720', 'Avellaneda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prov_prod`
--

CREATE TABLE `prov_prod` (
  `numero` int(11) NOT NULL,
  `pnro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prov_prod`
--

INSERT INTO `prov_prod` (`numero`, `pnro`, `cantidad`) VALUES
(101, 1, 300),
(101, 2, 200),
(101, 3, 400),
(101, 4, 200),
(101, 5, 100),
(102, 1, 300),
(102, 2, 400),
(103, 2, 200),
(104, 2, 200),
(104, 4, 300);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`legajo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`pnro`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `prov_prod`
--
ALTER TABLE `prov_prod`
  ADD PRIMARY KEY (`numero`,`pnro`),
  ADD KEY `pnro` (`pnro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `pnro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prov_prod`
--
ALTER TABLE `prov_prod`
  ADD CONSTRAINT `prov_prod_ibfk_1` FOREIGN KEY (`numero`) REFERENCES `proveedores` (`numero`),
  ADD CONSTRAINT `prov_prod_ibfk_2` FOREIGN KEY (`pnro`) REFERENCES `productos` (`pnro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
