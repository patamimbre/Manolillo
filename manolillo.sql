-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2018 a las 15:10:28
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `manolillo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebidas`
--

CREATE TABLE `bebidas` (
  `Nombre` varchar(30) DEFAULT NULL,
  `precioMax` float DEFAULT NULL,
  `precioMin` float DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bebidas`
--

INSERT INTO `bebidas` (`Nombre`, `precioMax`, `precioMin`, `tipo`) VALUES
('Larios 12', 3.3, 2.5, 'Ginebra'),
('Larios', 2.8, 2.2, 'Ginebra'),
('Beefeter', 3.3, 2.5, 'Ginebra'),
('Puerto Indias', 3.6, 2.9, 'Ginebra'),
('Barcelo', 3.3, 2.5, 'Ron'),
('Brugal', 3.3, 2.5, 'Ron'),
('Areucas', 3.3, 2.5, 'Ron'),
('Cacique', 3.3, 2.5, 'Ron'),
('Ron Miel', 3.3, 2.5, 'Ron'),
('Negrita', 2.8, 2.2, 'Ron'),
('JB', 3.3, 2.5, 'Whisky'),
('Dyc 8', 3.3, 2.5, 'Whisky'),
('Ballantine', 3.3, 2.5, 'Whisky'),
('White label', 3.3, 2.5, 'Whisky'),
('Dy & Doble V', 2.8, 2.2, 'Whisky'),
('Piña Colada', 3.8, 2.9, 'Coctail'),
('Daikiri', 3.8, 2.9, 'Coctail'),
('Mojito', 3.8, 2.9, 'Coctail'),
('En tubo', 2.4, 2, 'Chismaillo'),
('Vaso Ancho', 2.8, 2.3, 'Chismaillo'),
('Cruzcampo 1/3', 1.7, 1.1, 'Cerveza'),
('Heineken 1/3', 1.7, 1.1, 'Cerveza'),
('Amstel 1/3', 1.7, 1.1, 'Cerveza'),
('Cruzcampo 1/5', 1.2, 0.7, 'Cerveza'),
('Jarra', 2.2, 1.5, 'Cerveza'),
('Tubo', 1.3, 0.9, 'Cerveza'),
('Caña', 1.1, 0.7, 'Cerveza'),
('Heineken 0,0 1/3', 1.8, 1.2, 'Cerveza'),
('Tinto Casera Vaso Ancho', 1.7, 1.2, 'Tintos'),
('Tinto Casera tubo', 1.3, 0.9, 'Tintos'),
('Rioja', 1.8, 1.1, 'Tintos'),
('Espumoso', 1.8, 1.2, 'Tintos'),
('Rueda', 1.8, 1.2, 'Tintos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `raciones`
--

CREATE TABLE `raciones` (
  `Nombre` varchar(30) DEFAULT NULL,
  `precioMax` float DEFAULT NULL,
  `precioMin` float DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `raciones`
--

INSERT INTO `raciones` (`Nombre`, `precioMax`, `precioMin`, `tipo`) VALUES
('Mcnolo', 4.1, 3.5, 'Raciones'),
('Tendex', 6, 5.2, 'Raciones'),
('Lagrimas', 5.8, 5, 'Raciones'),
('Tex y Kebab', 4.5, 3.8, 'Raciones'),
('Montaditos', 1.6, 1.1, 'Raciones'),
('Croquetas', 5.7, 5, 'Raciones'),
('Alitas', 5.7, 5, 'Raciones'),
('Flamenquines', 4.2, 3.8, 'Raciones'),
('Bravas', 3.7, 3.3, 'Raciones');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
