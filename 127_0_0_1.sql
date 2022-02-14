-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-09-2020 a las 16:30:40
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ehs_indumentaria`
--
CREATE DATABASE IF NOT EXISTS `ehs_indumentaria` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `ehs_indumentaria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

DROP TABLE IF EXISTS `articulos`;
CREATE TABLE IF NOT EXISTS `articulos` (
  `id_articulo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_talle` int(2) NOT NULL,
  `articulo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_articulo`),
  UNIQUE KEY `ID` (`id_articulo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `tipo_talle`, `articulo`) VALUES
(4, 1, 'Buzo Color Azul'),
(5, 1, 'Campera Azul'),
(6, 1, 'Chaqueta Celeste'),
(7, 1, 'Chomba Azul Manga larga'),
(8, 1, 'Chomba Marron Manga larga'),
(9, 1, 'Guardapolvo Blanco Cuello Color '),
(10, 1, 'Pantalon Celeste'),
(11, 2, 'Pantalon Azul'),
(12, 2, 'Pantalon Marron');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `art_x_sector`
--

DROP TABLE IF EXISTS `art_x_sector`;
CREATE TABLE IF NOT EXISTS `art_x_sector` (
  `id_artsect` int(11) NOT NULL AUTO_INCREMENT,
  `id_art` int(11) NOT NULL,
  `id_sect` int(11) NOT NULL,
  PRIMARY KEY (`id_artsect`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `art_x_sector`
--

INSERT INTO `art_x_sector` (`id_artsect`, `id_art`, `id_sect`) VALUES
(1, 4, 2),
(2, 4, 7),
(3, 5, 7),
(4, 6, 2),
(5, 7, 7),
(6, 9, 2),
(7, 10, 7),
(8, 11, 2),
(9, 7, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `id_talle` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `solicito` varchar(2) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'No',
  PRIMARY KEY (`id_pedido`),
  UNIQUE KEY `ID` (`id_pedido`),
  KEY `id_usuario` (`id_usuario`),
  KEY `fk_art_idx` (`id_articulo`),
  KEY `fk_talle_idx` (`id_talle`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_usuario`, `id_articulo`, `id_talle`, `cantidad`, `solicito`) VALUES
(1, 1, 4, 2, 1, 'No'),
(4, 3, 4, 1, 1, 'No'),
(5, 2, 4, 1, 2, 'No'),
(10, 3, 11, 15, 2, 'No'),
(14, 4, 6, 4, 2, 'No'),
(16, 5, 9, 1, 1, 'No'),
(17, 2, 10, 1, 1, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `descripcion`) VALUES
(1, 'Admin'),
(2, 'Gestion'),
(3, 'Carga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

DROP TABLE IF EXISTS `sector`;
CREATE TABLE IF NOT EXISTS `sector` (
  `id_sector` int(11) NOT NULL AUTO_INCREMENT,
  `sector` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_sector`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`id_sector`, `sector`) VALUES
(1, 'Produccion'),
(2, 'QC'),
(3, 'QA'),
(4, 'Proyectos'),
(5, 'I+D'),
(6, 'Deposito'),
(7, 'EHS'),
(8, 'Sistemas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talles`
--

DROP TABLE IF EXISTS `talles`;
CREATE TABLE IF NOT EXISTS `talles` (
  `id_talle` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_talle` int(2) NOT NULL,
  `talle` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_talle`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `talles`
--

INSERT INTO `talles` (`id_talle`, `tipo_talle`, `talle`) VALUES
(1, 1, '40'),
(2, 1, '42'),
(3, 1, '44'),
(4, 1, '46'),
(5, 1, '48'),
(6, 1, '50'),
(7, 1, '52'),
(8, 1, '54'),
(9, 1, '56'),
(10, 1, '58'),
(11, 1, '60'),
(12, 2, 'XS'),
(13, 2, 'S'),
(14, 2, 'M'),
(15, 2, 'L'),
(16, 2, 'XL'),
(17, 2, 'XXL'),
(18, 2, 'XXXL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `legajo` int(11) NOT NULL,
  `id_sector` int(11) NOT NULL,
  `user` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `pass` tinytext COLLATE utf8_spanish_ci NOT NULL,
  `id_rol` int(2) NOT NULL,
  PRIMARY KEY (`id_usuario`,`user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `legajo`, `id_sector`, `user`, `pass`, `id_rol`) VALUES
(1, 'Julieta', 'Pugliese', 34320, 7, 'jpugliese', '123', 2),
(2, 'Ignacio', 'Toledo', 34226, 7, 'itoledo', '123', 2),
(3, 'Virginia', 'Garzón', 34326, 7, 'vgarzon', '123', 2),
(4, 'Pablo', 'Regueiro', 33988, 2, 'pregueir', '123', 3),
(5, 'Guadalupe', 'Gallego', 34183, 2, 'ggallego', '123', 3),
(6, 'Mariano', 'Sole', 34232, 2, 'msole', '123', 3),
(7, 'Lucas', 'Galletti', 0, 8, 'lgalletti', '123', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_art` FOREIGN KEY (`id_articulo`) REFERENCES `articulos` (`id_articulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_talle` FOREIGN KEY (`id_talle`) REFERENCES `talles` (`id_talle`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
