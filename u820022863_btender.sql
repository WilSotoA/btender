-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2022 a las 17:28:39
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `btender`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bordado`
--

CREATE TABLE `bordado` (
  `Id_bordado` int(11) NOT NULL,
  `Descripcion_bordado` varchar(255) NOT NULL,
  `Nombre_bordado` varchar(255) NOT NULL,
  `Estado_bordado` varchar(10) DEFAULT NULL,
  `Precio_bordado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bordado`
--

INSERT INTO `bordado` (`Id_bordado`, `Descripcion_bordado`, `Nombre_bordado`, `Estado_bordado`, `Precio_bordado`) VALUES
(1, 'BULGATTA', 'bulgatta', '', 2300),
(2, 'FRUTO BENDITO', 'FRUTO BENDITO', '', 1800),
(3, 'NEGRO BURGUER', 'NEGRO BURGUER (CAMISAS)', '', 3700),
(4, 'NEGRO BURGUER', 'NEGRO BURGUER ', '', 3300),
(5, 'ARDUVI', 'ARDUVI', '', 2500),
(6, 'ARDUVI', 'ARDUVI', '', 1700),
(7, 'EL COMISIARIATO', 'EL COMISIARIATO', '', 2600),
(8, 'SALARIO', 'SALARIO', '', 6800),
(9, 'PLATANO VERDE', 'PLATANO VERDE', '', 4000),
(10, 'MAC CORMIK', 'MAC CORMIK', '', 4900),
(11, 'VOLCANO', 'VOLCANO', '', 4700),
(12, 'CAFE DEL MAR', 'CAFE DEL MAR', '', 3900),
(13, 'BACANAL', 'BACANAL', '', 2800),
(14, 'PICANA', 'PICANA', '', 7400),
(15, 'PAL  CIELO', 'PAL CIELO', '', 2000),
(16, 'BACANAL', 'BACANAL', '', 2400),
(17, 'DANIELS', 'DANIELS', '', 3000),
(18, 'LETRA U', 'LETRA U', '', 2000),
(19, 'CLANDESTINO', 'LAGARTIJA', '', 3100),
(20, 'CLANDESTINO', 'COMIDA PERUANA', '', 5600),
(21, 'CLANDESTINO', 'CLANDESTINO', '', 2800),
(22, 'AZZURRO', 'AZZURRO', '', 3400),
(23, 'DERLI', 'DLORENZA', '', 4200),
(24, 'WOM', 'WOM', '', 1700),
(25, 'GALILLEO', 'GALILLEO', '', 2000),
(26, 'PLATANO VERDE', 'PLATANO VERDE', '', 4000),
(27, 'LO MEJOR DE LO MEJOR', 'LO MEJOR DE LO MEJOR', '', 2500),
(28, 'LOGO M', 'LOGO M', '', 1800),
(29, 'KANALOA', 'KANALOA (GORRA)', '', 2600),
(30, 'KANALOA', 'KANALOA (POLOS)', '', 2500),
(31, 'MASA ARABESCO', 'MASA ARABESCO', '', 4000),
(32, 'MUITO', 'MUITO (GORRAS)', '', 2400),
(33, 'KALENTAOS', 'KALENTAOS', '', 2200),
(34, 'ORQUIDEAS', 'ORQUIDEAS', '', 14500),
(35, 'CINCUENTA DINERS', 'CINCUENTA DINERS', '', 3100),
(36, 'BARU PLAYA', 'BARU PLAYA', '', 3600),
(37, 'OLLA PARRILLA', 'OLLA PARRILLA', '', 3200),
(38, '', 'PARCHES VARIOS', '', 3300),
(39, 'MARKCORMIC ', 'MARKCORMIC', '', 4900),
(40, '', 'CARICATURAS (PARCHES)', '', 3300),
(41, 'JESUS ACOSTA', 'JESUS ACOSTA', '', 5000),
(42, 'B-TENDER', 'B-TENDER', '', 2000),
(43, 'GENESIS', 'GENESIS', '', 3500),
(44, 'MARTINI', 'MARTINI GRANDE', '', 3300),
(45, 'MARTINI', 'MARTINI PEQUENO', '', 2300),
(46, 'BULGATTA', 'bulgatta', '', 2300),
(47, 'MICO', 'MICO', '', 8100),
(48, 'VS INGENIERIA', 'VS INGENIERIA', '', 3600),
(49, '400 CONEJOS', '400 CONEJOS', ' ', 3600),
(50, 'MILI ', 'MILI   ', 'D', 2000),
(51, 'CLANDESTINO', 'LAGARTIJA', 'D', 3100),
(52, 'CLANDESTINO', 'COMIDA PERUANA', 'D', 5600),
(53, 'CLANDESTINO', 'CLANDESTINO', 'D', 2800),
(54, 'PAPI BURGUER', 'PAPI BURGUER', 'D', 9800),
(55, 'LEON', 'LEON', 'D', 3900),
(56, 'VICTORS KAFE', 'VICTORS KAFE', 'D', 2800),
(57, 'MI CAFETAL ', 'MI CAFETAL', 'A', 2200),
(58, 'MI CAFETAL ', 'MI CAFETAL', 'D', 2700),
(59, 'ELECTIVA', 'ELECTIVA', 'D', 1800),
(60, 'VVC', 'VVC TERRAZA', 'D', 8100),
(61, 'RENE', 'RENE', 'D', 2000),
(62, 'MEXOLOGY', 'MEXOLOGY', 'D', 2900),
(63, 'MEXOLOGY', 'MI CEVICHE', 'D', 3500),
(64, 'ELECTIVA', 'ELECTIVA', 'D', 1800),
(65, 'CAFE DEL MAR', 'CAFE DEL MAR Y CORONA', 'D', 6200),
(66, 'FELIX SOTO', 'FELIX SOTO', 'D', 2900);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confeccion`
--

CREATE TABLE `confeccion` (
  `Id_confeccion` int(11) NOT NULL,
  `Descripcion_confeccion` varchar(255) NOT NULL,
  `Valor_confeccion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `confeccion`
--

INSERT INTO `confeccion` (`Id_confeccion`, `Descripcion_confeccion`, `Valor_confeccion`) VALUES
(1, 'Delantal basico', 2500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cortedigital`
--

CREATE TABLE `cortedigital` (
  `Id_cortedigital` int(11) NOT NULL,
  `Descripcion_cortedigital` varchar(255) NOT NULL,
  `Valor_cortedigital` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cortedigital`
--

INSERT INTO `cortedigital` (`Id_cortedigital`, `Descripcion_cortedigital`, `Valor_cortedigital`) VALUES
(1, 'pequena', 1600),
(2, 'mediana', 2000),
(3, 'grande', 3000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cortemanual`
--

CREATE TABLE `cortemanual` (
  `Codigo` int(11) NOT NULL,
  `Media_ancho` decimal(10,1) NOT NULL,
  `Media_largo` int(11) NOT NULL,
  `Valor_uni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cortemanual`
--

INSERT INTO `cortemanual` (`Codigo`, `Media_ancho`, `Media_largo`, `Valor_uni`) VALUES
(1, '2.4', 55, 700),
(2, '1.9', 65, 700),
(3, '1.9', 85, 700),
(4, '36.0', 21, 900),
(5, '2.4', 85, 700);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costos`
--

CREATE TABLE `costos` (
  `Id_costos` int(11) NOT NULL,
  `Descripcion_costos` text NOT NULL,
  `Fecha` date NOT NULL,
  `Cliente` varchar(255) NOT NULL,
  `Cotizacion` int(11) NOT NULL,
  `CIF` int(11) NOT NULL,
  `Total_bruto` bigint(20) NOT NULL,
  `Subtotal` bigint(20) NOT NULL,
  `Total_impuesto` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cueros`
--

CREATE TABLE `cueros` (
  `Id_cuero` int(11) NOT NULL,
  `Descripcion_cuero` text NOT NULL,
  `Proveedor` varchar(255) NOT NULL,
  `Valor_uni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cueros`
--

INSERT INTO `cueros` (`Id_cuero`, `Descripcion_cuero`, `Proveedor`, `Valor_uni`) VALUES
(1, 'BLAZER MIEL COGNAC', 'MODA PIEL', 679),
(2, 'TERMINADO EN MONTEQUIU NEGRO', 'MODA PIEL\r\n', 679),
(3, 'BLAZER COGNAC &amp; KAMEL', 'MODA PIEL\r\n', 679),
(4, 'LEXUS NEGRO', 'ROCA PIEL\r\n', 690),
(5, 'SHERATON NEGRO', 'ROCA PIEL\r\n', 773),
(6, 'BADANA NEGRA', 'MODA PIEL', 337),
(7, 'BLAZER AZUL', 'MODA PIEL\r\n', 679),
(8, 'CUERO VAQUETA TALA', 'RAAL\r\n', 549),
(9, 'MONTEQUIU NEGRO', 'MODA PIEL\r\n', 679),
(10, 'CICLON NEGRO', 'MODA PIEL', 699),
(11, 'BLAZER MIEL CLARO', 'MODA PIEL', 679),
(12, 'CICLON CAFE', 'MODA PIEL', 699),
(13, 'CICLON COGNAC', 'MODA PIEL', 679),
(14, 'CUERO DE CONFECCION', 'RAAL', 893),
(15, 'CUERO ENCERADO', 'EDILME', 750),
(16, 'CUERO', 'CUERO SAS', 2400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesbordado`
--

CREATE TABLE `detallesbordado` (
  `Id_detabordado` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `BORDADO` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesconfeccion`
--

CREATE TABLE `detallesconfeccion` (
  `Id_detaconfeccion` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `CONFECCION` varchar(255) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallescortedigital`
--

CREATE TABLE `detallescortedigital` (
  `Id_detacortedigital` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `CORTEDIGITAL` varchar(255) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,3) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallescortemanual`
--

CREATE TABLE `detallescortemanual` (
  `Id_detacortemanual` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `CORTEMANUAL` int(11) NOT NULL,
  `Ancho` decimal(10,2) NOT NULL,
  `Largo` int(11) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallescuero`
--

CREATE TABLE `detallescuero` (
  `Id_detacuero` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `CUERO` varchar(255) NOT NULL,
  `Precio` int(11) NOT NULL,
  `TROQUEL` varchar(255) NOT NULL,
  `DCM` decimal(10,2) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesentretelado`
--

CREATE TABLE `detallesentretelado` (
  `Id_detaentretelado` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `ENTRETELADO` varchar(255) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesinsumos`
--

CREATE TABLE `detallesinsumos` (
  `Id_detainsumos` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `INSUMO` varchar(255) NOT NULL,
  `Proveedor` varchar(255) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleslaser`
--

CREATE TABLE `detalleslaser` (
  `Id_detalaser` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `LASER` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallessublimacion`
--

CREATE TABLE `detallessublimacion` (
  `Id_detatela` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `SUBLIMACION` varchar(255) NOT NULL,
  `Metro` int(11) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallestela`
--

CREATE TABLE `detallestela` (
  `Id_detatela` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `TELA` varchar(255) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesterminacion`
--

CREATE TABLE `detallesterminacion` (
  `Id_detaterminacion` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `TERMINACION` varchar(255) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatempbordado`
--

CREATE TABLE `detatempbordado` (
  `Id_tempbordado` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatempconfeccion`
--

CREATE TABLE `detatempconfeccion` (
  `Id_tempconfeccion` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatempcortedigital`
--

CREATE TABLE `detatempcortedigital` (
  `Id_tempcortedigital` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatempcortemanual`
--

CREATE TABLE `detatempcortemanual` (
  `Id_tempcortemanual` int(11) NOT NULL,
  `Codigo` int(11) NOT NULL,
  `Media_ancho` decimal(10,2) NOT NULL,
  `Media_largo` int(11) NOT NULL,
  `Valor_uni` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatempcuero`
--

CREATE TABLE `detatempcuero` (
  `Id_tempcuero` int(11) NOT NULL,
  `Descripcion_cuero` text NOT NULL,
  `Precio_cuero` int(11) NOT NULL,
  `Troquel` varchar(255) NOT NULL,
  `dcm` decimal(10,2) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatempentretelado`
--

CREATE TABLE `detatempentretelado` (
  `Id_tempentretelado` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatempinsumos`
--

CREATE TABLE `detatempinsumos` (
  `Id_tempinsumo` int(11) NOT NULL,
  `Descripcion_insumo` varchar(255) NOT NULL,
  `proveedor` varchar(255) NOT NULL,
  `Valor_uni` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatemplaser`
--

CREATE TABLE `detatemplaser` (
  `Id_templaser` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatempsublimacion`
--

CREATE TABLE `detatempsublimacion` (
  `Id_tempsublimacion` int(11) NOT NULL,
  `Proveedor_sublimacion` varchar(255) NOT NULL,
  `Precio_metro` int(11) NOT NULL,
  `Valor_uni` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatemptelas`
--

CREATE TABLE `detatemptelas` (
  `Id_temptela` int(11) NOT NULL,
  `Nombre_tela` text NOT NULL,
  `Precio_tela` int(11) NOT NULL,
  `Consumo` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detatempterminacion`
--

CREATE TABLE `detatempterminacion` (
  `Id_tempterminacion` int(11) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entretelado`
--

CREATE TABLE `entretelado` (
  `Id_entretelado` int(11) NOT NULL,
  `Descripcion_entretelado` varchar(255) NOT NULL,
  `Valor_entretelado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entretelado`
--

INSERT INTO `entretelado` (`Id_entretelado`, `Descripcion_entretelado`, `Valor_entretelado`) VALUES
(1, 'Delantal grande', 6000),
(2, 'Delantal medio', 2600),
(3, '1 bolsillo', 1300),
(4, '2 bolsillos', 2600),
(5, '1 bolsillo de 36x21', 2600),
(6, 'pieza cuello', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestos`
--

CREATE TABLE `impuestos` (
  `Id_impuesto` int(11) NOT NULL,
  `Impuesto` varchar(255) NOT NULL,
  `Valor_impuesto` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `impuestos`
--

INSERT INTO `impuestos` (`Id_impuesto`, `Impuesto`, `Valor_impuesto`) VALUES
(1, 'ICA', '0.005'),
(2, 'RETE', '0.025'),
(3, 'IVA', '0.190');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestoscostos`
--

CREATE TABLE `impuestoscostos` (
  `Id_detaimpuestos` int(11) NOT NULL,
  `ID_COSTOS` int(11) NOT NULL,
  `Impuestos` varchar(30) NOT NULL,
  `Valor_impuesto` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `Id_insumo` int(11) NOT NULL,
  `Descripcion_insumo` varchar(255) NOT NULL,
  `Proveedor_insumo` varchar(255) NOT NULL,
  `Valor_uni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`Id_insumo`, `Descripcion_insumo`, `Proveedor_insumo`, `Valor_uni`) VALUES
(1, 'MOSQUETON 2037-25 PL', 'SUS HERRAJES', 2533),
(2, 'MEDIA LUNA 1\" CALIBRE 8', 'SUS HERRAJES', 164),
(3, 'TRABILLA 12 CALIBRE 8', 'SUS HERRAJES', 218),
(4, 'MILLARES REMACHE 3 8 INOXIDABLE', 'SUS HERRAJES', 47),
(6, 'HEBILLA 2 PLATA', 'MIL HERRAJES', 999),
(9, 'DIJE ZAMAC', 'MIL HERRAJES', 650),
(10, 'CINTA FAYA UNICOLOR', 'MIL HERRAJES', 200),
(11, 'OJALETE GRANDE PABONADO', 'UNIVERSAL DEL HERRAJE', 530),
(12, 'ARGOLLA 04-006-4 PL', 'SUS HERRAJES', 1950),
(13, 'GRUESAS OJALETE 1/2 PL INOXIDABLE', 'SUS HERRAJES', 215),
(14, 'BROCHE CAZUELA 19 LINEAS INOXIDABLE PL', 'SUS HERRAJES', 465),
(15, 'TENSOR PLASTICO', 'MIL HERRAJES', 199),
(16, 'TENSOR PABONADO', 'MIL HERRAJES', 364),
(17, 'OJALETE 1/8 INOXIDABLE PL', 'SUS HERRAJES', 43),
(18, 'REMACHE # 8 INOXIDABLE NIQUEL', 'SUS HERRAJES', 47);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laser`
--

CREATE TABLE `laser` (
  `Id_laser` int(11) NOT NULL,
  `Descripcion_laser` varchar(255) DEFAULT NULL,
  `Nombre_laser` varchar(255) NOT NULL,
  `Valor_laser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `laser`
--

INSERT INTO `laser` (`Id_laser`, `Descripcion_laser`, `Nombre_laser`, `Valor_laser`) VALUES
(1, 'FOUR SEASON', 'FOUR SEASON', 1800),
(2, 'B-TENDER', 'INF B-TENDER', 650),
(3, 'S2', 'BOLAS S2', 900),
(4, 'S2', 'LOGO S2', 2200),
(5, 'B-TENDER', 'BOLAS B-TENDER', 1050),
(6, 'B-TENDER', 'B-TENDER', 1400),
(7, 'FRUTO BENDITO', 'FRUTO BENDITO', 7500),
(8, 'DON JULIO', 'DON JULIO', 1400),
(9, 'ABEJA', 'ABEJA', 4500),
(10, 'B-TENDER', 'CUELLOS', 1500),
(11, 'B-TENDER', 'BOLSILLOS', 750),
(12, 'B-TENDER', 'DELANTALES', 9000),
(13, 'B-TENDER', 'MOLDES', 6000),
(14, 'B-TENDER', 'BOLAS', 2100),
(15, 'B-TENDER', 'BOLSILLOS GRANDES', 1400),
(16, 'COCTAILS LOVE', 'COCTAILS LOVE', 1000),
(17, 'GATO', 'GATO', 2500),
(18, 'B-TENDER', 'BOLAS', 350),
(19, 'ARBOL', 'BOLSILLOS ARBOL', 2200),
(20, 'B-TENDER', 'PLANTILLA', 6000),
(21, 'FILO', 'FILO', 1200),
(22, 'HECTOR', 'BOLAS', 700),
(23, 'COCTAILS WITN', 'COCTAILSWITN', 600),
(24, 'TOFFE', 'TOFFE', 10000),
(25, 'HECTOR', 'HECTOR', 350),
(26, 'BAZUICO', 'BAZUICO', 4250),
(27, 'B-TENDER', 'BOLAS', 350),
(28, 'DEL PET', 'DEL PET', 2000),
(29, 'SEBASTIAN', 'SEBASTIAN', 500),
(30, '', 'BOLAS 39', 350),
(31, '', 'BOLSILLOS', 350),
(32, '', 'CORTE 1', 6000),
(33, '', 'CORTE2', 6000),
(34, '', 'USH', 1400),
(35, 'MARRANITO', 'MARRANITO', 2800),
(36, 'AMORES', 'AMORES', 1350),
(37, 'CHANCHITOS', 'CHANCHITOS', 2500),
(38, 'LOS ANDES', 'LOS ANDES', 2000),
(39, 'AMORES ', 'BOLSILLOS', 2000),
(40, 'B-TENDER', 'BOLAS', 350),
(41, 'VACA NOSTRA', 'VACA NOSTRA - JULIAN- CALAVERA', 2350),
(42, 'B-TENDER', 'INF B-TENDER  - CALAVERA', 1000),
(43, 'B-TENDER', 'BOLSILLO B-T , BOLSILLO JULIAN, BOLSILLO CALAVERA', 1650),
(44, 'B-TENDER', 'CARTULINA CORTE', 4000),
(45, 'B-TENDER', 'BOLAS', 350),
(46, 'QUINTA K', 'QUINTAK', 1000),
(47, 'AMORES', 'AMORES', 2000),
(48, 'LOBO FEROZ', 'LOBO FEROZ', 1500),
(49, 'JOGGER', 'BOLSILLOS', 3000),
(50, 'B-TENDER', 'BOLAS', 350),
(51, 'TIERRA', 'TIERRA', 1000),
(52, 'GASTROBOR', 'GASTROBOR', 1000),
(53, 'JAGER', 'JAGER', 3000),
(54, 'NOMBRES', 'NOMBRES', 400),
(55, 'LOBO ', 'LOBO ', 1500),
(56, 'ARABESCO', 'ARABESCO', 7500),
(57, 'AMBROSIA', 'AMBROSIA', 1400),
(58, 'AMBROSIA', 'BOLAS', 2000),
(59, 'B-TENDER', 'BOLAS', 350),
(60, 'AFLORE', 'AFLORE', 1650),
(61, 'JUNGLE JOY', 'JUNGLE JOY', 2500),
(62, 'STEFY', 'STEFY', 350),
(63, 'BACANAL', 'PORTA VASOS', 1200),
(64, 'CAPO', 'CAPO', 350),
(65, 'MEAT MARKET', 'BOLAS', 500),
(66, 'CUCHILLOS ASADOS', 'CUCHILLOS ASADOS', 1200),
(67, 'SANTANDERIANA', 'SANTANDERIANA', 600),
(68, 'MEAT MARKET', 'LOGO MEAT', 1000),
(69, 'B-TENDER', 'CORTE MOLDES', 5000),
(70, 'B-TENDER', 'CORTE MOLDES 2', 6000),
(71, 'B-TENDER', 'BOLAS', 350),
(72, 'LOGO T', 'LOGO T', 1200),
(73, 'HARRY SASSON', 'HARRY SASSON', 1100),
(74, 'B-TENDER', 'BOLAS', 350),
(75, 'MEAT MARKET', 'MEAT MARKET', 1000),
(76, 'B-TENDER', 'BOLAS', 350),
(77, 'ISHTANA', 'ISHTANA', 550),
(78, 'HUERTA', 'HUERTA', 1200),
(79, 'STORIA DE AMOR', 'BOLAS', 750),
(80, 'STORIA DE AMOR', 'LOGOS', 2300),
(81, 'MEAT MARKET', 'MEAT MARKET 2', 1000),
(82, 'B-TENDER', 'BOLAS', 350),
(83, 'PATRON ', 'PATRON', 1600),
(84, 'GIANNIS', 'PORTA VASOS', 850),
(85, 'CLANDESTINO', 'PORTA VASOS', 700),
(86, 'B-TENDER', 'BOLAS', 350),
(87, 'TEX-MEX', 'LOGOS', 1400),
(88, 'CASALINS', 'CASALINS', 2500),
(89, 'MAR DE FRADES', 'MAR DE FRADES', 2000),
(90, 'B-TENDER', 'BOLAS', 350),
(91, 'SIMBOLO', 'BOLAS', 700),
(92, 'LLORENTE', 'LLORENTE', 650),
(93, 'MUNDO CARNES', 'MUNDO CARNES', 1150),
(94, 'PARRILLERO', 'PARRILLERO', 1150),
(95, 'B-TENDER', 'MOLDES', 1500),
(96, 'GIANNIS', 'LOGOS ', 1000),
(97, 'BARTENDER', 'LOGOS COCTELERA', 1200),
(98, 'BARTENDER', 'NOMBRES', 350),
(99, 'B-TENDER', 'BOLAS', 350),
(100, 'CHIVAS', 'LOGO', 450),
(101, 'B-TENDER', 'PLANTILLA SENA', 1500),
(103, 'KANALOA', 'LOGOS', 700),
(104, 'CAFE CLUB', 'LOGOS', 1100),
(105, 'B-TENDER', 'BOLAS', 350),
(106, 'STAGE', 'BOLAS', 1250),
(107, 'B-TENDER', 'INF. B-TENDER', 500),
(108, 'STAGE', 'LOGO GRANDE', 1000),
(109, 'STAGE', 'LOGO PEQUE?O', 500),
(110, 'TANQUERAY', 'TANQUERAY', 350),
(111, 'PERONI', 'PERONI', 1100),
(112, 'STORIA DE AMOR', 'BOLAS', 850),
(113, 'STORIA DE AMOR', 'LOGO', 2100),
(114, 'B-TENDER', 'CORTE CARTULINA', 6000),
(115, 'B-TENDER', 'BOLAS', 350),
(116, 'OLD WEST', 'BOLAS', 400),
(117, 'FUEGO', 'INFO. FUEGO', 950),
(118, 'BVGATTA', 'BVLGATTA', 500),
(119, 'GOURMET JAVI', 'DELANLID JAVI', 3000),
(120, 'OLLA PARRILLA', 'OLLA PARRILLA', 900),
(121, 'PORTAL', 'PORTAL', 1300),
(122, 'MEAT MARKET', 'MEAT MARKET', 1300),
(123, 'DRUPA', 'DRUPA', 1200),
(124, 'B-TENDER', 'BOLAS', 350),
(125, 'ISHTANA', 'ISHTANA,BOLAS S2, JULIO', 4050),
(126, 'THE SINGLETON', 'SINGLETON PEZ', 1900),
(127, 'THE SINGLETON', 'SINGLETON ', 1100),
(128, 'THE SINGLETON', 'BOLAS', 650),
(129, 'GREY GOOSE', 'BOLSILLOS', 1000),
(130, 'NOA', 'LOGO', 700),
(131, 'B-TENDER', 'INF. B-TENDER', 500),
(132, 'NOA', 'TIGRE', 1300),
(133, 'NOA', 'BOLAS TIGRES', 900),
(134, 'DIEGO', 'LOGO DIEGO BAR MANAGER', 500),
(135, 'B-TENDER', 'BOLSILLOS', 400),
(136, 'TONIC', 'BOLAS', 1400),
(137, 'B-TENDER', 'INF. B-TENDER', 500),
(138, 'TONIC', 'TONIC', 900),
(139, 'MEAT MARKET', 'BOLAS', 700),
(140, 'THE SINGLETON', 'PORTA VASOS', 300),
(141, 'B-TENDER', 'BOLSILLOS', 350),
(142, 'B-TENDER', 'MOLDES', 3000),
(143, 'NOA', 'LOGO', 700),
(144, 'NOA ', 'PORTA VASOS TIGRE', 1000),
(145, 'NOA', 'PORTA VASOS NOA', 600),
(146, 'OLD PARR', 'DELANTARES', 3000),
(147, 'OLD PARR', 'BOLAS', 500),
(148, 'CENTAL', 'BOLAS', 450),
(149, 'CENTRAL', 'LOGO', 700),
(150, 'CENTRAL', 'AMERICAN EXPRESS', 450),
(151, 'W BOGOTA', 'BOLAS', 450),
(152, 'W BOGOTA', 'LOGOS', 800),
(153, 'MEAT MARKET', 'BOLAS ', 700),
(154, 'TONIC', 'BOLAS', 1400),
(155, 'SENA', 'NOMBRES ', 850),
(156, 'PINA', 'PINA', 1400),
(157, 'B-TENDER', 'LOGO B-TENDER APLIQUES SINTETICO', 708),
(158, 'ROCA', 'ROCA', 1300),
(159, 'TIERRA', 'TIERRA 2', 1300),
(160, 'THE BUFFALA', 'BUFFALA', 2100),
(161, 'ROCA- TIERRA', 'ARABESCO', 7500),
(162, 'SENA', 'NOMBRES, COCKTAIL TIME, CARAS DE LEON', 3700),
(163, 'B-TENDER', 'MOLDES', 4000),
(164, 'B-TENDER', 'CORTE DELANTAL', 1000),
(165, 'NOA', 'LOGOS', 700),
(166, 'TANQUERAY', 'BOLSILLOS', 1000),
(167, 'NOA', 'CARA TIGRE', 1300),
(168, 'B-TENDER', 'INF. B-TENDER', 600),
(169, 'STIZOLLI', 'CORTE AZUL', 150),
(170, 'STIZOLLI', 'CORTE CARAMELO CLARO', 150),
(171, 'B-TENDER', 'CARTULINAS', 5350),
(172, 'STORIA DE AMOR', 'LOGO S2', 2300),
(173, 'STORIA DE AMOR', 'BOLAS', 950),
(174, 'TANQUERAY', 'LOGO', 400),
(175, 'JULIO', 'TORTUGA, JULIO BAR MANAGER', 2400),
(176, 'B-TENDER', 'BOLAS', 350),
(177, 'TORINA', 'LOGO', 1450),
(178, '', 'CORTE AZUL', 150),
(179, 'NOA', 'PORTA VASOS', 500),
(180, 'NOA', 'PORTA VASOS TIGRE', 800),
(181, 'CENTRAL', 'PORTA VASOS', 500),
(182, 'STIZOLLI', 'PORTA VASOS', 500),
(183, 'CENTRAL', 'PORTA VASOS GEOMETRICO', 2000),
(184, 'B-TENDER', 'MOLDES', 6000),
(185, 'B-TENDER', 'BOLAS', 350),
(186, 'CIENCIA Y CAFE', 'LOGO Y BOLAS B-TENDER', 4450),
(187, 'NOA', 'PORTA CUENTAS NOA, TIGRE', 2500),
(188, 'KARBON Y SON', 'PORTA CUENTAS', 1000),
(189, 'SENA', 'BARISTA', 1400),
(190, 'DAMIAN', 'CARRO, BUHO, MONO, MARTINO', 1700),
(191, 'MEAT MARKET', 'BOLAS Y LOGO', 700),
(192, 'DAMIAN', 'BOLAS PALMERAS', 700),
(193, 'DAMIAN', 'NOMBRES, VARIOS', 380),
(194, 'DAMIAN', 'INF. B-TENDER, BOLAS B-T, BOLAS ODA', 4700),
(195, 'DAMIAN', 'D.KAROL', 1800),
(196, '', 'CUELLOS', 600),
(197, 'ALMA NOBLE ', 'BOLAS', 600),
(198, 'ALMA NOBLE ', 'DELANTARES', 4000),
(199, 'NUBIA', 'CORTE MATERIAL NEGRO', 2375),
(200, 'SANTA LENA', 'DELANTAL', 3800),
(201, 'MEAT MARKET', 'BOLAS Y CUELLOS', 2000),
(202, 'VOLCANO', 'LOGO', 1300),
(203, 'VOLCANO ', 'BOLAS', 700),
(204, 'BACARDI', 'BACARDI', 800),
(205, 'CAFE DEL MAR', 'LOGO', 1500),
(206, 'CAFE MAGDALENA', 'CAFE MAGDALENA', 1000),
(207, 'B-TENDER', 'BOLAS', 350),
(208, 'PAPARAZZI', 'PORTA VASOS', 650),
(209, 'NUBIA', 'CORTE DELANTARES AZUL SINTETICO', 1750),
(210, '', 'CARTULINAS CORTES', 9000),
(211, 'PROEZA', 'LOGOS', 800),
(212, 'PROEZA', 'BOLSILLOS', 2500),
(213, '', 'CORTE BOLAS Y TIRAS NEGRAS', 5000),
(214, 'NUBIA', 'BOLAS FLOR', 750),
(215, 'GIANNIS', 'BOLAS Y LOGOS', 3000),
(216, '', 'CORTE Y GRABADO DE TELA AZUL', 950),
(217, '', 'CUELLO, RENZO, B-TENDER', 3000),
(218, 'VOLCANO', 'DELANTALES GRABADOS', 700),
(219, 'B-TENDER', 'BOLAS', 350),
(220, 'MARRIOT', 'BOLAS Y LOGOS', 750),
(221, 'STAGE', 'LOGO PEQUENO', 500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

CREATE TABLE `procesos` (
  `Id_proceso` int(11) NOT NULL,
  `Nombre_proceso` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `procesos`
--

INSERT INTO `procesos` (`Id_proceso`, `Nombre_proceso`) VALUES
(1, 'corte manual'),
(2, 'confeccion'),
(3, 'sublimacion'),
(4, 'entretelado'),
(5, 'corte digital'),
(6, 'laser'),
(7, 'bordado'),
(8, 'terminacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sublimacion`
--

CREATE TABLE `sublimacion` (
  `Id_sublimacion` int(11) NOT NULL,
  `Proveedores` varchar(255) NOT NULL,
  `Metro` int(11) NOT NULL,
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sublimacion`
--

INSERT INTO `sublimacion` (`Id_sublimacion`, `Proveedores`, `Metro`, `Precio`) VALUES
(1, 'insugrafikas', 1, 15000),
(2, 'insugrafikas iva', 1, 18000),
(3, 'stamprint', 1, 22000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telas`
--

CREATE TABLE `telas` (
  `Id_tela` int(11) NOT NULL,
  `Descripcion_tela` text NOT NULL,
  `Proveedor` varchar(255) NOT NULL,
  `Valor_uni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `telas`
--

INSERT INTO `telas` (`Id_tela`, `Descripcion_tela`, `Proveedor`, `Valor_uni`) VALUES
(1, 'Universal', 'LAFAYETE', 16449),
(2, 'SEGAL', 'LAFAYETTE', 20873),
(3, 'ALESSIO', 'LAFAYETTE', 18037),
(4, 'T180', 'LAFAYETTE', 16941),
(5, 'SUPER 8', 'TEXTILERA', 19327),
(6, 'ENTRE TELA', 'COSTURITAS', 2700),
(7, 'ORION', 'TEJICOLOR', 9664),
(8, 'DINAMICA', 'TEXTILES MARGARETEX', 13650),
(9, 'SHEETING', 'TEXTILERA', 10504),
(10, 'GAB TEMPO', 'TEXTILERA', 16806),
(11, 'SHEETING', 'TEXTILERA', 10504),
(12, 'GAB TEMPO', 'TEXTILERA', 16806),
(13, 'POLUX', 'LAFAYETTE', 16865),
(15, 'VALENCIA', 'LAFAYETTE', 20949),
(16, 'DRILL FORZA', 'LAFAYETTE', 17584),
(17, 'EVEREST', 'TEXTILERA', 19327),
(18, 'MICHIGAN', 'TEXTILERA', 13025);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terminacion`
--

CREATE TABLE `terminacion` (
  `Id_terminacion` int(11) NOT NULL,
  `Descripcion_terminacion` varchar(255) NOT NULL,
  `Valor_terminacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `terminacion`
--

INSERT INTO `terminacion` (`Id_terminacion`, `Descripcion_terminacion`, `Valor_terminacion`) VALUES
(1, 'planchado y empaque', 400),
(2, 'remachar', 50),
(3, 'perforar', 50),
(4, 'poner ojaletes', 100),
(5, 'marcar', 10),
(6, 'pintar', 500),
(7, 'andrey', 234);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `troquel`
--

CREATE TABLE `troquel` (
  `Id_troquel` int(11) NOT NULL,
  `Nombre_troquel` varchar(255) NOT NULL,
  `DCM` decimal(10,2) NOT NULL,
  `Img_troquel` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `troquel`
--

INSERT INTO `troquel` (`Id_troquel`, `Nombre_troquel`, `DCM`, `Img_troquel`) VALUES
(1, 'TROQUEL 1', '0.74', 0x89504e470d0a1a0a0000000d49484452000000a5000000210806000000b80a6b14000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000048649444154785eed9cdb2fe46718c7fb87ec4daf5c886d744bc53a8dbd5017ceb564ba76cbd8b5aa89b36991102e08a14ecb7051d1681db6d60cc312b6d78235e39cedd6a14b8b12e7631cbe9de7cd6f26646796c6fc12499f4ff2cdba78f6e6cd27efc1ef797c8473ececec607272127d7d7d686f6f875eafe770ec9e8e8e0e0c0e0e6275755532ef221629a960606000555555484d4d15a9adad15a9a9a9417575358763b7d4d7d70b39878787313f3f8fc3c343c9c473520e0d0da1acac0c414141707676869f9f9f9051a3d1a0a2a202e5e5e51c8e5d423e656666223e3e1e595959e2545e5b5b934c3c2725599b98980817171738383820202040146bb55ab4b4b4a0b9b999c3b14b5a5b5b91929202777777787b7ba3b0b0100b0b0b92899294676767686a6a4272723242424210191989bcbc3c4c4c4c883ba6d16884c160e070ec92d1d151141414c0d5d5154e4e4e62d79c9b9b13421216296937a4adb5aeae0efdfdfde29c6718b9e8eaea427878383c3d3d91939373c1378b94b4a5d29d92ee90bdbdbd98999911050c2307f40a374b999b9b6b5bcad2d25254565642a7d389639bf930272727d8dadac2d2df7fe18fb76ff1fb9b3778f7e73b6c6c6c8a35656c436f95b0b0b0ab49492f23fa0f749f643eccfefe3ec6468de8d469a179568567e51578ded20aa3c188e3e363a98ab1064b2913f4b1a1f9979fa14e4dc1974181b81f128aefd56ae8b43a1c1c1c48558c35584a99a05ff87e979e8ebbae9fe3e35bb7f0e96d27442995a8abd5607b7b5baa62acc152ca041dd19aea6a28ef47e0ce27b7e1f6d91d443f7c8886fa1fb1bbbb2b5531d660296582d66de4f508ca4a4a111a180085c75dc4a954f8f5792b8e8e8ea42ac61a2ca58cd063a7a7bb1bf18f63f185af2fbe7d1a87aece4ef132676cc352ca083d687a5fbec4374f1ec3ffde3d2165b75ecf525e024b2923747724099fc6aa78a7fc0fb094326296324e15033f850209714fa0efe860292f81a59491bdbd3d216174d40378b9b941f5e811b42f5eb09497c052cac89e69a7ecd4e9f0f583afe02949a93349797a7a2a5530d66029e5c2b46eff2c2fe3b757aff0434909f24d8bfb534303a6a7a6c49a32b66129e5c2b46ecb4b4b308c8ca0b7a747bcc28d0603363736a402c6162ca58c6cacaf6371711173b3b3a27b7a73933b84aec295a4a426df12d311445252ebda94e908622e873e35d2d71bfa0ece9d4157871c23293d3c3c6c37f9363636a2a8a8484c33f6988ea2f3ede90c636fa8c937383858cc84d138c4ace9a431639192dad3697ab1b8b8588c40b6b5b589465fda31c7c6c6c45c05e7fdd0da588bb5daff7bcc6b435ed19443606020fcfdfdc5094d572033424a82e4a3733e3b3b1b4aa512111111c8c8c8805aad467a7a3ad2d2d2389c6b853c22a7e8e7d0d05031ce9d949424bc5b37ddcdcd58a4a4c6029a34cbcfcf87afaf2f1c1d1de1e5e5254620e95f0ee7baf1f1f18142a110a3b5149afba66be3f4f4f485ae2a8b94c4caca8a788593bd34661b1d1d2d121313c3e15c3b2a950ab1b1b1888a8a42424282f82b19e3e3e3ef35445f9092616e022c2573e36029991b074bc9dc38584ae68601fc0b307566333f3a0c980000000049454e44ae426082),
(2, 'TROQUEL 2', '0.17', 0x89504e470d0a1a0a0000000d4948445200000011000000590806000000d866cffb000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000005c0494441545847ed98694c545714c7f9649a485b93facda455b0c114689b92a008c83a82966157704c41ca92a22c82a2a04ca91464915540110a881b08cc80851050121228942268940f2e805aa1208b8afb9e7fef39c3da71a41ffac1a473929b3799f7eeef9d7bee7df7fecfd1c17f60ef31e4d5ab57181f1fc7b56bd7d0d9d989969616b4b6b6726b6f6fc7f9f3e771e7ce1dbc7cf972b2c72cc8f3e7cf313a3a8aeeee6e1c3f7e1c3b76ec808b8b0b2c2c2c606565c5cdcece0e4e4e4e282828c0e5cb97f1e2c50bbc7efd5a0579f3e60dae5cb982e6e6669c3a750a595959888b8bc3ae5dbb101111c1406af43b2c2c0c191919a8afaf476f6f2feedebdab82104da954223333134949493874e810aaababd9fd9e9e1e7e2b5d6928e7ce9de3fbb9b9b9a8acacc4a54b975410722b2d2d0de1e1e1ec41555515c764f6b8a76c626202c5c5c5fc2c79a7502854108a4774743402030319d6d1d181070f1e70a7b719c58ce2656f6fcfcf33e4d9b367080d0d85bfbf3f0a0b0b71f3e64d7e589351dccccccca0a7a7879d3b77ce40b66fdf8e8080008e7c5f5f1fc749939d3c791296969658b162058f601a4291a7e11c397204d7af5fe7f5a2c90842536e6868883d7bf66821c2b41075d342d4edff0a996f53d208a19d2d3f3f9f77b629a34d9ceecfb6b2b2b2f93de9efefe787c968bfa5f3e5febd7b93ff4c42acaddf0e090e0e46696929777cf8f021febc750ba52525f845ecbb676a6a70f5ea558c8c8ce0c48913b0d604a1b3840e248a497757170a0e1f86a79b3b5ca4ced8bc4986c48444d4d5d5a1b0a010d66238464646888d8d5541e8dc898a8a82af8f0fa277ef469cfc47eebc7ce952486cedb0c1c3036b6d6d61636901dfcd3278babb6199b84790848404158482b75b74767176166f9542bafe5b7c6dfc25962fd3436a720a4a8f1e45e2be7df0f1f6c2061729be3232c447baba3c9ce4e46415848e4b82ac5bb70e76b6369088d3dfcc74257bd1d5d58d7e315b55e565d81ae80fe95a7be87ff6293e58b08021a9a9a9339e440905e0eaea0ad9266f846edbc66d6f740cc68456191e1ac2b192227ce7b5114e127bac34f9069f2c5ac490a4294f38b09191f0f3f3437a7a1a3affe8c4f0f01026ee4fa0e3b75664a7a542e6e10e0fa91352440cf28422a0c01a1b1b432e97cf82cc5a27bdbd7dfcdfe3c78f919f9d81ef655e70b0b284af6c93f0a804c7c4329048240cd93b353b5390ad620874e2d362bb7dfb367e6f6f4348a01fdc1cede1ea284178f00f2816073ebdddc4c4846787a4c83424520c2754a820fa2ebac41aa9adad455cec5e482536f0747284df666f448685422e169795e51a2c5ebc9863b27ffffe19080916f284be1da542899ff7c5c356ac0be3cff52059638e8d6ece906ddc0057b1043ed6fd103a3a3a0c3970e0800a428b8d7486afaf2fe4b172e41eccc14fe2ea2516998d107e6bc5b43b88695fefe0c0902f84a4d05db890879392923203214fb66cd9c24b5b51a5c0af356770b4a80807858ecb162d2b3d1d078520cc177acd4f3ca7afafcf90f8f8f859818d546d05393939b870e1024684561d1e1ec6e0c00006a88940d3f5afc141167dab56ade2e14c7f3b53b34353cc724b7cbdef32a55096a46909121313a301328f6623c5682b3e488d90f76fa3d642b4102d648e6921eaa685a89b16a26e5a88ba6921eaa61142e5402a915175ebc68d1bfcb026a3121955b70c0c0c383b61c8d3a74f111414041f913451358faa9cefb28a8a0a989a9a62c992255c5a9bf624242484b30cf2e4d63cea9112c9d5ab57b396a58c8d21940353ed959423c5c5d3d393df405e9d3d7b160d0d0d686c6cc4e9d3a739d3a25c91347d8d482ea9f4ca1032cabedadadab87c686e6e0e4747479697a4f5a9ea795824958989893c648a1f816904d46f1a42460a9a5215d2f90423c94db5596ad9d9d90c212ff2f2f2e6e4ce7320441d12a91ad55f9b9a9ab8464b3341c3282f2fe746bf2f5ebc38a74a3a07f24f7bf4e811c6c6c6b8664ded9ec8d29f3c79327977c6de09f97706fc0d507eb7ba6c0fa1d50000000049454e44ae426082),
(3, 'TROQUEL 3', '0.26', 0x89504e470d0a1a0a0000000d49484452000000130000008608060000003ffbb13c000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000069a494441546843ed9af94f545714c7e71fc1a63f544923a51a6b6a68835a70ad1d812a5aa3ec5a64554265098bec20208882da448b280ab2ba118c82b8453005115ce382881b608c02aee0b7f77be29b20c358047f30edfb2627336f96cf3b7779f79e73ef35e013eaff087bfbf62ddebc7983d7af5f9bd9ab57afc4f8de924c30fee8c99327e8e8e818d6eedebd8bf6f676797dfcf8b1dc74a80436303080478f1ea1a1a1012525253878f0a0d8810307c4b4f7151515282f2f97d723478ee0c68d1be8eded151025b0172f5ee0d8b163080e0e86a3a323424242b076ed5ab9a6ad59b3462c202000eeeeeeb0b7b787959515c2c2c270f9f2650151067a4518efbc62c50a38393961e7ce9d623b76ec78cf727373111f1f8fa54b97c2d6d616515151b876edda3b948269955a59592930de6d703d0db62b57aea0a6a6069b376f869f9f9fdc90bf63c3d129c3b367cfe40d3d6311366edcf8ee3ee662a5b7b5b5e1f0e1c3c8cccc447575353a3b3b71fffe7d9c3e7d1a065e903c1ad8891327f0e0c1039c3973468a6cb877ef9efc902de6e1e181b4b434b91e4e4f9f3e95a2969595212525455ab5a9a909fbf6edc3f2e5cb61a08bd4c7c0d83d525353b167cf1e9c3a750afbf7efc7ba75ebc606cbcfcf476d6d2d4a4b4b111717373658414181d41b8b1d1b1b3b36d8eeddbb71f2e44981454747ebb061a4c3749805fd87601b366c90ebe1d4d3d383ab57af8e1c969e9e2ed79a7a7b7ac523aabfbf1f376fde141887ed0fc23c3d3d919c9c2cd7547777375a5b5ad1d4d8840135e9f4ab59ecd6ad5b32f67f10c6e9dec7c74766724efb2d2d2d7283bcdc3ce4646f42f3850b68bf7307972e5d92399625b008e31ce8ebeb0b17171764abe92e2e763d567afbc0d9b8100b7f3162434a322aca4a51a78669de64d3a64de630062c142786c0a020584f988089d6d6f872dc38587f351ef63ffc88d90e0e986c6383df162fc6969ccd12dc305430837112a638ed07040662cae4c9b0b7b3c394499330d37e3abcdd3d10b8da0f7653a762b1b33332d333505858889c9c1cd354678275757509ece8d1a3524c5775f71015f9fcaa02980573e7c1cbcd0d41ab7d619c3b1bbede5ec855714661e15e64ab7a3483699eb101bcbdbd11131d835235a9ae0d5e83b92abc9a35633a9c14c8cdd505eb23c25090ff979ac18b9095956d0e63ac40317ef0f2f2426c4c0c2e3637e34079856ac56ca42625222afc0f2c5be4043f1f4f2425c44b3cc2d06aefdebd12b09860835bf3f755abb064892b0af7ec4691aa974ad5396b541058babf08c67973c48202fc11af66efa8a86814151549d062823d7cf85060c78f1f87bfbf3f267d6b0b4f554fa1aabf6ddbba15b5eaf3eaaac398e7f81366cf9c0e7f557f89090988512560c0f29e675a9db16b04a9aef185d538d84eb481ddf7d3049a9d99813ff3b660c12c072c322e4074640472541fe39362564cad35d9350255d7b09e608d6f6dbec1d7e3c763da7753e0eaec046fb7e5f8d971265679b8a97acc921883f566b16b54555561e5ca95aaa801282f2d41767a1a7cbd3cb060ce6c38cc988160151c6fcbcb43956a7506860c452d3e01870e1d92d66468d47ea70d7f37d4a3acb8085b549132d4b054aefe402fce9d3b278f53565696394ceb1ada10949a9a2601735f6f0fbabb3ad1a102633ee0dd5ddd1272b6b6b6caa8c171cfe283aec1868e6783f5f2e54b5cbf7e7d64e3d9bfc1982f30ee1f314c9fea74980eb3241da6c32c4887e9300bd2619f218c0120af3f2fcf76edda25513a9709650173343086a1fc1d1782998c30ea8e8c8cfc3430e603a3f64c2b26f381baba3a29664444040c5c4ea63e06c60a674ccbd7c6c646f19409c9a8167db994ca74878908f379e6aa027bfefcb9ec4030ebf8185852529238c0a484565f5f0f03d7b5fbfafa460563aece44830bed74483617b8db301a587171b1acb86b12d8683d234cab736a4c3076091da6c39474984887994b87897498b974984887994b87894c30c6a75c28cfc8c8902f8693b657376218cf6158d288608cb819cb2f5bb60c090909f205c5e079b0f1d489b6b69d989828db1e5a1e41098c0be0dc5c993f7fbe9cb2d10e15f1cf838d1b815c75e75e1d6fca9c89675f34998ac92f1c1c1cc4bbdbb76f9b36ff2e5ebc28c6f7cdcdcd387bf6ac04c66c28662866d1367778d89af4ca6834223c3c5c4ee18486869a8c6785782e889908eb8bd5c22d13964093c0b8c3c3d34a4cac98eaf120c7506372caa3274cb8b66fdf2e39d350098c4905dd651f6232cab48fc69c48335e73d78cf9d2f9f3e7c581a11218d3156ed1f2a80e1b8375f821e3f607ff335402fb54fa5c61c03ffeedafcc5bcbe02c0000000049454e44ae426082),
(4, 'TROQUEL 4', '0.28', 0x89504e470d0a1a0a0000000d49484452000000180000005c080600000074be7582000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000064b494441546843ed99694c545714c7e79b1f9a36a9894d5ca2d5a4d256ad244d6d6352a536141349252931b1290a15103eb854504450410cc8224b949a6822954d3659a4295b05c525820b7c01518c1b0c142a9b202001fe7dffc35c9d19a9e320b6219993dcf01ef3defddd7bce7df79e4587b72c368045d1ddbd7b177d7d7d86db17323a3a8a8e8e0e3c78f0008d8d8db873e7ce4b8def3e7af4489e1b1a1a32bc692abaddbb77a3bebede703bd6f1fdfbf771fefc79242525e1d0a143d8bb772f020303b167cf1e93b66fdf3ec4c4c420252505172e5c90c1988b8e2fdfbe7ddb700b74777723222202048785854907d1d1d102326f515151d2781d1f1f8ffcfc7c432f2f44c751363737cbc847464670edda35383a3a62eddab5080f0f47414101cacaca505a5a8a929212141717cb5fb6a2a222646565c92002020210191929ea665f4a747cb0bdbd1d2d2d2db874e912626363e1eaea8a6ddbb6c9cbb76edd920134353589be1f3e7c287fd9a8cadada5ae4e6e6ca7b1c506565a5d8e7e9d3a76300eabab5b515972f5f165db3f353a74e890d68c4274f9e60707050dac0c08049ebefef47676727eeddbb872b57ae20393919070f1e948171c002a0de6a6a6a90919101373737b8b8b8e0d9b367f2a3b5c2d970805c1057af5e9541e8d2d2d270f1e2456467678b1eb76fdf8edede5ec32bd6495d5d1d366edc88a0a02059559cbd8eeaa8a8a8c099336770e0c001511357d24484f6f2f4f444707030cacbcba51f1dd730f54d43858484c8faeeeaea32bc629df07bdab469930c928316406a6aaa589e007e3854130d3711a18a08603f1c744f4f8f0d602a368045f9cf01f225bf0d003f3402b8e54c3d15797979c949a88ed049076cdebc598e5ccee0c68d1b930ff0f1f19123949b1d8fd44907f8fafa222e2e4eb6ebd3a74fbf5d008f02ab01c3c323e8d53c07eef53c9347354f44c9a400fab573969e1ecf5f7a1b4346e7370f9c3706f4f474a344335e9ae641545755a1cfe8fc5600ba3013b6417b5b2b12e36311e0f70b0af2f2d0f1f8b1e197b1339900b58af2b4df5f1b405746afa9e4f7fc5c383baec237cbbf427a6a0afed69c362504787b7b8b6fc43ee92f3d775b2c01fed29cb3ca8a72448485e24bfb2570d0008505f9e8327ab6dee055d079609ff4ee5e1b50a37d9547e3e3f0a3eb0f58fae9c7705ae580f23fcb4c6da001d466c71950c6058ce7b6646766c0dbc31dcbec97e2f3258be1bcfabb5702b8173166d0d1d2747a15806ebb72bc060706515f578fbc9c1c383a3860c1dc7998f1fe74d82f5e846f577e8dd4df92d0a8b9fec3c3c3f2bc5211fbe15e247e516666a638be0a40bf5201ba3abb50fc47110277ee84dd8205983b7b0ee6cc9c8585daf517f69f213e261ad59a0faaa21be5d929806cd7747a8d6760ecd9b5e85b9096928a9fdd7e82ddfcf9586467874f16da61eeacd9f8e8c37908090e42c5b973cf9de586f100e62a22401999b1409636007fcd21fe7ef56ab8ac59a3a9662566cef8406b3310b86b9700d40c1a1a1a5e06981b992a5200c60d959ab192355dc74645223a221c3e5e9e98feee7b7867da34046af6a29bae6c600eb0e89baab08a1db00d689b5bb93662ce62f9b26548d3de6d6b6b936729b4c11b1ffacd4dcdf8f5e85124681b5aad16b830c850a2bc6bf6c3652a0188b500eabb45af979dd43ce0e376ad00543b676d35e055620ea04c6d00d5670398880d60516c008b620358141bc0a2d80016c506b028368045b1012ccaff07e00df30a5373062cec3033c2120b23f449079c3c79526a628c36597b310ec4ad15c6684c6b1240ad9800182f73068430be9d88a874cefefdfb5f00541d922a6210eeefefff46800d1b36483fcf5544e3debc7953ea905bb76e85bbbbfb8455c440dcc9c9095bb66c91c29d00983c65c58fb54a02d6ad5b2765c4894875753556ac58210016ff28bac2c24289d6d9aaaaaa909e9e8ed0d0501c3b764ca09c3673d0cc5bb0995f5fbf7e1d274e9cc08e1d3be0e1e1012e7ba617941674393939929360ca805913ce86d5403f3f3f242626e2ecd9b3528d551559d5d4ffb8386837676767ac5fbf5e0274f643f508c0b8b04961247fe4c8119905ebc4cc81b2315569de12121270f8f061a9fc11c29ab2b90840afd71b6ec7844957aaeef8f1e30261928f6b9b8d4b505d338d4f08734e4c6a8d5b11e7f23407509836a6ea98e5e507c4af94cdf85ad9e755cbfa5f019325531d00fc034bc0ffef6db49afa0000000049454e44ae426082),
(5, 'TROQUEL 5', '0.07', 0x89504e470d0a1a0a0000000d494844520000002300000018080600000070644437000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000049249444154484bed5659485d5714bdfd0e1193d8401b34e280a0a226ced60f454b149f33c6c654d45a35cec50f67a460a971aa238a752cce6389f547239a8af32c06e380533fe28723c6795a3dfbf09ebe5a5fec4f211f6e589cebbbfbecbbcedac351c02764376464d90d1959764e666b6b0bf3f3f3181a1ac2c0c0000607073f8ae1e1618c8f8f636a6a8a63f2ed5bfef7c8c8c895fe12f4f5f5719fd9d959ecefefe3f4f454cc8091393838c0f6f636eaebeb91909000575757d8dbdbc3d1d1114e4e4eff80b3b3f3391c1c1c60636303335353989898c0dcdc1cd6d6d610d9d9f1f7127fe9fd14d3d6d616eeeeee888c8cc4d8d818ffb6c40452a3bdbd1de9e9e9484c4c446c6c2c626262101d1dcd5769c4c5c59d232424040e8cf41d7979dcbe750bca4a4ab0b4b0c0773e3e3c0681fc24f10814332a2a8a3fd3c13b3a3ab0b6b6c6899042425b5b1bdf442f6b6b6bb9942423a5eb3224bf777777a3b2a2026121a190bf2d873b727230d4d747f08b17282b29e13e9446f2a7553a06a9d1d5d585aaaa2a343737637171113b3b3b585a5a82505a5a0a9148c4c98c8e8ee2e4e484333d3b3be36ca5414669fd6b7919cdaf5ee187b070282b2ac1404f0fbededec8cbcd452f237a7474c47dc9a4e3d03319a5a6b7b717757575e8efefe70254b0c30959595930323242525212565656b8f3c78c8a6e8c91cecdce869b8b2b1eebe8e299db53a4be7c89df1b1a30c4024b88cb323af0e4e42457a7a9a909797979f0f4f484909292026d6d6d10293af575b6b6ba8a3f982ae1ac668c0d0df0f08122cc4c4c11121484dfcaca30ced2701d19528ebaa9b2b21205050508627b5555552fc8646666626f6f4fec2edb56debf470393379405b0b6b4849ab20a541e2ac3dac2123fb254fff9e6cd79aa65d9e1e121666666505d5d8da2a222848787434b4b0b02a547434303191919ff499905d67dc585bf22e07b5f7cf3d40d8e227be8ebeaf2baf17afe1c254585d8f9f041ec7db5111952a6a6a606c5c5c51764d2d2d2a0cb829132bbbbbb6277d9f6eedd14d2d352e1e9f10cbed4c651d1706133c7dcd8182ef62224fd94888df575b1f7d546699a9e9ee66922321111119c83d0dada8af8f878e4e4e4f06ebace969797f00b3b809dcd137c656c02bb276c353286880dc09fd99c1a1e1c107bcab6e3e363dedea9a9a9282f2f477e7e3ebcbcbc201043ea772a606a731ad734d6899834e8b7898909ded2e1a16178ccd272ff9e02eedfbdcb700f668c503c1b70edaf5f733f9a27976348d0d3d3735e2f2406219b75a74077120d1e9ac03455030202101818c82b5c1ac1c1c1fcfdb7ac2e4c98229f2b28e0334180c040eb832fbec4d7ec3a20dfb0b0b07fed97c087a5966a841a870e3e3737878585053e10056a43ca61616121bcd9e0323030801e3bb53e9ba8f47c198f1e3d82a6a626545554a0c4ae00454545beaaa9a9414747078686861c57eda598eaeaeab0b2b2427272329fbcd43454d0d4c9e7b776676727578772e7e1e1c187d05520c2fefefe08662a9102744a5a49393f3f3fbeffaa7d12d0e5490a3736368abf7c6137ff5cc93261958d77c23a9b0d1b1b1bd8dcdcfc5f410d432b7d4bf26d09849696167c1a68c1df6d2ec3e017bb3e2b0000000049454e44ae426082),
(6, 'TROQUEL 6\r\n', '0.14', 0x89504e470d0a1a0a0000000d494844520000004400000016080600000079553a4e000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000509494441545847ed5869485d47147eb494fe6a213626825a2b4a1b6aa9129b6803b1559e264a1af5bde469e21a83b8558d4b456bea82fad4da804888481197286d6da07147231a434cdc374c8c312e3f5470a9c67de7eb9cc97d05f5d142f48a3f3cf0711f73cf7933f3dd9933df19090e6d8b1d12b2cdb61032373787919111bc78f1029d9d9d686f6fe74fb1d0d1d181aeae2ef43c7b86dede5e8e9e9e1e747777abf5df2da83f02fdeeefefc7f8f83856575785d9bfb17f09a117959595484f4f474848083c3c3c70f5ea55fe140b5e5e5e1cd4cf25b91c72990c4e4e4e707571e1ef3d3d3d77c4ec06eeeeee707575e5cfe8e868e4e6e6a2b5b515b3b3b3020b02219b9b9b181b1b434e4e0e525252101717879898188ed8d85851407d2427a7203e3e1e9e6cb0522b2b58597e0b674648705010f389e3efc84f5dfcdb423527a55289dbb76fe3debd7b686a6ae2649049161616303c3c8c9a9a1a646565212f2f0fa5a5a578fcf831777cf2e48928686c6ce4cbb7a4b818d15191905dfc0e4e7219e2d960ff2c2ae23ed4ffd3a74f77c4ee06f47f0d0d0d282b2be30be0d6ad5b9c1895499a9b9b515050c0bf043d2968686808f3f3f3585b5bc3e2e2e29e636565051b1b1b585e5e421923e4c71fc2e0a2b88c1bdf07e08fdf7fc3c0ab57cc6f89fb2d2d2ded887f5bd07f2d2f2ff3df03030328667d474444c0dbdb5ba0831172e7ce1db8b9b9412a95a2baba1a1313133c703f6cfaef2928e3637145ee0885fd45fc1415859a070f30333323788867444a7d7d3d02020260636323b43242fcfdfd616060004d4d4d7eaaec874d4e4ea2adad0dbf6665e2ab2f8da0734c13264646f062b9249f6dd9972ffb044f718de6ebe3e303535353a18511121c1c0c2336181d1d1d9e71c5364ae0bdcf9fe36e7e3e82d91631f9fc043ed1d686d189cf70c1d60e3137a3515e5ec6fdc436fa28bebebe303333135ab611d2d2d222348b6794971a58c24e6027889c25d2b3e6663873ea14ce9ef91a524b4bb8383be1979f5377e803318c08f1f3f383b9b9b9d0c208090d0d85b1b131f4f4f4f68590f5f575d4d7d5e16664242eda9ee7b8ece00085a3036ca5d6b0b596223428705f08a11db1638564666672d1626d6dcd8fa4fdb0c18141dc65b922882534eb6f2c70ced2020e76e7e078c1162e4e0aa42a93044f71edd1a3475cfc9d3e7d5a6861845455552123230391ec8b15b1f39f48217d40cb490cb4b4b4e2fe5ff7a14c4ac21526c20c3ed66539440b5f7c6a08335313d89db7614af906d720eae2f70ab43a0a0b0b11c4442029579549060707f956a9a8a8e00a8e720a9dcbc49c18a0d52897c961616101434343bc239140c2f0fe7befe2c8871f4057471ba6274ff241aa8bdf2b848787f3f9a6a5a571fda53209ed55d21d54e8848585c18a49684ab274148b057d7d7de8eaea424b4b0b1a4734f0918606348f1ec53176f46b1d3f0e6d76eaa88bdb4b90f6205146aa9cca16956da97649ba9350512814b0b7b717050e2c81ca5811477d505177edda355cf7bace8b3c4f0f4fb8b9bac1d9d999fba98bdf2b040606223b3b1b7d7d5b35cfe17dc8363b24649b49484613a6a6a6303d3dcdeb88d7af5f6f01dd17d0e51155c68b2cdf50ce51816a022a04b7c71c74d03c69be346f02e55252c7122a83ff0be5e5e5a8a8ace0855f6d6d2d2f88ead9f9ad42ddc387fcea80fcd4c51f6450422d2929e127ece8e828ffc012ba10fa3f242727f30b9524a61d121313919890f0e6c9406df48e7cd4c51e64d0b8690ea9a9a95c9bcccccce01f7a9b04796e71326c0000000049454e44ae426082),
(7, 'TROQUEL 7', '0.24', 0x89504e470d0a1a0a0000000d4948445200000074000000100806000000c7ff5b6b000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000046f494441545847ed58694b9c5714f68fe44313b010ed485d5a3441ad564b122dd67d8d4ba5101542200a26232aee8a5afd60dc88fb6edc1d898a2b2ab8d05183516a55dc46c51571457d7acfa9a382f303e61d7ae0e15dee7d5feee1b9e79ce71ebdbebe3e1c1e1ee2aeadafaf63686808cdcdcd686d6d455b5b9b64d0dede0e4587029d9d9de8e9e9417f7f3ffa07066ed02bfcedeeeee6799abed76610172d2d2d502814585b5bc3f1f1f13563b7c6841e1c1cf0c3e5e5258e8e8e303e3e8ea2a222c4c5c521313111c9c9c99242525212af3b212101f1f1f188177ef05580ded118cdd1f4ad3683d64d3ea4a4a4606262027b7b7bccdb5dd3a31dbcb4b484999919343535a1aeae0e959595a8a8a8407979395fa580aaaa2a545757a3a4a404597f66e1cdeb3778f1ec39be97c9203330c0778f1f436668809facac101418888282029e4fd0f43f6d04f142282e2e66ae565656ae69bc358e5062bbbebe1e595959282b2be3901e1919c1e4e42443a9546a3d689d535353181d1d436b4b2be262e3f0ccfe177cfbe8117e3431814c10facd83073033364668480897149a4fd0f43f6d847abda3a3a3cc57575717a6a7a799d8b3b3b3ff08ededed45474707626363390d51ed999b9be33ababbbbcbd8d9d9d17ad03a29056d6e6e42f99712b9391fe0f29b338c6546f07076c6cfd6d6d07ff8103f989ae25d6424542a15cf2768fa9f3642ede3d6d6166a6a6a101d1d8d989818343434f018134ac281d255505010e7e6d9d9599c9f9f733dbdbaba921c2e2e2ea05a57a1a35d01f97b39fc7dfdf03a34145e6e6eb07cf204ae82dcbcdc5cc9fa47a0b513670e0e0e303737e7605c5d5dbd2594d2acb7b737525353b99e4addc8e913a100b7b7b731363606c7e72ff0ab40acd8d1e42f45a7d48d44ab858505f4f5f511111181e5e5657e7f43a88f8f0f13bab8b8c803ba60a727271813f5c6ccd8048e4220157ffc888d8d0ddee15237127f5642e01908c117294ac83d427d7d7d919696a633849e0832ff16e5a3bca45888225304bef447e7e7cf9c9275c148eddad8d8c0d0d0f03ea1948f838383919191a13384aac4c1bbe9533dde85bfc5effefef89093837fe6e7af47a56fc499bdbd3d8c856a8f8a8abaada1a4721b1b1b111e1e8eecec6c56b8ba605f84bccf484dc11f012f512ece6db35fbfe25247a2938c7a044e4e4e1ca52466d5ba406f6060000b0b0b181e1e66191c1616c645363d3d1d8585857c009712f2f3f3919999899057af60f5f4299f413345e6a114454242d3375201f9969797c7f7944da96f505b5bcbc28f3a7c4ce8e0e0203fd039462e97c3d2d212464646b0b3b383878707dcdddde12624bf54e0eaeaca3bd7d6d61666a62630152989de9346f0f4f4bc375f4a20df5c5c5cf89ec8a4ec4a3dddfdfdfd1b6dc011aa368a482f2f2f588b43b8a3a3232b5f021d69a4025a3f81080c10b5333020007e7e7e1ae74a0db42129c8e89e9a09eaba79d7b8974b8d04326a23518f905213f50bd5bd5cba4a09b466eaa4347c6a607d400242d33ca9814e23a5a5a5ecdfbc1078a7a7a7ccdb5de35e2e85ecffa60b06fc0b9a58d57a59bc76fc0000000049454e44ae426082),
(8, 'TROQUEL 8', '0.53', 0x89504e470d0a1a0a0000000d4948445200000024000000620806000000380171e9000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000584494441546843ed9b8b4f544714c6fbc754d16244aba815a42dd654545e8b426b6dd220b0c8f24c4c5322cb5340b1b08105046d4ca0a44550e4619497050209020ab444451ee121f290878d46581ef275ce608d2bc8687bafdd26f32527bbc9de3bf3cb9933b3f7dc39f3012c4c960d343f3f8ff1f1710c0c0c607070100f1e3c50c5a86dea63626282f7f9aa38d093274f30323282868606e4e6e622252505a9a9a9484b4b53c5a86d83c1808b172fa2bdbd1d4f9f3ec5ecec2c161717978008242f2f8f5f949c9ccc81d436ea272b2b0b858585686a6a427f7f3f6666669680323333e1eded0d5f5f5f7ef1a54b9750505080fcfc7c558c3c439fd9d9d9484a4ac2d9b367515f5f8fc9c9c92520bd5e0f474747787979e1c2850b686b6b436b6b2b6edfbead9ab5b4b4f0f0080b0b43686828f714c516078a8888c09e3d7bb8974a4b4b79604f4d4d7162b56c747414454545d06ab53872e40877c4fdfbf79780626363e1e6e6c669299ede879e3f7f8ef2f2721c3d7a141a8d860f5b4747873910b9aeaeae0e0b0b0bfc263545b3eafaf5ebf0f1f1c1a14387783cddb973c71c28242404b5b5b5989b9be337a9299a51d7ae5de313c9d3d313e7ce9d93406692402249209124904812482409249204124915207ac89a9f9b5f96cabc8d1407a2d4a9a1be01c545c5282b29c52df68c3c3931c95399b791a240cf9e3d43e7bd7b38959080205d2082999d8c8945c1aff93c11a4ce445214883abdca9201977dfbb063ab2d37073b7b7ccd1aae64cfc9c3c3c358100ca362401437371b1b71e6f4696cde608d2d3636d8b96d1bacd7adc7fa356bf123cbb35a9a5bf0e7e3c7ab0e9f6240f45bd1e5cb080c08c0964d9be0e9e181632c95d9efe484751fae61dffd797ad3dfd7b76ab02b06449d50faf2fdf1e30c683334aeaed0b2ccc1cdd99903860487e0ca952be86340ab652f8a0e19e5e2a7131361bdd60a5bd9907d66b7131f6fb4c1475656888cd0a3baaa0a232c8ee8da3749510fd5d5fc86f8d818d8d9da62ef17bb99975cf0a9bd3d365a6f60334e874296bbf77677bf9f219b999ec62f3fe72024c01f5e1a7744ebf5483518101c1808bb1d9fe0c05e279c399588e69b8dbcd3374931a0599309f90cc8dffb3b1c74734566ba11656c0988631eb367409a03fb91959e868edfdb58766a7a71d7722917432c506bab2b1115fe031c1d1c10e8ef8f84b858e8fcb5f872b7234e46e95177a31a8f462986de4350d3dad276ab055946233e6771e3b86b17342ecef8c6eb2002b53eb851598ea1817eccce4cbfb863652907c466cebdbb7751565c8c6fbff2c2aeeddb19981db46c08737fcac2f8a3519858678b8b6f9e6124453d343434843fdadb916e48814eeb8763be3e301a92d1d1dafce22ab114037a5504478b1f4defd5d69c95a40ad0bfd1ff0b282626c6b280a2a3a3e1cafe242d06282a2a4a024920912490481248240924920412490289f43ad0f9f3e72dcf437759f2601140b4c5497bf89d9d9d9601e4e1e181f4f474747575590690bbbb3bafaae8eeeeb60c20676767242626a2b7b7d77280e2e3e32590995e074a48489040669240224920912490481248240924920412490289248144924022492091de0968b5fd76a5643299783df58a40919191707171e14054e0fdaebb83ff44340a54b2e1e7e7b71ce8c48913707272824ea7434d4d0daf06a71be8530da311989e9ee6f5ff548f4f071468945ebe6c888b8be375f1414141dc8d636363bc06e8e1c387aa181d6aa1f6e938c5e1c387f90105dad57ce9a19c9c1c848787f3d30bf4bdaaaa8abb93e0d4306abba2a2821f0c080e0ee68ea0530b04cb81e8380c453cbdc5a2d722e43eda65a4ad4f358cdaa63e286e323232505252c2cf7a505d1b07fa5b54f343b53f46a391c3d14902358c3c4320e4041aba576506446b03b98d5eadf5f4f4a86614bc64144bafaf796640ffbd80bf003850d5990e441a0b0000000049454e44ae426082),
(9, 'TROQUEL 9', '0.21', 0x89504e470d0a1a0a0000000d49484452000000190000003f0806000000151c6348000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000052e494441545847ed98e94f5d4518c6ef3fd05463fc26d11a91548d286551820dd48bacad823484dd2295400b4252a82125ec5bcb562d7b412a2148a806642b3be58a840b1faaec50ca2e4b595a96b25d789c77b8b7541bdb73a8e807ef93bc39847be6fcceccbc33e79957b2bebe8eeded6df4f6f6a2baba1a9595957b8a8a8a0a949797a3b6b616c3c3c3989f9f073d7b6b6b0b12fac7eaea2abababa70f5ea55242626e2e2c58b888f8f171c090909bc1d5d636363f9df041c1b1bc3f2f2322432990c737373686969415c5c1c424343111c1cccaf42232c2c0c9191913c7c7d7d616c6c8ca0a020b4b7b76366660692a2a2228c8e8e22272707e1e1e1c8c8c84076763672737345455e5e1e0f026a6868c0d1d111f5f5f5bc37127a785f5f1fbcbdbd111d1d0db95c8e9e9e1e3e474283daf7f7f7f3282d2d85a6a626eceded515353c3e747929696868e8e0e989898f0f1a5317c168d8c8c405f5f1fcecece1c32343404090d0f4dbab9b9392e5dbac4b3e259343030003d3d3db8b8b83ccc34496666268758595971c8ddbb7795b7ef4d347c6a8860a921a2a48688d27f02a1bd6c5f20b441bab9b9a1aeae8eefd0fb063975ea14ff9ed06763df86cbd5d595f7846ff5fb01d1d5d58583830337260b0b0bc2219b0a0556d8076d6565056b6b6b5028b694bffc59043972e408ecececb88be16ee569107ae0e8c828644d327ccd5cc837979351585000796b2ba6a6a69477ed4a05b1b5b5e53689f41864767696ff406fb0b2f2800146d058578b14f67007bb4fe1647f12017e5fe2dbac4cb4b6fc8235f26dbcc58e4441a807e3e313686a6c40eae544787fee06237d3d1819e8e1849914e77cbcf05d4e1666999d52b017528952f6a910d5377e9e4d985cde86acb4549c39ed8ee35263589b7d040be987901abd0f1b0b5304fafba287bdf903660e551204a16c204d4c4ca0eca7525c387f1ec7cd4c61626880af02cec1dfd7071f5b98e328ebd1c94f4ee067660eefddbbc7db90c81609eec92c4b8076792b129865b53435c51baf6be18c97373c4f7f0113a3a330600ff2600bae9bb55d5a5ae26d48827a4296954466798e812a99a73debe5051ded77f01ecb7f1d6d6dbcf6f22bf8c0d0103151d1585c5cc4e6e6266f431235f12ad12efa3d4b599fb33ed03c7408cf1f3880170f3e070bd6bbbc6bd79477ed6a4f1072fcb435dca8bc013d1d1dbc70f0205ed578099f393ba1b4a44479d7ae4441e8cc42ab9b866f687010372acaf1f69b6f41f75d1d960001689635619c99e9bf4a744f083274e70eea6aaa111f1b0d033627ce8e4eb87efd3a9b6c36171b1bca3b77251a420b72f0f66d14ff5084b00b41f0f6f444465a3acfa0bf9320c8a37b176d2dbfb3f5525b55c916650a4a8a7f44776727969ee0fc4543488bf7efa3f3b75f216bacc7d4e404149b8f0fd1a3da1384444920547b8688911a224a6a8828a921a2a48688d2ff084235c47fa214f54448525212eeb32fe1b36890391b3a04d9d8d8ec42b2b2b238442a9522303010b76eddc2f4f434af1d8a89c9c949deaea1a1015a5a5ab0b6b6465959d90e847ad2dddd0d4b4b4b787878a0b8b8186d6d6d686c6c141c376fdee4d558aa5f52b1f3f0e1c3fca4555555b503494f4fe793e5eeee0e272727242727a380d952aaa80a0d2a96d2c3f3f3f3795df8d8b163f0f3f3437373f30ee4ca952bdcee53c1d993f9aa8888080ea24c131aaa02345d434242e0efefcf0bd9f4f21c42934d19415da3ca746a6a2a6808c5068d08b54d4949416161215ad99952b51c243131313c233698e5a4630065171d6ae82a26a88daaddcee958f1d04a49a2a2a238643ff52f40803f00516cb779af5cef390000000049454e44ae426082),
(10, 'TROQUEL 10', '0.21', 0x89504e470d0a1a0a0000000d494844520000003e0000001e0806000000746dad72000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000066a494441545847ed58694c55571026f1477f6852d334b6499b54d3681aabb5d52a758b681515150adab083602a1505d92b68a014596431088aec585b76098b88b2c82291c822a022ab5636155914eb0288fa75e6f8decb334583dc9752a2934ceebde79c7bce99337366e61b35bca5f44e70657af2e489e0e1e1e109cbbcffa1a1213c7dfa5426d5cba476f7ee5d31e0d9b367181818405353138a8b8b5154548492929209cb2c436161214a4b4b71e3c60df4f6f6e2e1c387e25084e0a74e9d4247478768bc7efd3a626363e1efef0f3f3f3ff19ce8cc7284868622353515d5d5d5e8ebeb134a5673737343555515babbbbc549d9dada62f7eeddb0b3b383bdbdbd64767474849393139c9d9d053b383828faf89dfbe57d4ec4fcad3c66ac2c5f77d7ae5dd0d5d5157225252509edb3d6d58c8c8c8449b0d6333333616161016f6f6f0405052138385832878585212a2a0a7171713876ec180e1f3eace83b74280447a89fad2c8efa626262111111f1d298b172484888d0b4afaf2f343434b065cb16b197c6c64671ffd5f4f5f5919f9f8fd6d656a4a7a78b93cfcbcb436565252e5dba2499af5ebd2a166b6e6e464b4b0beaeaea70f9f265c157ae5c11dff50d0dc2b73037d0bb7ccc48f38d96e5f3979595c1d0d010a6a6a6080f0f177b619fa666626222046713c8c8c840404080307b55517d7d3dd24e9cc0c1a083f0f6f242575797ace705fd75ed1a7ef3f0803b5db998c80854559463687050d6ab1adab3670f6c6c6c8465b10284e07c1205050542e36cea070e1c1066cfe62095d8899c397d062e4ece58b56225e6ce9e8df20b17c4dc1c663adbdb90f0c771a8cf9f8f39b36662c3da35f0f27047315d3dfe5715f4f8f163c55d7fade0ec05f99d439b546227927b26173b7758e38b99b3f0dea4497410a785453593592727c4c3d67a0766cd98810fa64cc127d3a661f9e2c570b277107b50053d78f04038baff54f0e7cf9fa3a6a6065e9e9e58b26811a64e9e8cec9327d1448bf3d38e36b37ecd1afcb0691396aaabe3f3e9d3f1e9471f63e1fc05384711e655c9c79bd0b808ced4d3d3837832675343037cfbd55ca4a5a6203f3717befbf7438b84d6d9b80115e5e522c6c6d1c68c0d0cb060ded7384e5e9e932ba9346e82dfbb770fa9143f7fb230c78ac5df2125310199143d7eddb70fdaebd7c3dcc4586c8ea99e22001fc8c675eb101b1d8ddbb76f8b7629346e82f7f7f7e3447232acb65960d5b2a5488aff93b49e8abde469379180dbb69acb4602376fde4428c5e0cd3ada88a278ded9d929eb193bfd0f34be152b972e1187904561d37def5ea1d9adb4feb0ec2ef3a6fc7cbcc9bb6b228a42dbad5bb744bb141a37c1f99eb2e0db2d49e324780e39b5425acf8762bab69616cc8c8c3130f862adea8b17e1eae2223c7b7454a400165269dc04efa3cd1fa77475b38e0e85adcf28469f4513654fbf539b1e99b4c6b2e5080f3b8aa347c2e0f68b0b0c28b5d4d5d646497191024949a17113bc97bc7a746424d6ae5e8d0fa7be8f7c4a875b294b6407676ca08f795fce2193d782e6aad5f89e72ea1f0950b8bbb9a2bdad558443a9342ac1b3b2b204946b6f6f179daa20766e498989302530348732b7d273e7d043094c6545053cdddda1a5a909f5050b29847d230ec7c5c9112733d229864bcf1c991e3d7af4faccadadad0dd9d9d90295b1775545f2c034487977d9f9f308216f6d4770b7b1a151b475dfb98382fc3c0406f863c7f69f61bbd306fe942e676566a0a5b949f6b774e2b54614dcdcdc1c67cfd2bda314322626460ca8adad151e95413b333b99b132a7a79cfb5f2330c2c8483eeffdfbf7f1379921c7eafafa0674b47708ebe8a7f62e3a14063323cd375ae668c2f3b14219a0585b5b239a7203053a63fccd789ce120e360867039393928a76c8ad34da9cc19197beb8b32e66f3e58868d0c59f9c9851086928ce4eaa8ada6a6563176a43947c30c4979bef3646d56565642a15c135068dccccc4c689c616932c5584b4b4b01e0b9689090908044ba9ffc94c23c07573f787ee5f994db99f99ddb54b1664a4a0ad2d2d28479b34c6cee5c7e62ff250a11ac612e3cb069700180bdbaabab2b3c0823fbf8f8a884794e86bbec38b922226fe777eee376eee76f65569ee34d593eaf270124d638579558c16cfea2e6c62599d30415f943c0480210fb295fe681fc23172654c1818181825fd53e529f2a980f800f223e3e5e5c2d4595554f4f4fdc6939b1fd33a292f3488e6322b0b20c9c3d2a979699fe25f8db42ef047fbb08f8075767e4c280452f4e0000000049454e44ae426082),
(11, 'TROQUEL 11', '0.76', 0x89504e470d0a1a0a0000000d4948445200000024000000bf080600000096a17e18000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000006fb49444154785eed9de94f55471887fb37b4493f9ad8ba41dd10444dd118899646fd52ab056b225a6d01db44a3b41554342a886da2a9cae682b8524454c0a2a2564514290a226ae302452a8b8abbe2feebf98de78888e56555dabc4f32b93733f79c79eecc9c39e7c33b67de413b4385245448e2b5424f9f3e456565250a0b0b515c5c8c2b57aee0dab56be6b3a9a9aaaaca241e7ff3e64ddcbf7f1f4f9e3cb16baacf6b85eedebd8bb4b434040707233636169999993874e810f6eddb67be3725edd9b3c7a4bd7bf7e2e8d1a3387ffe3c6edfbe6dd7549f3a42cf9e3dc3e3c78f51525282458b16a17ffffe080808c08a152b101f1f8f989818f3bd29292a2acaa48888082c59b204a9a9a9282d2db56bac8575b367ea08b1598f1d3b86c4c4442c5ebc180b172e34275dbf7e3d366dda840d1b3698ef8d4dfc7d525212b66edd8a51a346c1d3d313fefefea6e55ee5debd7ba8a8a8a82bc40c362f5b62f9f2e5c8c8c8305dc5a66e4ecac9c9c1891327505050003f3f3f74e9d20523468cc0f6eddbed1a6be1d82a2b2bab2b545e5e8eddbb779b265eb66c19b2b3b371e1c205332839c8999c41dad8c456afaeae466060205c5c5ce0e3e3635aec556a6a6a70f1e2c5ba42ac9003970399fd4d219eb43598397326dcdcdc4c0ba5a4a4d8b9b5b0eefdfbf7d71762665c5cdc0b21febbd660f6ecd9f0f0f0c0c89123b16ddb363bf7391cd0797979888c8c6c58282b2bcbe4b506212121707777af27f4e8d123335f25242460cc98316f5f88731ec7e9dab56b111414f4f6856eddba8553a74e61ddba7598356b56fb10e22d8af3d69c3973debe106f2345454546283434b47d089d3e7dda08f1372aa442ff860a49a890840a49a890840a49a890840a49a890840a49a890840a49a890840a49a890840a49a890840a49a890840a49a890840a49a890840a49a890840a49b489d0c3870f5176e9124a8a8b71c9fa64cc0f6130094326f8dbbf4a4a507ef9b28937635c8743ab081d3e7cb84eb80e638152929391101f8fa4c44423475831e337f6666662a375e2f4d4541416141829074988d1586220c19123474ce48a139b76f6cc194c9f3a155ffafae2eb4993f0476eae398ee1123c2e32220213c78fc70f3382919c9484bfcbca4c399184366edc28c77e306c8badc26035567af0f703f874e85074edd4096e3d7b223d2dcd1cc7c82c36f9447f7f933f7488377e8a8cc49f67cf9a72d290d019eb8f6edebcd9c4183528c418320a31eef0ead5abd8b36b37060f1c88f7df7dcf24760f29b5ba6ecdead51837762c3a7ff0015cbb76c3f73366a0203fdf9493c60889c128ce1862973d78f00015e51598133a1343060d44d78e1db13226c61cc7c17d9a01250909983c71227ab8b822e89b001cb3fe904363c65093c375d85271d12b3076f4e7f0ecdd1bab6c2172bdba1a59070f62fedcb9e8e7ee816f03839a24c42e6f56744cfcaa388c1feb8b01d6c95f16ba6d8db11ceb22880c0fc7008fbef82e684adb0bb18556c64461dc17a3d1cfcd0dab6263ed92da165a306f1efabf2921ce37d1cb7f81efa8cfd0b757af1763885cb306fd01ebd8b9d695e2d9c7fdcd741967ea9f174560f8b0a1f8a87367c44645db25cfa344775ad300e7a95eddbb9b419d634d1b0e6d22f4a0a60661a121183460003eecd001b1d1b542974a4bf1ab75e94e9a3001dd5d5c302520b0ed5ba8c6babc7f0c0ec6c7fdfaa19b3539c6af5e6397c0848dc6732ef2f3838735bea64f9b86e3797976691b0a85596364b88f0f067b792179cb16bb04cf6311ad7bdc57fe13acf24f10be603e8a8a4ed9a56d24c4fbd991ec6ca4eed881ed2929e6aeef70fdfa75149e3c898cdf32ac5b4a2a4e1c3f6ee5d586adb68910676c56ccbc4a6b103b8f1f845720ef779cd9abaa2aadef6df0f8f1aa504b5021091592502189ffae101fe01dda85106f070eed42e8e5e9bd5d08f1a1cb41852c54c8418524544842852454484285245448a2d142edee01addd3d53dbf90615b250210715925021091592502109159250210915925021091592502109159250210915925021091592502109159250210915925021091592502109159250210915925021091592502189ffaf506bbd279f95f5e9d3c7bc27bf59424b972e35cb4a6fdcb86197b60cbeb8bf478f1e18366c18929393eddc260ae5e6e69a0548ad01855c5d5de1eded6d3684701085b8af467474b4d98d62d7ae5d3877ee9c69a59624aeb8a2909797177c7d7db173e74ebbc6460871eb0ab60e57e572470a6e95c1133437a5a7a79bcd4858d9e4c993111e1e6eb63170685088ddc3429e88dd1616166656e752aeb989c7b322eefb41392e43a6844383420c9063f3729f176efcc0e5c27cc33f3f9b9b5811cfc13d3ab8d4996b19efdcb963d7280839388bb5b9f10713b71e6849e24e01f9f9f9e605fddc24842f0b70689410a1145b8b890bf95b9af80799382c9cd8492e316cb4d09b408524ea0b85e01fafd4547037d9a0d80000000049454e44ae426082),
(12, 'TROQUEL 12', '0.77', 0x89504e470d0a1a0a0000000d4948445200000019000000d10806000000395219ba000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000080549444154785eed9cfb53565517c7f91ffae1adc91fed82089a0983c44dc05218214248883793bc30a64c69a028dec102518114955ee422085ae00d1ee4a6f08008826880a272bf080aca45507114bfedb5f291ac2762434dcd3bfb3bb3e77978ce39fb73f65a6befc39c75ce32801e3d79f204b76fdf466d6d2daaababb9555555bd68f4774d4d0deaeaea78bf478f1e3d3f52bff442fafafa909999891d3b7620282808ebd7af47606020b775ebd6f1e7c68d1b111919c9fb3536363e3f52bf18f2ecd9330c0f0ff30ff4bda5a505bb76ed82a7a727e6cf9f0f474747cc9b378fdbdcb973f96f1717172c5dba14616161c8caca7a6934d407359d18f2e0c103747676a2a9a909376edc40414101e2e2e290979707ad56cbadb0b0f0452b2a2a42717131771e1d1d8d808000c4c6c6e2e2c58b686f6fc7ddbb77b94f9d18f2f0e143b4b5b521252505fbf6edc3810307505252828181013c7dfa9447f9eb46a233edeeeec6d9b36711111181152b56b079333232d0dadacac7e9c4101a6a434303962f5f0e676767ac59b3861dfa6722e0ad5bb7505e5e0e575757383838b0af28287e2d8650877446646f7b7b7b76b48c08e6ebeb8b59b366c1c7c707393939e8eded7dbe554068d8151515080d0d85bbbb3b366dda84e3c78f3fdf3c761d3e7c18ab56adc2ca952bd94fe4479df30dbababa909090000f0f0f76ded0d0106f188fc817e1e1e1707272c2a2458b4620f5f5f5888f8f67c7a5a5a5e1f1e3c7bc613c22b3070707c3d4d494c3fd0584666f6262224f3a9a58fdfdfdbc613ceae8e860c74f99320536363623105a26c89ee40b8d463361089daca1a121acacac4620146e04d9b06103c7382d29e3154d441ac9d4a953317bf6ec11c8d5ab571942617bfaf4e9bf04626c6c0c3b3b3b05195d0a222505919282484941a4a4205252102929889414444a0a222505919282484941a4a4205252102929889414444aff2ec8446ed98e0942b76cefdfbfcf1bc6a331414e9d3a05ba773f3838c8b7c409f87868e8c5ce3af50b93deeeec446747077a7a7a380746a234c7c6a020fd90a4a424bef97c3c3d1d8d0d0d9c4ba12c4f754d0dbaeedc7929e1420983ca4b97902db66bc4c8cb4a4b7147ec43d2dd46d70b494e4ee6dbdfc78e1e45457939f2f3f2b0d63f807fafa9aee624cef0f0530c0e0ce0dad51a447f1785f56bd722d0df1f517bf6e0dcd97c1e4d8718c9962d5b306ddab49721d7ae5de334139d4192305b5e4e0ee262636169618100d1497e6e2e47dc800888aacb9548f8dff7f0f258007b6b2bbc6f6b0bef8f3df06df036dcedee425b6b2b4242423063c60cfd104a0890d9ce6834888a88c0ebff79151f2f5880b41f7e603334d5d72129ee10567cee033b2b4bbc67660aeb59e670b0b684979b2b6a6baa4169926f43433173e64cfd3e2173656767e3c6f5ebc8100160fcd69b58e8e6865461b2eaaa2aa40bd867dede026085b8438790937d0647535311b07a351c1dec797b595919828343184269ab9720145de4f842ad96a3aaecc205d859be071fd12941aaae5c81263313418181f8d2cf0ff52230fafa7a5159518ee02d9be0606383a4c4445c10c791b94685688b8a846dbb71a5f2129cc4d92d1690c3f1f1a815fbd40ab3669f39832c4d161e89081be8ef85363f1babbff085a970f491a464ce8d85ed0c839999d9efcda58314141672381264fe0773f0a9a727e24510343735711a8af29114c283f7fb51595682fd1161f8affb47c22fd6c8cbcdc3f5daeb08df153e3ae45c41019bebf2a50a38cd71c0a70b17f248babbba7967d6b36164fc988aaf7c97f23e8b3ef90409621f9ac014205bb76efd7d08ff7624949e2d2f2bc56ce113727cbc70727b5bbb98fdfd22445b5056721eebbe5c05473b5b588a33f674f740f4de7d3c4728a54b2b878989f1e88ea7b329395f0cf399efc2cdd919df1f3c28fc518bc6fa3a31cb35080b09168eb682f9bbefc0dadc1cf31cc46884efcee5e7a358f894f2c0638214176961face74b8b9b8e06074342e8ad02c292e42a4b0b787eb8778fb8dc9309d2e4c22466b263e0d274fe693397dea24be5ef3b5309709a768f54384b97e19c979d85a5af219c6c6c4405ba845a6e820686d00e688709d6e64041b0b7331e3ad31cdf02dbcf6ca2b88dc1381f4b434ce1b934ffe1042395b4a73df124b768a981f59626efc74f9322f98f449933441f828393101294989e27b2caf5da13bbe41e985529e8cf450808989897e7391c328994989615a10e9da40e14ccb3a454e9ff89d96f696e6661108ada2b5a1b5a5050d6229b9291cde73af07f57575bc72fce9f56422975f32f5982e5a13b9fc52f8d3423b2a44fd4ba49382484941a4a4205252102929889414444a0a222505919282484941a4a4205252102929889414444a0a222505919282484941a4a4205252102929889414444a0a222505919282484941a4a4205252102929889414444a0a222505919282484941a4a42052521029fdf310dd4b2e54c689aa8f8d57f450f2e6cd9bf9196ebd107a62393737774255afeeddbb87eddbb7eb7f4380aa5e5159b9893ec34de6a207c58d8c8c606b6b3b02a1825431313158b2640976efdecd15dee865157aa560acede6cd9bfc583c55955bbc7831264d9a040b0b8b1108bd4943106f6f6f787979f170f7eeddcb4099b67fff7e3639150723c7538d3c9d0ca8b41fd550dbb66d1bfcfdfdb173e74e2e4347d5f8c6daa2a2a2184275d9fcfcfcb06cd932ee472703b223bd9c4291959a9a8af4f4749c3c7912274e9c906a740c954b3b72e4088e1d3bc685db7432204753e8353737834c473ed215309469ba63a80ff28feedd2d12d7b9fbbbf5ff02017e06b5c26dcdafdbbd5a0000000049454e44ae426082),
(13, 'TROQUEL 13', '0.59', 0x89504e470d0a1a0a0000000d4948445200000015000000d10806000000236ef934000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000073f49444154785eed9c894f55471487fb67d448abb67521564010905d041464138157b4600b88b2c9a2022ab11615b511653508886515515c5aa14a41a0a209d615108de082ec8280068ae0f6eb9c53519f8f9a575b9b98cc498677df9db9dfcc9939332fcc9c7b3ec21832303080b6b636dcbc79134d4d4d9c1a1b1b39ddba750bededed18191979515a5554a04f9f3e455d5d1d0e1e3c88ddbb7723292909898989888f8fc7ae5dbb909a9a8aa2a22274767672d9b144094ab5d7d6d662fffefd88898941707030fcfdfdb17cf972f8fafac2c7c787ef6ddebc19e7cf9fc7bd7bf7c604bf840e0f0f33ccd2d21221212128282840454505cacbcb515a5a8ab2b2324ec5c5c5c8cdcd454a4a0a973f73e60c5a5b5b95e00c7df4e8116a6a6ab8752e2e2ed8b97327b7b8bfbf1f7d7d7db87fff3e5f53a2febc70e102774b5c5c1cb2b2b2f8592a372a0c2535626363b985f9f9f9ac1a0146e5f9f3e72fae80c78f1fa3a7a787cb6ddbb68d53616121ae5dbbf6b2b50ca5d1757575456060208ffcb367cf38f3ef842a21b5d3d3d3b931d4ea9292120c0e0e723e4369b4adacac7810d495e6e666ee63b20602272727b3c6240ca53e727272c2ead5abf9a63a42da747777f3406edab409a1a1a1ac31c93b43a9ffbababab8b5040d0b0b53865ebc7891a1ab56ade29bea08d93459c2c99327d96ed7ac59c33390e45f41692abf0ea5294c22a1122aa1122aa112aaa648a8844aa8844aa8844aa8849248a8844ae88705a50c75e5c993272afb522a50676767ac5dbb966faa2b1d1d1d0ca51d3415e8a54b97e0e0600f6f6f6fdc6c6a126ab5f27ee8c8f03017a22db8870f1f0a483b9aefdc414b7333fa453ea97fead4296cdbbe1d111111ca50da80b59d3f1fd6d6d6c8484bc3b1238771fedc39dcebea6435fbfb1fa0aeb60e25c5c7919f9b83c2fc7c5cadab4363e30dde0dde111787a8a82865687d7d3dacadaca0396d1a3cdcddb12a3454c0f7e0f2a58b782080f575f5c8cbce41f4ba282cf7f186bfafaff89e8db2d2521c397c18b15bb722323212b76fdf7e056d6868c0dc3973307edc387ca9a9094b7333840607e3e79f8ee18e2878b4e810a2c2c3e0b4c016c6fafa30d0d5c5ca8000c4fdb01dbbe276204a00a94fef886e79036a89f11f8fc3448d4f307dea14285c5df16366266aaf5cc19ea4447829dc04500f9a9327e3b34f27c07a8e05be59b218fe7ebef0f1fe96b73a5b5a5a5e41af5ebd8a79f3e64173ea549888965818cf86b7972772b2b2d020f28e1f3d8cf5911170717484b1a1210c66ce848591214c0df46132db1036622c68eb994c4c096a6b6b0bed1933b0c06a2e9cede62324c01f45850744ed7771e3fa75eccfcd45e08a1530373181ae286765662c9229e65a98638178362828086d2a503b3bccd4d686a38d355ceced10161cc87d79bfa70743437fe05c4d0d364447c3d4c808933434606aa80f877936707376e2ae0a59b912adc2c494a1a2361d2d2dd85b5bfdd5d2407f1c3a5080aece4e0c0e0c7037ec4e4981874221064a0f96a6a6707574c0d7a2af177fa560684b6bab2a94d4b77ba17ea0df326466a4e3cce96a6465eec53e717da2a418e784fd969795c3cfdb47a86e015d6d2d18897e5e26cc4c497d1afdf9c2f8a70b73323334c05c5363f88881dab7370367ababf17df43a84070520397e278a8f1f67db5c24a63599df84f11adc183a576917d356053a6dca14e869cd80818e363c3d3c909f97c76a6f1446efee648fa55fb90bfb0de201d317b6fac5c449f87ce24418cc9a053f3fbfb1a1d45223615226a2b53e4b97e2e891233cdf531313b0d8c51916e2fe6c3d5dccd2d1e132a4bead302727616a74f0406bc14be8689f528d0ad745f0707343949821bf8a69d8d7d78bb213bf607dc41a38d8d8b016b3756722d87f0562367e878d1b3660a518245a8b9befde7d05bd22668d838318c9254b50555189dfaaaaf0bb1890bba2101d290d0d3d42e38d1b283d71120579b9283a7000b79a1ad12a6c98ce50e8f08b1614a57d7e5afa1c490561c0bdbdbde813e9417fbf800df171069df1d0754f7737da84d97488512633a3d3b3caca4a6c1f6be97b97959f2a1b5da4dffa7342b5a92b747cf4d695ffbdfef04928df544724544225544225544225544249245442255442255442d514099550099550099550097d1fd0f7f2928084729e844aa8844aa8844aa89a22a1122aa1122aa112fa7f41c9fd9632d415f29e2577317a819d5eb51f13ba70e142764cfd2742fe6a5555551c6d80bcc254a0e4d8161e1ece37d591d7d52777317a4d5f094a3110cccccce0e9e9c9efe453cc03fa24f5c64a1451800259502b29d200050420dfbe97ff9a93d71b05053037376747e1bcbc3c0e5c41611fb2b3b355524e4e0e8782205f3eea472f2f2f28140ad69242433094a23190072205a7a00214f9826248242424f0836f26caa70819a31e720101019cb66cd9c2da31943c0c2968024562a0f812696969c8c8c8e0ef6f4ba436554e911b28c802b57e34d604b794be9017627575353b535322ffe7b725f23c3c7dfa343f73f6ec595cbe7c99bd1419ca7fff63f950a0c09f6ad4b356ead1c7080000000049454e44ae426082),
(14, 'TROQUEL 14', '0.59', 0x89504e470d0a1a0a0000000d4948445200000018000000a5080600000046233d53000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000080e494441546843ed9be753d4471cc6f913927779978ca389191323b65833c9a889e3c4120b381a4b12b0e110253a0a78744541942a2a363a08042b8a1411bb22208a820db01750c0aee0937d963be680e3f6c471f2669f57c0ed6f3fbbdfef77f7987d7e6b0785debd7b87f2f272848686c2c5c505870e1dc283070ff0f6ed5b630bebb20a78f4e891ecfcf4e9d33876ec1876efde8dc58b1763e5ca9512f4f0e14363cbced529a0b9b919252525b2d3acac2c5cba7409353535080a0a828787879c1121d5d5d5c6272cab5340434303323333111e1e8ed8d8589c3f7f1e2f5fbec4a953a7b071e346b8bbbbc3dfdf1f7bf6ec313e61591d001c393be788d911479a9c9c2c01cc475353138e1f3f2e67b264c912040707e3ce9d3b78fdfab5b187b6ea003075be6bd72e39fa9d3b77e2cc9933b875eb96b10570efde3de4e4e4202a2a0a06834186f1e6cd9bc64fdbaa15c091b17336e6c8d939c3f1e4c913638b8eaaafaf477676363c3d3d11121222a1b5b5b5c64f5bd40a60e7959595888c8cc4faf5eb919292221b13dc9918cebb77ef222222024b972ec5dab56b51545464fcb44512c08657af5e9555c191272525c9b0d8aadcdc5c99132f2f2f6cdbb64d96354b9c79910056c7e1c387b175eb5619f3d2d252b9986c15e37ff4e851397b267ed9b26512f2f8f163d871f45c3089898958b76e9d1cf98b172fe4ac6c15db72b4070e1c80b3b333468e1c294b9c8561f7f4e953d9293b8f8e8eeeb41a6c11ab8f95e5e6e626d7c7b56bd760c74a282c2c940962886edfbefd5ea337178b846b66cd9a353878f0a0ccab04307e2c330238ad0f01b0404c0039039627572643b465cb1619a2ae022e5fbe8cf8f878b919321f1f05101717878080000db02c0d504a0394d200a53440290d504a0394d200a53440290d504a0394d200a53440290d504a0394d200a56c02f0ccaeabb20970fffe7d63f3f75745458575404c4c0c2e9495a1a6ba1a15623495e2011e843f7ffebcd323e6c77575b20dfbb970e10262db031a1b1b71e2c409798cbf69d326ecdfbb17ffa6a721322c14d15151c8cbcb9579e1e9707bf1ccf59478362f270757ae5c41f1b97312c043c1d65347138007dc9b376f161d8761d93f6e9838762c664e9f8ee80d5128110fd69b9dc2373737c9d3e1b2b2f3880a0fc706f1ec0911051ef0c6c5c763d5aa551d013cd2e7c1b6e7f2e598386e2cbeedd913bf8c1881003f5f141614e0a1d959766363032e955f44dc8eed709a350b3e0603f2f3f270e6ec5924242662556060c773538e9e568ac1d31393274c80fd37bd3066d42804f8faa2203f1f0fcc925f535d85f4b454b82e9887610307c2cbc30347c4208a4b4ae4c9af45008ff5b76fdf8e93274f2223231d8b5d5d3165c2781982f28b175b7340c3224be4c975fe3cd8f7fa1a9f7dfa0956faf94933a34c24392525b56d884c009a120c110d07c63678f56a4c9df41bb688c4df124936e9c8912308090ac29fbf4f17a3ef8fafbef81c0677771cc8ca129f158a41ee9080ecf60096290134162a2b2b101a12220013b14d94aec94b686e7e077f11b299d3a66386a3031c268cc38f8307619e93133644468a35102faa31acd567b338033a4aa6194c9b325902380396e4d5ca2b183d721406dadb8b2afb55ce62dce89f3176f468b8cc9b0f4f0f4f185618e43aa09f6311c0d3f7929262ac16a3982dca3456e4a55084252921016e8b166140efdee823623fa86f1f0ceedf0f7d4431f4ecde1d03ecfb628c0039ffe5043f91933c51181601dc8bb860fc7d7ce038691262440e0ee7e563674a0afcc4dffe5e301fce7fcc1695360ec3067d8f2fbb7543cf1e3df0d3f0e198eae080850b5da481972bcad60aa008fedede983c7e3c364547e3ac584084e6e7e721273b5bc09211b43a1033a64d43bfeffae087a1433147e48125eeede5653d44555555282d2e46b8f8dd65ee5ca48abaaeba7143ee35cf9e3d93fb12fdcbdcdc1cac11f53e758a035c172e448c584729a26d4444b84c32fdb53600ee45047047e48697999121c3735ad477437dbdac2293b84d54884adb959989b541c1484b4dc5393143aea11d6275b7d98bcc67408b857b3a5da947b5b56810db4893852f1f7ac99c0d8d3c6eefa69df68698292d16ab0e081b71d5b2139aa39d89df7a6c636e5cd3144a10d566f50bc7dc147d5fd9f48df6d101fadf160db02a0d504a0394d200a53440290d504a0394d200a53440290d504a0394d200a53440290d504a0394d200a53440290d504a0394d200a5fe3f00afe3f19a0c011f724d8606136f24050606b605d04fe60c68b97fa80342278b97aef6efdfdf026871b6cba4dd4b575c75c7cf9a7849cbdbdb1b0e0e0e484f4fc7f5ebd7614717897127995e1a6f317655050505707272c2902143e4ad305e5294d7c518264e89b63b6d5a02e9beda2a9ad80c07133c67ce1c383a3aca3b6af4e32480b3e015c98c8c0c9968ba78bcd764abe802d2aea741c78b6f34ebe8c7d1966cbdb2f7ead52be986f32e53585898f4f809b1f4ba83497c869dd37df5f5f595d7fc387b73b502e8fabd79f346fa9134fe9974868d7164d9b67705f937269123f7f1f19131e7bb15849aab15601267c117003813ce82b1647cebeaea8c2d5a72c6ca4b4b4b938b8a2f1bb0382cddcdec0030858aab9b77fc08d9b76f5f9b9cb0331aabac77020823d4923a004ce26858760c016b9aab9497e33833c69c09e5cfc5c5c5c6272cab5300c545c799f0550756195f2de19d58de264d4d4d95b3a2ed6b4d56012c335af0ec9849e4bdc1152b56c898f3ae6cfb845a9255002b879d70f4dc0cb988e817f3f622df89b145560126b11cb900397a8edcdca456c92600c5d974651bb719d03501ff01bbbda18a1edcbd210000000049454e44ae426082);
INSERT INTO `troquel` (`Id_troquel`, `Nombre_troquel`, `DCM`, `Img_troquel`) VALUES
(15, 'TROQUEL 15', '0.49', 0x89504e470d0a1a0a0000000d4948445200000016000000ad0806000000b4b98f8d000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000082b494441546843ed9b794cd55716c767da6932ce8c69ed541d75a62d080f3116685814d95c404aa90b23f0ac0d2020d6111e65e95381564781872c82b8a0b8a0a218e39688588d067143515c3105778ca88812352e28207ee79e3bbfdf1df4bdb2387ff8cffd262f2f79f7fe3ebf73cf39f7f7927b7ee777e844af5ebd426b6b2bdadada945fbaa64ec12f5ebcc0fdfbf7f1e4c913e597aea943f0cb972f71fbf66d9c3e7d1ad7ae5de337e9aa4c8269d90f1e3cc0850b17b06ddb362c5cb8101b376e44656525eeddbbc75dd3994c821b1b1b71e6cc19ecd8b103f9f9f958ba742956ac5881cd9b37e3d8b163b873e70e5a5a5a94d9a66504a6609d3b778e43162d5a8455ab5661efdebd282c2c447676360a0a0a70fcf871343434285798d66b60f22959bb7dfb762c5ebc987f76edda85dada5a94969662d9b265c8caca425151112a2a2a3a74890093a5e4577201594acb2f2e2e464d4d0d9a9a9a70fdfa75ecdbb70fcb972fe7f0b56bd7727f9331a6c4c174e7b367cf62ebd6ad58b26409f7edf9f3e74d66c1952b5750525282bcbc3c6cd8b001e5e5e5a8afafe773c938551c4c039b366de296e4e6e6f2d47af4e8119ff0a69e3e7d8a5bb76e71d7a4a5a561e5ca953878f0206edcb881e7cf9f2bb314300d242424203535955bdd955d76f3e64da4a7a743afd7c3603060e7ce9d3ce755713059a9d56ab95fabababf9406722eb2888616161f0f5f5e586913b5571704c4c0cc68c19832d5bb67429f955917f8383833168d020f8fbfba3acac4c1951c0f1f1f1183f7e3c0f4a7744018e8a8a82bdbd3d264f9e8c43870e29230a38313111010101dd06d3468a8d8d859b9b1bc2c3c371f4e85165e40d306d86ee887cda21981c4f3e7a1b30c5c7c5c585075182255882db498285245848828524584882852458488285245848828524584882852458488285de2d383030107bf6ece13f7655740c1c1717f7dbe0d9b367f353283ad8eb8ee84491aea533a1d0d0501c3972441951c073e6ccc1881123b060c102941f2d47f5afbfe26e7d3d9a9b9bf924d2adba3a5ca8aac2a9ca4a9c563e1b0a0b3149ab85939313a64d9bc68f7f5571b0c1900a73333378797ae25fd3be474e5616ca4a4bf1f0e1433e89b4abb818e9060366c5c72371a61e49b36661b276126c6d6c61f3c517d04545e1d4a953ca6c059c9999815e1f7e887f0ce88fc11a2bf88d1d8bfcbcbcd7ce2ad3d3d2e0e3e5057b1b1bb83a39c2c3d9199ff61f809e7fe9092b8d06f1ccd7740ea78a83333232d0b7776f5832abad2d2c30d4de01a9f393f999b12a3db3d46ec8107cdaaf1f6cac07c181dda0678f3fe1fddfbf074b76cd8f6c9c4e0e5529ae30c0daca8a59e489713e5fc1d96928e6cdfd37ae5ebdca27d1b970b44e073bb6648bcf3e83b3a323bc478f86c67c207a7df4113fdb8c8b8de5e9a78a83e7cf9f0f97e1c3a19b3103fad8188c74f7400ab3f8f2e5cb68696de5d19fc4d271b0a5257af7fa18960c38def71bc446ebe0357a141ceced31233212274f9ee4501207cf9b370f6eaeae88898e46825e0fcf912361484911603afa9d121404473b3bf4f9f8aff85bef3e707776418c2e0ade2ce08e0e0e1d83637ff881457ce66b603af6bd5853831fd952c7faf8c0da5283fe7dfb61889535c67ded832f6d6d60676b0b1d33ca282b04986d4f4a23af51a360484dc1a58b17f1f8f16354324b5299bbe2d88db501017077758383dd97cc3516e8fbc92718cc7c1ccbb2c2c8c704e63e66cb99c9a2ebc9c019e9e97c439ca8a860819ccb56138d750505f8a5a4049b8a8a30f7a79ff0f9807ef8e3077fe05911c7ae3302a7b065dbb2f409983811df066ae1c2723493a520810f1e28c3f488081ea444b69a552b96237fd95224eae3f1f7be7df0c1fbefc162e0407eb86d94c7541d30373387eb70178c707387cb3067e46467a38605ed18dbe2d16c251a73739e626141df21323c14215a7f66f100fcb9470f6858b6d0c3c8084c796cf6b919dcd9c3c4d7e76bf8fbfd136bd9b26fd4d6e262750d96e4e662a883235c870dc357a3462270dc3708fd568b31ec46e486216ce344b3e051154d1507272727c39645362438183f27fd8cd4e414ec658fd07b0d0d68bcdf880af670499c9580c8e9d3f17d7818e259fe66b3182c60068d65dbdf916d98e96cecc489131c4ae2603a4aa7c37f2ab2dcbd7b1777d833826a4eed2b0c5458a1da47355bc1a54b97d903ea11df99494949f0f0f030fdd8a407fd4416382a92108c4a6af4ddbec4436a6e6ec1b367cff0aca9096d6daf781d6a26cbfbdf7c1e13980eff77efdecd7fecaa28589dfe35bd0df8ddfe994ab0042b23122cc1122cc1ff93040b49b090040b49b090040b49b090040b49b090040b49b090040b49b090040b49b090040b49b090040b49b0d0bb03ff3f1d2c5420a422d6d4a953790f8e2a0ea616223f3fbfb7025381905e2a080a0ac2e1c3879511051c1919096f6fef6ebba2aaaa0a111111d06834983061026fa252c5c13a9d0e5e5e5ebc19ad3ba28a634848082c2c2c78a1d1084c1d58e48ad5ab57f3f6adae888a8954589c32650adcdddd791b925169932ae6d4d8979999c9e154dea40e3753a29739a82b8eba0b697e4e4e8e68626bdf6fc6c1540f25c7af5fbf9e77bb1d387080bf4860aa458edeb9a0e853eba2da14481d70046d5f63e560aa8d920b280fd50bc85fd405a7c2a9518d2ea6d749d6ad5bc72da539f40e06adeecdfa2a07936889757575dc726afca396446ad9a2ca2ef993dc436f23d08d699c5ca7424d49805551031f556bc92a6a55a48e36b2526d5fa466cbfdfbf773577524233089aca4ce35ea18a4c63efaa6a0527ba2ea538a4b47320926b7105cf539594a2ba0a052919b6ad39dc92498448d7de4730ad09a356b786999a09d59fa5f01ff01f69bac6134f17ed00000000049454e44ae426082),
(16, 'TROQUEL 16', '1.00', 0x89504e470d0a1a0a0000000d494844520000004b0000004f0806000000a3df38fc000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000122d49444154785eeddc879354f59607f0fe1b765fd5965b5b5bbaaf7c5bf5dc7d25ba52260494a064100414138e591173ce5914044111cc0226cc98232a064c282632e69c733c7b3f3fe7f2da79dd337d7b7a065f95dfaaae99eae9be7deff79ef33ddf737ebf9e52fc819af1075905f0075905d0e1647df1c517b17af5ea78e1851762fefcf971fbedb7c7f4e9d363d2a44971de79e7a59f175c70415c78e18571d14517a5c7b469d362ead4a93165ca94f4daabaeba2a6ebef9e6b8efbefbe2830f3e683e72e7a3c3c97af5d557e3fefbef8fabafbe3ace39e79c38e49043a257af5eb1c9269bc4461b6d149b6eba696cb3cd36d1af5fbf183a74680c1e3c38fdee355b6db555fa3962c488d87ffffde3a4934e8aa79f7e3a3efcf0c3e6a3772e1a4e96287afef9e7e391471e897beeb927aebdf6da983973669c7beeb971cc31c7c43efbec93c8e9dab56b6cbcf1c6b1f9e69b479f3e7d62d0a041b1c30e3bc4f0e1c3d3ef7dfbf68d1e3d7a24b290b8c71e7bc4a1871e1a575c7145dc7aebadf1c0030fc4638f3d96c87bf3cd37e39b6fbe693e838e43c3c99a3b776e9c76da69b1f7de7bc72ebbec12c71d775c4c9c3831a5d98c19331271d26cf2e4c971fef9e7a774f3dce5975f1eb366cd4a11e877cf4949ef938ade7bc92597a4e81a376e5cecb5d75e71e08107c6f1c71f1ff3e6cd8b952b57369f41c7a121647df7dd77f1d9679fa5a83aebacb362ecd8b12922ba77ef1e471f7d74baf8bbefbe3b45c1d2a54be3e38f3f8ecf3fff3ce999c7975f7e195f7df5d56f1e9ef3f8f4d34fe3dd77df8de5cb97c7e2c58be38c33ce483761db6db74de93a66cc9844ba6813d16fbcf1467cf2c927cd67d658b48b2c17f2f2cb2fc79d77de99a2053173e6cc49e9f1e28b2f2662de7befbd44ccb7df7e1b3ffdf453f33bebc32fbffc92f4eaf5d75f8f254b96a4cf7003aebcf2ca14c9ddba758bdebd7bc7c9279f1c1f7df451fcf0c30fe93d8d42bbc8122d52841e9d79e69971eaa9a7c6b3cf3e9bc8e92c20e489279e48c563e79d774e9aa788a8ba9e5fb16245ba518d40dd6449bb134f3c3169c751471d95f4e4aebbee4a29d6d96027a4a082c266b024b956de76db6d49cf7efef9e7e657d78f9ac9924288a01d3cd3bdf7de1be3c78f4f22ebe4782829b7b6e11c9c9b1ba8fa4e983021aebffefa94b2ed454d64c97be17cc30d37c491471e994afcaebbee1a4f3df554126865bbbd7ad44838174561c18205e946eeb9e79ec9a72d5bb62c4944bd3a561359aa13d116e2a79f7e7a228c46ac8d942b02512635d993c30e3b2c599a3beeb823dde07ad02659ee124bc03f09679e86e17ce595577e57d15409c49f9ec90a379a19969a2a783d6895ac1f7ffc3195ea471f7d3499c35b6eb9255e7bedb54e71cb8d06cd1a32644834353525f34b778bf69955c9523da499835e73cd35c9f8a9766fbdf556f32bfeb9a07a6b955449d1c5173ef9e493cd7fad0d15c9fafefbef93a1bceebaeb922327924ab31eac1ecf22ec67cf9e9d5a98871f7eb8f9d9da21c25dacd477f3da93fedecf1bd25dad93ebac1515c952356893b27bca29a7a43b22f58a386291e9f55cbe52eec49ca01b5014b9f68804da490ab442f590a615e2faddb8638f3d36196bcfd572ac8a649914a81c2e505fa704178576c345b11737de78634a63a16f5c5314220be92fbdf452329ae65c7a416d4f3d702cbed07190e626c81a37a535fc03596c821e8f10e6e9e7c28b406916eedcb30aaa5cb31ec8e37f8a4234930617a9b5d24833c434b4ad0bac84bcc28b78c7bbecb2cb52856fab015f4396b471a7cc8990e5202eb0e8c92049d5a40b2aa89097428d6a68118e24cd3263ac0f9492f580b4208ad48832d1d61a12592e44343cfef8e3292ccd8e1e7cf0c1c47e11b2a44b4e9459d44d37dd94ee56a388825c0b698d56cb14555430a03ebf285ce7c5175f9c0a99f36e0d2517621e8518ed8cc9017197c352b24803ca6ae41145a7162d5ad450a2ca616e455bd9009920ddebe94d57ad5a955cbee8da77df7d9b9fad8c122dc8fb28176992b070e1c2a411b55ea8d72196f113513951ca7d474174496f91b1fdf6dba791f3430f3d94ac4d911bec3acdc68c98060e1cd8ea7b4b1acbe79e7b2e0dedce3efbec64174459ad409488e2a5a420a2ea290af5c267d32dd3593a262b8a5649e7aa529bfdd3bf6a4152e2a9889b4923776bb9a9d6dc17394852f5e4bdc85c1bcdb56872934c16468f1e9da4449ad60a42cf3e9010d1e9bd95b4ba240a98b361c38625d3c817d50a33f172a218c6b5d55cbbe9bc97058cdd76db2d9d4bad135bc181204e4071431c59698992f6e3f0c30f8f912347a63ba2a5680b08f9faebafd71045a79c9c91f2da82731221c4fa80030e4801600020c56ac914ef35d894d20a5d25cf557291eec611471c9106ffaa605bc835aa3ca24468d12ebe23a0d13755b0cea852aa926fbffd76f35f5b07fbd4bf7fffb44cf7fefbef373ffb77945c305167ce54c4b65cac034a3f0b027944218a7ed5e3731a0d5af3ce3befa49b4f5a387de9558b5f149d5b6eb96555cd2b11759580211519d52e38b706f61ce48b9faaa830afe5443a1b524a3b236b88fe41071d5451875a62f7dd774f53609d870028d7e09270d59c6a5394cd963ec38b916859499b21acf38d1a6ba3f21501b3cdceecb7df7e49f48d63784a034dd75ae9261b1e484344b350e523a99295637375cb4595de4cf8f48852951793aa586fc458d98df9c9233b4e47397d23655221131060eaa1da79bed22c5e96214b772073ca8d75a94b972ec9cc559b06085dfa4403f47a840fdb9c6f51487127e80edb5de3841d4f65ade49c9148439db028a9073e93859096a2cc3c4d5f49774d315a4271306d412ecf59de42a5c8326baa96524e982e89bc4a072f82f7b30fbe69ee0dd12313d1adb6dc22f66eda33e6cc9e1dab57adfe0d59bf64bf7ffcd1fb31ffc1fb63ecaebbc409c79f9034b5bd701d6e8e6b150495f41991328d9d325440728ed2a851a3d26a7267e88fb27e697602ebfce94ff16ffffa2fb16dafde31f5820b62e992a519597f4fc3cf3ffb349e5cf0484c396f428cccfabe534e3a399e5ef874f35f3b161c3cddb2d22ec264408e9227cdc7db1b35b540aacf99353bd65f77ddf8cf75d689fe7dfac4b4acd55ab674d91acdfa39fbb9f8854531edfc89b1f76ebbc689c71d1bb765cefccd37daf67f8d007d666877dc71c73489285fc92e1d7cf0c14900cb85aca390c6b90fcf8ffe7dfb46d70d378c114306c7c59936ac5cf1ebde2ada65b87771664d466511b5f5169bc735b3ae8a15cb97c537d9df3aaa089483f85bfab7818ea9e5217394cc82b42d9db1f345615895e9d3b8ace1edd3b347ec306c485c34756abcbefad7298151c925599a0ecf4e74fd75d78b0dd65f3fe65e3b275e5fb93cbefae2f3f8aeac8c77149e79e69954ccecfd32f6296fe14a2aa1fd5595ca684761ea94c9b1fde041312223451a8a2c5175e9cc1931a8dfb6b1de7ffc7bfc65bdff8a5eddbbc7a1e3f68f8b264f8a07efbd2756ad5cd17c848e830ac87b6eb1c516c99f950f164a867ded59ffaf0753ce9f14c3060f4ce23d3df335bf2e64bc1713ce3c3d86f6ef1bddbafe5f0c1b3020f61abb7b0ccf5eb75fd31e31f3c269f1ccc285cd47e83830db1cbf3daff6bffe862ced0e1fd5596431a113cf9d1043070e88d12386c78c4c9f88e892d796c491878c8fa1fdfac6c82183e2f8a38e8c8913ce89de3db68a3e3dbac7e1e3c7c52d37ce6d3e4ac78117b3f572b3cd364bf33153e31c25f989cdced02cc8c91a9245cee8112362e6f4e96904bd68d10bb16fd3d8e8d7ab67ec3c72879894bd6656d656f5eed123ba76d930c68c1c11d3b3e8ea684843b378db2dff41b3acc159716e6bdad02820ebac334e8fbedb6c1303b7db2e26677de9abafbc1aefbef36e9c9695eaee9961dde02f7f89de5bf78851c387c77ffff9cfd1b35bb7ec6f27c782c71e6d3e4ac78175e0b38ca98dd9cb77dc946cd267edab9952e59ad355c9aa4d248a4047303513f5319919de6dcc4e31238b2c3373edd30dd75d1f3b8e1a1d7ffbeb5fa3cbff6c109b6fb24974f9dfbfc55e4d4d5911baa3ddd1effcf5bf7e56eb47f58e56e38d76f052be17a264633ea7aa15a80417a1693681f4c6f6781def75b2f332ab22a2a6660deb7d59739b47f5e21717c7b4a9d3625f7be877da3123734c8c3f705c5c79c595b1aac0224a35e41b4b58143d9f21414bb051224a7431ebe58b3725df70b00c546932087923cda0a99ab5cc84aa41ffa7215ebe6c59bc98e9d4cb8b5f8ab7b316286fca450ea17f64fefcb873debcb83d73ee8f2f5890fad2f251493d30924144de48db3751a96bb1bd4af058c461a90c1273947af6ec99c8aab6ef0a393e84d8615a74193d1bd5569a14b406af47ccf719619ae5d6f06df69a7a97e5cb216388b40bd7a918bd98cb559b3a186c1a2c1847194595bf26b53b585422a5835c2e87d471811866fd4559be48c11f09e5a2a4750644a9151f7b36b871da8c3891ed7aaa69166fe53dfc15a2caafad6484ea2b6c98378ea894c739e4b989a908f31e11a75a54ba436b1b067dbebab2d34e3b25df44b46bd15b5fb0d2409b36b41c8696ecbfc2a468b12c564de8c19b699bf0b4a8a95a30718433d79ddf03448dcec485fbc6c5a5975e9aa2ac2d882266540b586955bb942f4c4a47076d6be9dbdd31c39692b64c4b47a9a9c27496576b0da2dc4cca88c51e08175eee95aa819d90badb65de8f66552a782507b6f221a74f38e1849a165945185f96cfb62d7b239d68ae6de453037bb70c3569715b8542442159ea2964b2a6d2c8aaa484220959566339d85a61d547a5b1e28334a9dc990d79394888ebb0b26e39cb75d4a251a0e2f39152d72285cca964c04b4c970556df40f062a2dd9ac8978336e4a539d730e9a8e2746685549814aabcea91865aaf0190a3e5b35c26fdaa9d7b493ab90b86f376bf590a2ab2d7dd817d401e61b6fc08e7ceaa904841941e57e5b3d820156b8508b2a18d7d329a695901cb9136b331983685596c95ef42b1087c80bb83b05cbf3aab42fa1ca2ec42152837aa480fa928a9eefe0b800d25ad61cd065cd121badc1d231b93cba2405ab97e1549e9a2601a8dc47dc524df9e5dcf3973f3da1b1129155bc31ab208b314229222ccce5dd15214a24b9594ceb9cb77ec5ac5b62d282a8e69d5185176eb918da2c7f77a912f1a0d40adb8b7b5477f0d59a2c24970beaa8912aae16cd9feb405114a3334ac08b38aadd36f4f035e8e7c5b371f65e6446bea8122447e44159fa9c8b5e5c7d690050e20dfe5bfffb5a04550dd8aa412c11491085321a5482efa08ab57c71412c7767103060c484b5552bdd6bd572da175b36f43f742364c482b19d172fc86ac1ce639aa4b535353ea01ed6f2a82bc4272f9f44f07afdb17b57c5d51381e3d32edb077cac2b09f450b510e5964942d9a1025fdb4436d8d812a9205de4c40fd6f06a25f8f788234566da4a4126f265614228ac5413e9b53aff145bac511422ef53c9c5b6b76a11c55c9727252885133b6b0e3a5a87ee510f2aa97a241178bc245920263a2f2615c51901844994270faec425ba9578eaa6439b0bb682a212a88bdf2cc2d579bd75783ca233adcc17a09770ca4d55b557daed4d3a5d8376a21559417395e55b208b1bb486308a1aa631b8ed9b40f69ef98b7b3a12db3c1384f3f4150cbd8a61c55c9c2b84810febc8dd1b30a69810361aae43f0344a32cb1bf4b75b7cfdd24c28e9ea237bc2a59e5106584d1384705b1cbc458e7f73092690dac0af9b0d8c23b1a5416f9e6454bb4499608135d3c18e4fbccadabe5774938afadd14c25208911e69df8281b3c9caf6c684fbf5a13592d4b2ba76bc7b2bb65b463c8e63922beb6e1c62245af67fa6b46c7c8ea53db7b436b4ac396150379ac8496839b4618f389b0f66c96ad17083212326ae19b106352ca1ea87eaa7a23daad9ac8aa0627a75272e8eea470cf8d67be52a464b7a7e4b7846339a61ba2c2f91c8dbba283201eca36479e4e8bc5e3d56b575aa25d64812823f474ccc4c2499b08e8db9467c431a452c389d77b875db059ba16c7d77c2ddde55f60b0c040c4fd7b3bdf6ca3a545665ab5a2dd6481d4e3ccdd4d04e9dbb4485b6fbd75fa1e23cdf04d2be55b24b4d4c0d6202211cc695b0dd7cb492dc4e82cfc44160fa56147643dfd672d6808593990a03a8a2ae960f79c753bd357ad857f7e484f7cb50d71166c459d87f7d11b3f750a1efe4e6f58160b0a4a3f4369939994536088b81ba1fa7574456e2859c0c0ba501146c76818f72f3545985562b3321bc6cca3f49e2eda84c334411b8208530f7fe3e7a49668f25ea43b96354b9e8f5e55dbe4d168349cac96904608a46b7c8fa57fd1e1df0c200b2939313979fe779fc8f43ba290ae3f5548ac463562c3483de870b280ff922274c78ab76ec07050044a4715d523ff3dff290d35bf2c09e3ebbd5a944655d66288f87f91b2d88fbd0b973d0000000049454e44ae426082),
(17, 'TROQUEL 17', '0.39', 0x89504e470d0a1a0a0000000d49484452000000250000003f080600000067d301fe000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000a64494441546843bd9a8753547912c7f93ff6ae76abb6d6dabaabb24acb3d5d9415972018c000464e1411454041c580010c58e680110c28e6ac98d79c73022598738ea898edfb7dfa66e6186ee63120f2ad7a35c3bc99f7fad7bfee6f7fbb1f5e52057cf9f245debe7d2b376edc90f3e7cfeb919797e774f0d9b973e7a4a8a8489e3c7962fba567a892519f3f7f96ebd7afcbdab56b65e5ca95b26ad52a59bd7ab5d3b17cf97259b66c996cdebc59ce9e3d2b1f3f7e94af5fbfdaae608d4a1bf5faf56b29282890850b174aefdebd65fcf8f13261c2047d1d376e9ce3484f4f973163c6e8ebd8b16365cf9e3df2f0e143db55ac5169a3f6efdf2f8b162d92891327caecd9b365d3a64d929b9b2b1b376e743ad6af5f2febd6ad93acac2c898b8b9351a346c9850b176c57b146a58dc22b8989896ad4d5ab57e5c183077adcbf7fdfe571f0e041f568fbf6ed65e7ce9db6ab58c363a388a3376fde489f3e7da46bd7ae3277ee5cdb196bdcbe7d5bb7312c2c4ce3eff9f3e7f2fefd7bcbf8f2c828b2edd5ab5772e5ca15193060800c1c3850b7c713f03bb6b37ffffe326fde3c3975ea947a9045ba834746e1a1bd7bf7ead6e1a123478e781cb42c88dfcf9f3f5fba77ef2eb1b1b1ba2028c51d3c320a972f5dba547af6eca9697ee7ce1dcb9596075b4572b46edd5a5ab66c299999997a4d77f0c8280279c68c19d2a64d1b5de5bb77ef6c673cc79a356ba443870e6ad4f4e9d3e5eeddbbb633ff0f8f8c2296264f9e2ceddab5931d3b76784c8265c1f60f193244bd9d9191a1f4c0d6ba82a5512f5fbed47201436314c7b56bd76c672b074acd89132764f1e2c54aa653a64c715b7e2c8d229d972c592243870e959123476a5979f1e285ed6ce54099210cb66eddaa1e23e06fdebc693beb0c4ba3f2f3f3253939599a366daaacbc6fdf3ebd7855f1e1c30725d384840469debcb9141616dace38c3d228523f2222426ad7aeade97cf2e449db99aa039eead7af9f040505e97b57706b1429bf6bd72e898c8c94468d1a29695288bf1548194a145561f7eeddf2f4e95365f8b2706bd4ad5bb764d6ac593269d2240dcee3c78f5b728ba7406560d8962d5b64c488114aaa972e5db29dfd2f5c1a45cab3559413d2f7f0e1c3f2f8f1638d896fc5a74f9fa4a4a444b31a8aa1b8a33ccac2a551fc70dbb66dd2a54b17993973a6f2943b4ea92ad8097f7f7f25546a63d9ebbb348aba043751d9290978a9ba0147b56ad54a3a75eaa4ea014eb41be6d228aa784e4e8e444545a9aca5d257373082f020138959e8816d054e4651cd11fd7869ead4a94a967c99edac6e90dd478f1ed5404f4b4bd36a618f2d27a39e3d7ba686b00228e0e2c58b9a7155a9759e80a2cc4ea04c7bf5eaa50a043819c5b6d1000404046866e0e2efe1253b4a4b4b55c743d0a1a1a19ae9c06114de40730f1a3448ead6ad2b2121211e7ba8aa9e24b0c9f2e8e8680d7a44249f398ca2fa6fdfbe5d2b385b0771ba02ec4b5146e8e17e8293bfd97ab69abf21480e62d4fe1e0de64a18725f341aaa01a23e7dfaf4ff8ca2d340c8612d2af1d8b163b633ce28366cbc7bd75fb2cc285158d96e1c0941b1ddb46183ac3629bed1bc6e358d68ae69c1d69866d59d84664130fc06f37d029e4c74188541742a741ed4a4478f1ed9ce3823d7105deab06112d1b1a30c3792e6a25112acf6f0a14332db106d6c4c8c7430fc16656a66cfe8eed2eddf11d2d6c4cb64e3857c93d9e541cce2c903070e48525292ca24875183070f96f0f070b59636db9d06cf9c3347c28d2cfe47ad5a12665e4f997274c3b4f094a229e6c69c6be2e3237e8d1b8bf76ff5e49fb57e919f7ef84152ccf5d91a77e09e941c74961a85b5f1f1f19a0178eaf2e5cbfa4557c0a8d621a1f2e3dffe2e81fe0172d2a849c45b7171b16edd28b3a8a4be7d25d26494cfef0de4979f7e945f7ffe59e69818e53beec0b9d1a347eb6e79119c4c47f01006d1865b4d49f2f2f2252b334bc2dab6956641c172f6cc197963dc0fc89c5253a2f61b3d9e3e324d8203fcc5b7a1b7f433377a6e12c18a5eb0036f43a25e145b6601443f4476c6dc843d76074a0efbdfc77836383050b7a4a45c195a92bd507a9898f2f9d76fd23c30402619eeaba825233b894db8ca8bbd5cb06081cc31dbc26404dd5c5e7495477151a10679902159d4e3cb72ba3d6d688ab434c6f8ffe12309b1bd648321c88a80d1780b2af2e2a274bda801529af4ae48375d3131973a7cb80419e9711aa30cf3db516a561cd3adab04fdd944a223bb48b6a96d05e5449c2b40c0ec901a05bf50efd04dc4132ad0aaa506d000d9c4f621d6b818a4595450284b0dcf9075e1ad42256751b6ca5d4f60ef76d428da28ba14d8948a4db0955db92bc0378393074ae09f7e6a147106896e361c969c94284d1a3594c4f838f96bc77679ffce3a14ec80fd7190c6148cca1fa9a9a9aa99f15a45c38b0bc690bea64d6ad8a081063ad99a673ade0c932ce1a1211213d54d169b602f2cb8e4715dc4a32490661f6ee303d894ce056647aa5a0103fa272689afcf1f6ad43da32e4e98c662fcd874e918d64616cccbd2cea7a4c4737188a757ac58a15ce5204ffa3a240b1eb3224f70d5d0c88ce919921017af5ea62461688ef1ce98b454e3c973f2a9020a280fee49dd658ee528333d7af4105f5f5fed888913776ee773164132100710269f91d2646d4574e20e781c1b68569c6a1f8dc230536ce9f11060aee0698c54065c937ba23e391c46114bc4157a0a95800aad29e00038925d22d91c4621b468a72937bc479fd7044834b21d3dc7589bcae2300a7e42604d9b364df98a21574d004ec4015011818e431c4621670f19a186b7fa1ae90199d604509d0801ee0b7122611c46e146240cf285413c3afd7b8300676681415001bb4437ee300ac039c851a881b6a726c0b889211a8e60fb90304e46a167525252a47efdfa3a5efedec053340cf4987e7e7efa70c9a9c5025469a21f2f31c5c595566af15b81baa0b4c08fc1c1c13a2a004e465103897e08946d643bf9e1f7204c80130872989cc95e7676b67eee6414120412c35bec2fd958d17394aa8285b268a6cfcc2e081be654c0c9289815cec05b303cdc41b5ff9689b03b10162c1a294e1541dcf1377032caaefee86679e2841aa553ae6a91b502d764b8c13d3870847dd0eb64941d18c60a7816c3934dab96abaa2054d836f8892d84345d0ecdece0249eaa57af9e3e69e0a97a75830ac2bc9300270359b83dd35d1a852e6280e5ededada28f80ac6edcbb774f1a9bd69eae9c9967d927632e8d22dbe80149551e5e63143faa0ece22ebb83edb55a74e1de5271ebb419a76b8348a2f204f1909c1b83c7d2208e9a66918519d642ac14a72b83af0b65d89f25db68b9e92669770a0830a342d1ac35ee66265e1d228c06a283bfc23c470d378320dc1732d5ab4d08b31e92348e93ec81e521aaff29e024b9ab3f5280eea5ab366cda473e7ceaa2c196240ce18c6e2596859b8350a506618fff1cf0f8c9699cc70710a3686c5c4c428e9717306242405af486b5424a31d3cc1d3501e10a1bf29be2c06c3dd8dc22d8dc2f5ec3d828f21085c428b8fc4e080f9f10eaf764fd9ffe67b1c7cce77794ff2700dae458fe70e964601e28398b0cf2f7135e94bf921019885c3c4ccc0392853c420d31b1ec922e2e8235198f67928d72a9b6de551a15115818c2c1bd81cc4a3bdf5aa3c44fe03c06bc3437bd287630000000049454e44ae426082),
(18, 'TROQUEL 17B', '0.41', 0x89504e470d0a1a0a0000000d49484452000000240000004e0806000000486fb4a4000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000dac494441546843ad9af9778df716c6ef5fd11f6edbdb61e9ad21a8a2b412c44cd1904905418d5131c44c105a3335b5882189a062881862ac1a6a9e674a154507a5b4a53a3f777fbe37c74ae2bc47ce49f75a67b5cef0becfbb87673f7b7ff32f3dc17efffd777df7dd773a76ec98a64c99a241830669c080011a3162843ef8e003cd9f3f5fd9d9d95ab26489162d5aa48913272a252545b1b1b1aa57af9e7b8d1c39d27de7e0c183faeaabaff4d75f7f155cfd717b22a03b77ee68cf9e3dfaf0c30fdd8567cf9ead0d1b3668ebd6addabb77af8e1e3daa93274fead4a9530ef4eeddbb959f9fef00ce9d3b571f7df491a64d9be61ee0fdf7df576e6eae6edfbe5d70f5c7cd2fa0bffffe5b0f1f3ed40f3ffca0b367cf6ad9b2651a326488a64f9feec03d78f0c07dfedb6fbf390f167efdfaebafeeb3fbf7efebe79f7fd6bd7bf7b471e346a5a6a6aa5bb76e1a33668c76ecd8e1aee1cffc02ba7bf7ae56ac58a1850b176ae9d2a5eea9366ddaa4ebd7af3b10c11a00093bde1b3a74a89a356ba6356bd6f8bd965f405f7ffdb5c68e1dabd1a347bbd81f38704057af5e0d18fb92d8ad5bb73475ea549757e41bde231a85cd2fa0cb972fab478f1e2e81d7ad5ba7eb376eb8a72cadddb7302d5fbe5c5dbb76d582050bf4e5975fea975f7e2902ca2fa03367ce283e3e5e83070fd601ab8c7fcab8f1a143875ca293f084f0863d2cb9e7b3c700f1a3c3870fab55ab561a6e9571fefcf9824ffe19fbe69b6ff4e9a79f6ad2a4492e6c00a4007c560410ee8327a88aa49e3d356ce8106565662877e54a2d5bba44c7acc46fdeb8a90b0672f7ae9d5ab278b132162e50c6a2855a6cdf5bb6245b1bf33768cbe6cdca5fbf5e2b7372949d95a5259687b9ab576bdfde7d0ed0f7df7faf8e1d3baa79f3e62ea76edebc5980a01820f8015ea1c2465a990e1c90a27ec9c9ead4be9d62cd6399f644470e1fd106bbd9e48913141f1dad562d5b28a655947d1ea5b8e8d61a327080461b5f0deadf5f1ded77512d9a2bd6deefdab993a64e9eaca3e6fd5b5671ad5bb756d5aa55357cf8705dbb76ad00413140c473dbb66dcab2a782cc06a6f47737ac5cae9c5e78e6698db5aadbb665ab165942f6ecde4d95ca95d5ab15c3145eb386aa577945e55e2aa3f8d818f534be691313a3d75eada2179e7d4661e55ed61bd5abaa6bc744e5ad5aa94b9f7f6ede69a1b0b030573824b7cf8a00a2bae09c3973e6b89690366ab43d796b5578e9bf7afaa9a7943a6c9836e56f749e4a7ef75d45bc5e434d1b36509c79a77e9dda2a57a68c123bb4d7502b864e1d3a3890cf3dfd6fbd12565eaf550e537c540b2d98335b870eec5774748c6ad6ace918fc8b2fbe2840500c10e19a31638663d5ed9678fbf7edd78a9c154ae9db4f0debd6d568fbf11eab8c4b172feaa071d3fab5799a336ba6faf7eea5660debab867964d284092e6f46d9351a46462aaceccbaaf3464dd578a5a25a366aa0195326e9f0a183768f914a4c4c74c94deb81e1b14780a82e7a535a5a9a922d6f8e5a5f22f9ce9f3baf7956a66d62a295963a4247ac2af8310570edda55655b3277496caf7ae16fa85983faca5e9ca5d5560469a3463940e52d8c00ad64c01ad5ada3c9e3c7b987993a759abb0fa901f14292106f114094239dba53a74e3a7fe1827b8f44cff9f863756a97e0009d30a03ebb73e7b616a4cfb390bda5c6f5eaaa4f524feddab943eb8d4cf150fd3a7554e6f9ffb850bef8ccb37abd5a750d1e3050ebd6aeb548ccd4304b8159b36669d7ae5dfaf6db6f1d1f3d0204bacd56aeddbb77575c5c9ccb270c2f2db5b24d6cfbf663808e1f3fa6b491a96ad1a4b1dac5c769fedc39960f972ccff25d1ed50d0fd74b2f3ca78a65cbaacc73cfab4ac54a6adf36c1551b52e6bdf7de73f94a21f958bb08201a1e601a356ae4f808a32992c40971b19643c31f01226c0bd3d3d5feed78e79d943ec9dab97dbbee9842d8643cd6bf6f5fd5a955cb2aed55a3871835b01cac6965deb87e7d75efd245132dd7500f14cf5af3187944d88a00827f20ab707b3228800e434384fcda18978c1a3ecc0102cc3ecbb748fb5e448dd7949cd443b92b729c1ab87bf79e25fb3af5e8d255e1356aa88575f639a6a5fa25f756937a916a68d5d8312141532c9967dbfb005a6939477740ee1401044377eedc59515151ae141fda8d61d10ce39db70d505aea701d3b72c4bd976d2c5da97c79b532e2cb32a63e7ff68cd33f3c40de9a3c757ba78baa56aaac6a55aa18297656134b78923b36ea2d8d31e2a41ac75ac8e86ba40af7432315496ab21d55d7d7dc4d8f21d1f8e232cba1a42eef68ba95eca913279c689b61eeae5d2b5c43070d766af1a1c59f8742bae46fc8d780fe29964311aa68a41a617c53a5624545464468d890c12ea9e904dd4d51d03ab8d78f3ffee87e5f04d0e7c6a0a843be844c25aea74f9fd646fbffa9a6957357adb0e4bbac33f6de3cebd65dcd0b591999ba6bb1f719dea36a66cd9ca55ed60fa3ade5c4598b69d7b6ad52ad4daccd5bab2b57aea8a77df6e69b6f3add75a1a0a2b14780301adf679f7da6c5168e79f3e6698355cb510bd1118befd62d9b75fad449a726af58456cb6f0a6cf9d674d76b7ab0e9f1132e4cb279f7ca2e54617e9769daccc4c4705c78f1f7780d1566ddab45144edda4e0402d0674500fdf1c71f2e0fd0bcfc00517fc400f934342ec5486a5c4c12debfffe0d1fb18b21480bcf80dfffdf3cf3f0b3efdbf013a2929495dacda3232321cb5f8ac08209f914b0d1a34509f3e7d5c3bf1673e17076bb76d8ae19a88fdc9c6477010e5ee33bf80706d5de30d9e8284fba70cef91a7f00e0c4db993a38543ee1710558462ecd7af9f4bd050260d7f46e819a366ce9ce9f887de4955922a3ef30b88e4a60b8f1f3fde89f21356ea0c8ca535ae01ef40be682e0aa470fe617e011153e631a89d6a83b818834a6bb4211e944ec07855e2b98cead8b2658b1b9f99d5f931a55c5aa3e4271843d7311580e78b7b07f30b88985269241e720450fbf6ed2bf83434e3e6b03ea41b6d44c9bc579c0e30bf802869d813f1c47c46b5d1e742356efcd34f3fb9ea4591723db8aec41ec2202b344b2d93108d1b37764918aa41a280a1cca930362878cb1f97790282850919daa865cb96a502c4c36d37adc4b48ad7694d346e7fe60988920444bb76edd4c126082ee22fe62531b415dea19142254c3678cd9f790222e62848929a160238882d9496811c46aaf6eedd5ba34cfc43235e64eb09083adfbf7fbf73334fc5b6a2f862a0a4865e62206cd2a4890385a2f0324f40747456747010a50a301291f78335aef3ae0d9610225b345a86977902c2a5947e5e5e9eab0aca15c1e6b58a0b6448187642d5aa5573123910a77902821c11edf005e1821c698ce456b08662004815d3d7cc7c90ae97790282b428579e8e84a6426827545fb0c63a183156bd7a75e7a94092c61310867a646185ce666d42d5055ae97a193943a5366ddad42537eac1cb0202a2d22e5dbae41a216b61b8a4b0dc2ca951552cdb6362629c864694795940402436236e4e4e8e060e1ca88f4db4a38783b59d3b77ba7530044bb73f77ee5cc1278f5b40402436db2d265a0892ed7cb0802052da062b1ef6061c472063bd2c202012db47fb0c8f2437222b18a3dd20e4616848118d451a78594040180056ad5aa55ebd7a391d8cbc0dc6f032e72200621f440b291520aa6af5ead56e910e5b23ca83319f8798f1606b3c74f1e2c5824f1fb727024286d09da17c2e561a400833244da90041843e40b490600191878cd500629e47a0859cd454085545c8c8a1f4f4744f61e5655c034054196167922955953129f8aa2c333333e82af301c24300a249870ca8380f31ab85c243c54316720ea17d507bb40e7a108c1d6ceb284e8ca50a19da87a7a16540fdf051b0cd1540489852b70e2e8410f79db9e27286bb50667c0419251f19191970c5830504c48ccf084deec0b4ebd7af0f091082acb01e421f799927202a8c9bfb7435470e4c0b1065b00600cec72a57aeecfecbf0e0659e8060584810d9cac91f930732a2f0b6aba406200e5a2a54a8e0e6bc9034351546b8e020b80396e6df85b75d2535643015e613f9214d1dac640817928319bf346310733d9dbe76edda0e185ef7324f40788264f40d8a480fce3f4259ef312872c28da60618a7d15ee609889362f68b2c074868feca81b6017b076b50075a9abd108c4f2e7a992720260e841547489c6bb14ff6b7132c8931b9e0e5848404c7f89ccb7999272048912e8f8b11566c3f42f10e8642a46520613863451fc173fecc1310de8010a90a480d2e0ad5985c902eac99091ddb38afa58527200890bc61a587ab4b0388919c060d184e9b1838bd46724f40be9d3227361cfa13b2500d518757081b6b617aa3976af004c40f98a13862e0ef7de0a3500d854065411d542d420fe1e7cf4a04082f3124866ae42312044e836479b8a0778ce4108948b838aa2a0d205426072eac74d043083daf2d8a2720920eb9016f307132e0e1355a4ab00653e36d060594237f34e7d5133d01d1b3b8109ee1a9c68d1be708adf01f8e94d4d8c2d1c338746169c136c46ba3eb09088395712dc0f016accda11bc090a178b1307343763c0821a2a1b2e0624060c0a4fdf0605c27d028151010c60d6923682326067a11e50b97008a6a21945412733fe7a76cc8a0094e0d61664021f45954f19d400dfa89800a1baee726101c23317c825ea2c5f06208e0dff43d7a171d1ecff047025ebc53dc820244e8f00c2140b4f1f4b403e62d5e243f9b36004380f00e094c084bda948302443e111272084f20fca91ce429230ecd93aa040c6142e095d4333e0b0a90cf688c942ded85a7274979a197c82574379f072f55a4ff015ef49393d4387cce0000000049454e44ae426082),
(19, 'TROQUEL 18', '0.33', 0x89504e470d0a1a0a0000000d49484452000000190000005d08060000005020cd19000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000d91494441546843ad99677455e51286cf3f7f5c7f28ae0b518a285c4002210925e492484d23094920340382d40001420abd4aefd244e9a052444a900ed221a082802820a8202a62017b05e7cef3ad734ef6d97ba770ef9db5ce0a9c7df67ebf6fbe9977de99ed118bfdfdf7dfde7ffdf7e6f60c07c8ddbb77e5afbffe329f3ffef8437efbedb7623fbffffebbf90dbff5dd572ac8bd7bf7e4c71f7f9477df7d578e1d3b663e85858572f2e449f3d7fae1bb13274ec8d1a347cddff7df7f5fbefcf24bf30cbb3976f2f9e79fcbb871e364c080019293932363c78e9509132698bfd6cff8f1e365d4a8513270e040c9cece96175e78418e1f3f5efa4eb00b172e48850a15e4e1871f96c4c4c4124178785858983cf0c00352af5e3d59bc78b1f72981e600b978f1a254ae5c5942424264ead4a972faf4693973e68cf96bffecd9b347ba77ef2e414141121a1a2a2fbdf492f72981e600b972e58a0407079b5d6cdfbeddfbadbb7df7dd77326dda34090f0f97a79f7e5a56ac58e1bd12680e908f3ffe581a366c28eddbb797fdfbf77bbf75378264fefcf9d2bc7973494a4a92b56bd77aaf049a03e4934f3e91a64d9b4ae7ce9d65c78e1dde6fdd8d2099376f9ea4a4a448d7ae5d65cb962dde2b81e600b971e38674e8d041faf4e9235bb76e35ab2dce08db850b174a6666a68c1c39520e1c38e0bd12680e902fbef8427af4e8614293957df3cd37ae61493ebcf3ce3bb268d122c9cbcb336743beb89903e4e6cd9b929595656edcb46993012593edf6e79f7fca9123470c0821cd5f22ce6e2cc60172ebd62d193a74a88c183142366edc68ce080ab1dbafbffe2abb77ef96050b16985dac59b3c6e498ddb8d7014258ce983143264e9c28afbcf28ac9916fbffdd67bb5c86edfbe6d1e3c77ee5c59b26489ecddbb57ae5fbfeebd5a643ccf0172e7ce1d7398ac6ee5ca95c6cf7092ddbefefa6b79f1c51765d6ac59060c4af9eaabafbc578b8cc07180fcf0c30f26a966cf9e2d4b972e3511e3b6428067ce9c6916f3faebafcbd9b367cdeeecc6793a407efef96759b76e9d897fb888ac8705ecf6d9679f99039f34699209757ef3cb2fbf78af069a038403e5265c061087ef76a09f7efaa90c1932c430f6ce9d3b4d1412716ee600a1081d3e7cd81ce69429530ce9513becf6e1871f9aa4cdcdcd9543870e9902569c3940f0e1a953a764d9b265669573e6cc31f960b7f3e7cf4b6c6cacf4efdfdf5c774b589f3940489e73e7ce99c31f3e7cb809e57dfbf679af161989d7a04103e9d6ad9ba9a025990384155dba74c9842f3e2729dd289fddd6aa554b3a75ea74ff201824b96ad52ae9d5ab97f4eddb57366cd8e0bd52649c13d590a2056049e60a42e40002003cf6c61b6f78af14190f6edcb8b161ebb7df7edbfbadbbb99e0991c399e02ec4825b5d81819b3469621672df3b21d6714569d1f5de7bef99e2060894529239408877caeecb2fbf2cd3a74f373b4287d98d108e8f8f37d2894520ee8a330708b4c24193edd48837df7c533efae823efd522e33b0283e823c4e12d3761873940ca4a90d4192bad409865a615a81e0582e65abd7ab5391f370a0778cc98317e82bc7af56ad90992020567a11a5f7bed35231600b61b84c899f9a89e3372fb1de600a118e1674297b3618530b3dd28d3303535e5d5575f353be63b377380b042b218b5821b289f6ee4f7fdf7df3b020461e8660e108a515a5a9af4ecd9530a0a0a4cb4b919dff360840441b27efd7aa3a3ddcc0102a5b468d1429e79e619d9b66d9bab1cc25021e4132ee3f0495ed8dbcd1c206c39222242dab66d6b408a33c215f60584f3c36d508d9b39404832ea042e2b4dd57ff0c107c65d90e4b061c3e4adb7def25e093407087e8d8e8e36ee42bc9564441e39c56fa990c509740708799190906056579c80f6190989b86bd3a68d51f59b376ff65e09b40010480e76edd8b1a3d1c2a5553cc29d3ca13fa17d404ab9991f845c20e92840842f195f5a9d806e6007ce90888486dccc0f82146265070f1e9471e3c799ca78457d5e92912b74bd91919106046275333f0837a0026154c891ad1797c13e23ebd1c3717171c65da5ee841bd0b35005ae5ab17c859c397d4605f34f0e0ae7ec7e52217d4923919da4a7a7ab34ea2e6b75616e14e407a1a3f2353583b206ca24d55b9bb50922a4efdc0e64d75b7a1617ce9f93cd2a304844fa4b04076cec56b8fc2017553cccd24869ade11b5a3744a2d4cf9d7485f33444cf9f3d27d7946e76ab2be7cd9d2323f273a55faf9e929ed246e25ab690c4f838c9eadf4f5b88d5a6a6d837e30739aba13b52156378bd50a9f4e863f2af279e90268d1ac9a86143e524f314150be3468f96c4b858898a6824517a2d2aa2a1340aab27d19111d2bd6b1759bc68a1a929f7ee05a2f841cee9798cd6ad3708af2f41ff2c2f95828224e4a9a764c8c02c397ef4a8ec50c6cdd0fc79a25245097aa49c547bbc8a84d7ad2321b56ae8df606997922c33a64d955b5a8feede0d745991bbd4f724567c5cbc54d75d3c59a5b2de5c57f2b207eb2e8ec9163d9fb69ad915ca9593871e7c50aa56aa24e121210a524bc2826b4b72429c8c1f3b466e686f6f676e3fc8e5cb970d0f11290dc3c3244c57875b46e4e7c9a9c2131a049b25ad4d8a942ff7883cf48f07cd4e6bd7ac29f56ad756d735948e69a93276f4284d83ab26e7ace60739ad0de85065525461527cac24c7c548624c4b19969b23470e1d940deb3748dbd43475535579aa5a7589d0854447fe5b12625a49468774c9ecf99ce4e70e91c2c2938e42e7076150d647d5606d3d87d4c404e9a03e4e5517e4650f925d3bb6cb722d4aed5253f5e1e192969c2cf9c8210d84411a55191ddb4b5a52a274e9dc490e1e38e89862f84198c03dabbdc6e355aa48526c8ca42727491bdd5176567f731e0be7cf93767a26712d9a4b9e026c58bf4e0a94752768df98a44a32ac4eb0348d6a22bb76ed32896d353f0889d845e9ba52c58ad2323a4a5a6bfcc7348d96acccbeb24d05c5a2850b242d3151e21564f4f061b25581572e5f2e995a121a84864ac5f2e5a5ae9e4f41c13687340a00e9a1ec5bedc927255a0fbc5964639307031464ef9eddb25a09b3bdf2530b5ded80de3d65fae489f26c468649da9ad5ab4995c71e956075358d2c0ac76a0604914d339aab35243a2a4a629a3793f8962dcda1e66808efd48a77e244a1cc9e3153ba77c990c4d8562609aba96be35bb592fe7a96ddba7435f712a1f6e18201c187d4e7e12aea52d4ef99bd7b4bb6eaae9cc183659ad68b8dca495bb716c82c05e9a3bb4d6e9da091d5d8e4cda4f113649d2acda993a7486c4cac4c9e3cd9c82aab7960548a0f143f4aa3a5c773cf29032f974dba6d0e7c93922033969c9c5cc9d05ace22daa7b7933eaae8976afb7d58ebcf65ed31d728cdb74e686d08135965350fd5902f996d3161c8cfcf37c3819bba65c652e7e98415b47efdfa52a3460d89d416aeaf1ef63255fcd7af5d332d03cfa0be2727259b8ed95e873c685ff412aba558e1536bc6b275644fb366cdcc7080da8fd6b28b8c7dfbf719794b2b6157921e3a5d260acb75b54c7c5082d68c458721dce8d79905336fa134930f56e31983060d326782e2b19a07ed845ee266aa1c65d7da67c06980202e100d34469459eeb116284656a3f54c6927ec133c0f2a908a06006e40645be724ec041766684ed052f03b766b07c1e5f42a78038ab25ef330994365f0037643ff67a56a1f085a8c610d533d9a563b08629b45d22de33aab2ef0f0056e40cbe20afb567d208c3738746a0e132440ac1d2f6ec723284a22d54a921ef42e335d0e0d373028b05a4920d61d13857c0708936eeb14cf4337455745bb0c085dadd5ca0a424ee115dcc573acad9d870e89f8469973111569355fc52c0d848696c30784df3362f7998798a71741997333c969b5b282d0ff13a9441741744dd9c0671e4292b70c7c7898bdaa9504628d20feed13e0bc41b266bd87eda1ca012104edf5b9ac208433bb61d2c750c79af51eb299ce8a1e839bed5385b28260701e24cbf9927f3ef3a0ca935518d0884292ff0b08062bf0c2c63a81f57003e13b580b147db97df8ef034154f3a28083256901b1eb2b0ce1cdcb34fa1c9f1910f2848464a86f9fef02824be90921400061ece240faf5eb67de89593b610302273dfffcf306dd7ea30fc48d20dd40782b545b558bf57d9807b283b72858281637101e4c60f0320db7722e0c12dcce8456bb4e9d3a4e104a267500816707a1c56327bc7bac5ab5aaa990040024684d469f312eacab42dd01425da7a2218bec206828c0b999775d1c3e5108b5bbb56ef4ff35558873be3e33209c097d2275db7ef0fc9f4ca6dda61811ff906871232a22b57af5ea4e10dee192446cd10e5292b98190ed8cd71deec2151c3eb5e57e40dc8c0533f926887ce6a1c8b45449cabb5ec67c25cd774b32228d42050313810104c94b9898981869a59a168ab18be5b21a2d3a8a0510a2d15a973cc43bee82d408630ed82dfe4b3358975c8339a0a7801a4f4da73afac6af682a464cf70304cd23a5e8374907261bd61cf25003501a48218200304019f213aa287e3b200f45ffa23e7920a14f1d817de136fbb0dadf047113144213034f91786c9ff7bf2429c9c707c9c402c8037cdf5bdb8c54ed2571392c605f1061ee07c1d815936ab809dd4b29651ccbff5929240a33e056dff7086cbe671a6e573a180c1200821b28bfb40eb800fdc483f0338a1e8284f2a9193c1c7ac1cdfc1e17b9b1321e0a00b11a21896b78d544eb00f5f0a1c90118695bdccb02ab91dcc582909424172ec085cc23f9f060e694241b0b716362abf19c6241fe7f26f21fe8bd4d2a422115620000000049454e44ae426082),
(20, 'TROQUEL 19', '1.37', 0x89504e470d0a1a0a0000000d4948445200000051000000660806000000b3f07d23000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000012d949444154785eedddf7935565b606e0f95ba6eacebd757fd0e13a03038a11015114059128a820a880620445b201050c600454541451310b66cc01c58888392730a124d3bafbf964533d2ddd9cbdbba1fb74cfaa3ad570fa9c1ddebdc2bbc2f7f55f6207c92fbffc12df7efb6d7cf9e597f1d1471fc5aa55abe2f5d75f8f575e7925962f5f1ecf3cf34c2c5dba34eebaebae58b46851dc78e38d71cd35d7c465975d16b366cd8a8b2fbe3866ce9c19d3a74f4f3f2fb9e492f4bbabaeba2a7deeeebbef4edf5fb66c593ad6abafbe1a6fbcf1463acf3befbc93cee9fcebd7af4fd7b223658781f8f5d75fc7134f3c118b172f8e2bafbc32c68c1913279e78628c1e3d3a4e3ffdf4183f7e7c9c7ffef971e18517c68c19331250175d745102cfcbbff357feff9aeffb9eef9f73ce39e958279d74523afe19679c11e79e7b6e3ae7934f3e196fbef966ba965f7ffd75cb9535be3418c42fbef8225e7ef9e558b26449dc74d34d3167ce9c7403575c71450267ca942909b441830645bf7efd62f0e0c13172e4c898306142cc9d3b377de7ce3bef8c071e782069d50b2fbc102b56ac48c77cedb5d792f6fae93d1afcecb3cfa6cfdd7cf3cde9fb8005627efc238f3c328e3beeb8744ee79f3d7b76ba162fd7e57baed5f13efffcf3f8f9e79fb7dc49796910881b376e4ca674edb5d7264d1b30604074efde3d0e3becb0f47fef33d57beeb9271e7ae8a178e49147b69adf4b2fbd14ab57af8ef7df7f3f3efef8e3f8ecb3cfe2abafbe8a6fbef92699e177df7d17df7fff7dfcf0c30fe9a7fffbdd9a356bd2e77ccff799b06339aee33ff8e083c9cc9dd3f969b86bf1f00e3df4d0183870608c1d3b36e6cd9b174f3df5543ab7fb68881402d14df0372fbef8623255dae342cf3befbc183162441c71c41171f0c107a79fd3a64d4b9f614efce2ce940d1b36a4733efef8e3b170e1c2742dc71f7f7cf4eedd3bfaf4e9932c81c903f2f6db6f4fa07b10ee6deddab5854dbf10884cedbaebae4ba6083417c62709041cfed5575f9d4c4c9000e0a79f7e9a34e9b7df7edb72849d27cee9fc34d5b5701937dc7043ba46d7cacc5dfb69a79d96ee63e2c489317ffefc78eeb9e7129045a45e107ffae9a7add195460187ff6112071d7450325b3ee9fefbef4f17cb24999eef6ddab4a949c0ab29ce2f32bb16dae9ba5ca36ba57daefd84134e48f7c197ba3740e70ac0f27c777bf26f20fefefbef4995376fde1c2b57ae8c050b16a49374ead429f6dd77df7452d4c2d34225f825276aa84f690a71cdae1d58eec33dd1d64b2fbd3459d9e1871f9e822205f9f0c30f1326350556b96c05d187442b07bbedb6db52344323468d1a95a29ee807c0b7df7e3b3dd59626ee49a0baf7de7be3820b2e88a14387c6d9679f9d223c2c6ebdf5d6a4c53ffef8637ae19fb9ef4c20527b518f1a0b129ec2902143d20198b02724ea79224ca2a50a70446bf4e78e3bee48feffcc33cf4c780896a8110be4dee0956b6702916ae3621c2e7fd7be7dfb14c168a488558de6da50e1db456ce60d132e0df7a454d809029ffbcb0422df70df7df7c5d4a95353b4c2adf889c620a2d52cfc1eed9450c8bcdab469932c5426c47a73bf98405cb76e5d4297e601904fe01ffe237f30140a854fd2482e8e49d79404221a202360eb320c8c9e23f5045abb004caa284f97a2f2974cbda624106b0a3f20c117de45e3f7de7baf55fa44c29d4925291542feeebbef6ed3c5fd0944fef1e9a79f8e534f3d358578514aaeda1a45f0e0e2d03c7c99b56e4bfe04622e5222dc70f2e4c929ddc38b5a93a07be2c359679d957eca70eacaa9eb0451b622470626a72aed6b4da2b08270cb5e6eb9e59644b4eb923a41e41b3952be51728e1fb526a17d2a3e4c995facaf0e502788221033c61da57df8636b116c455b821f149529547d522788447194590f1f3e3c1d50b2de12f3e6da82914c9a3429116cb50284bb3ea917445fc6ced5de98f5a38f3e9a72cb1dd9af680e42f394c59e7ffef9e2a5b0da82137df2c927093c402a8529a9b764dec89445664a5369d6562f88724340aade5c7ffdf5c9ac95dbebe24bd52e2c0c375443bcfcf2cb93d55522f582980b3f88e6f4ecd9331d7c67f74c76865018314097511cd0e8aab44d50118844ab52b867d27c056ddcd14df19d29ee45cd546770d8b06109d04a7d7fc520aa2baa74e34fb4523f5813aaa588022b97a5e5bbfffefb1752908a419453f3875a8daadfc27f7d2cbeda4439d098ca5e7bed151d3b76dcf26e655231889ed4c30f3f9c48b7263d12fad65b6f6df96d750b7f888568fd1e72c821d1ab57af2dbfa94c2a06d1894c2e2809edb3cf3e69ee657b4cbe5a84ef732f82e6c9279f9c887611a91844a2088184f6e8d1230d1019dd680922c5d5d153d1d7c0a72c45a41088cae48682682130f1a996d08741d9d44f155fd50fdd67112904a2768179424f8c4f146850816a176d111c18b5c10fb7972bd7964220024cd55b3f560bc1185da5acbe390bfa262a0b988aaf7917af522904a2cc4585c334984886eae08b4d3d73d35031657bc00107a4a0a9e052540a81c8ffc92d395e4d6d74472653ad20ba6ec514199876283f6f90b4a81402313fa96127e99f492a5a59ada531dc57134e95ca1834c5303156540a81980b47acf2dbad5bb714cdaa35871640240c5ac37a49facbdc55512905224a20424b8ff45eaa95e6a8d23065bd24445b5051bd2f2aa5409447cb330f3cf0c0444e6b4f041491dfb6d42cb564d35c76c60068486ded16d49cf7eb356b1aad9ec9a268a1e51d263f94c1ca1cbb1488a80ef03863958f868c9b28bff34babb26cc86ca4318dda237c6b33f0de5ab52a9ecd029aaaf38b99f36f0c17c274715d9c17ff3532a21051544a8148f33c39e377c673dd74d908fd6d06d03319f7bc66eedc983a79723a9e2ea3f9bf8d9bfe98665df6e823716df6fb73a74e89891326c4c53367c4daecf70d05126866cc4d7a089034b34c23ae3488c64b501c9a6846251f782c2a9f64647d7e46de8fce227dc7f6ed63ec9831b1244b275555befceacba475e74c9a1083fbf78b2e9df68b4efbec1dbd0e39385ecfb8ddba1fd665c478cb814a88d55deaa3d2582b0df8c8320fa614887c967529c8b64901264863ca68a39ae4822c380decdf3ffef6d7bf46bf3e47c42d59947483c03c6bcce9b157fbb67150e74e3164f0e0183664481cd8b9735c76e9ac78e5e55732f32b96a2d5147c57255b5f5d15a7ac6697025110e09b3864e68070f38b652e42759c2f9c397d46f4e8de3d8e3a72602ccafcd48aeca6ee5cbc38468f1c117bb4fb670cecdb27a64f9b16b3332e37ec982199694f4d29a8875756742e4f39e594344e2ca8144df772290522bfe1292a1fc99f01cafcca8028327f9a69e3bdf7de17a3478d8a63060f8a8519e578fdb5d7e28965cbe2bc2953e29f6dfe1eddba748933cf1813179e3f2d861f734c4ccbaca0a120ba6ea66ca595d4afac940691f6e40b6bd41539e5327cd1d35f97b907da3cf1ec713128f37d375e3f3fdecbfcec471f7e1077df794774ecd021daecb24b74cbccb87fefded1a36be7989b9dd78dff50229ae6c20f9aecd05731b35e564a8328825ad6a5be68e0675b6b3d2a95cd19f8cce9dc299363409fde71dd35f3527568c386f5b13a8ba023b31bedda69ffd8b3fdbf62f77ffc5ffce37fff3beeca4cdd67365630a150973cf6d863a9972ef3dae920ca9f39625c9149a3073857252317db924d19f882d3d44913a35fef5e19dd99931eca860d1b13137867f5ea58bc68619c326278ecdba16dfcfd7ffe2bdd74591f968b9cf9d8638f8d2e99ab508d2a2b0d069126361444dae47893278c8f3e3d0f8b7973ae4eee61d3a6cdc95c5f5df1525c357b56f4edd923d3c436d1bd6b9746192068521099b3d506e80d9f88ee28a9973567203ade948913a2efe13d93260a54289334eca6f9d7c5f1438744c77fb58b4e7bef1d133272dc18f93a5fde64e60c44893b7a23b878a234a72c88ebb3e3a9e331e701194fbc76dedcad85000478caf871d1bbc721d1fd8003e2d4d127c7d2254bd3ef1a2aa2b3ac4b9b5490daa914074fac4d71dc74d9e8fc639627e38533a75f18238f1b9e519c05699d2101e2c4b3c6c688614353e07960c992ec778db33424e789facc025bd9ba682910652c22b272984d2d98a29b2d9b3f03dff7df5cb93296bff07c7cf8c10749db09fffbe2f2e7b3ece4a5f8ba915731a069e3c68d4b85149650d6924a81a8d261b1a026b7a6553e9753d61c7c8f16b809a001353f969f1b376e4841ebf7920fa92e41d3ac8e382623ef002dbb42a2148800b3f2d4ce1f0a104672cb46e6a614b48a3521dc4c5b102b634da540c4ddd4e174c794ae90deb2a6dc94c2824c005b3d2a38caffcbf8f55220f25f5aa65dbb764d5cb14c21b339085a66bacda247e382684e992a7d2910b54d35aaf45880c88f55a328c3997443d3b825050df756544a81285bb04d4a870e1dd2c91b83f83685b0285159a38a599b2dda698d2a27e290f7db6fbfe41b1b5aa66f2a41d50445f337560be85caad21795c2200a207c093fa20ea7c153adcd7b16a497a39a631edd7c51991cba1088342e1f23a1fe46d1a47fd518996b8a80a208618f31d95751290422324afdf90ed199491b29294bb29b8b9882d8638f3d52e6a29852540a81a8dfac022d9898c5c947ebaa1d447e10d3e8dfbf7f9a82282a854044463961fe9016ea3d37d6344253ca0759aeae1c76f4d147272b2b9a431702d1c9702af3da1694db06a66cd2de9c045f549c35f42e9d2d5af02d04a2eab37d6176dd75d7e43fca38e1e6287c3d9661b48e95990e2b2285401495cd24eeb2cb2e71d45147a5c8dc1204455394d5ea407594c78a48c5200a1ecae92a1e4673d19b8694d49b9bf0f740b40da07dc18a48c520ca8ff940fb41a8066b0d20dd2d451451f87b7cb173e7ce5bdead4c2a06d1026a1119b5e13ff04369534b11d90b253111a1485ba4a85231882a1c2880c2035f285daad6c2c3b64436a6d22d89c03c8ad4162b06d144a98283dd49f251ba6a27d93545ea8ac2e1891a70fa4695d649eb051148c0d20e50c116504c8295a9b9357771af0ab2063f6d26a43c56295fac17442a6e145814e674051464b4a5eee6c97c01694b544db84a0367bd200a1c7957cfb6a0c02cdbcca926e11b05183fb56eb777bff58268f64fb1414a841f6aa8576bedb0886022820b0532d9b1bd566abd20ca292db5e8dbb76f5a81d99237e5ad297c3e3a877cebc1e4d31875499d200a281689abf6dab75f5bb1a59b712e382210ad814679b69799d509224a63d30c198a614e75c4d624920ab3dca6c698757dd5aa3a41b47d0be66ee5a5c6764366a3ab5134adc401653f7553a37e75c93641143c1418f842dad8da36a024ca7c38314b14170c70d51554ff04a2991a8e5439485948a1a125acae2f2a348f056ac889d46a8df9a45a6df91388427a4e36a53fda89adcd94091f487972b3360c5ad78e5409c43cbdd38892eed8909706ca565a527e5c4614a235f659a569090ac55a6b329504220099b06951da87ad53e5ffc81f2333daa870c1525866edd1ea04225bd77b554fc30b9932d4ab753ca43185756a1dd80ed03a403504ca56d33f2610a9a754c7560496ade24646cdb6c7d45bbaa829da9d846bb3a2d6848415fa166fd62cda2610856e5fb01ec5f4abadef442485584fa2b5642a35451071ff289ed505eddab54b45184988854a35e94e02917853b55a6622b8487bcc33ebc58a4e4095fe70ac2d1154f7a528cb8da99dd23af72fe98005aea825a28a55dbcd6d059100879aaae8dad5d297f5974d0720decc5db472304f43f456e1a88b843657513774ddac8c050a14b44e00d173c6916d2a07408104b8c0f3bd6db1957f03b1a6e47cd144ac83e67bf06b6ee73b7af215cae8c0ac16111010691a4729e4c8288cfb44acf32cc57b026d251b6dd609a26023bcdb474bda67ba1e7848a7c11f1b94a9ee1837b67cc1c93c5ddadc9ccc9de6e4d744934cb559a2ebba5569fce9bc3df7dc33fd8d01fe4fe030b88aad508e4a9a557582b82d01a84e1f15f7943c49be4244371161e813b85615f0ab2ac34cbfcc086f19019880c08a4450b4844b520bd51fd2685350d0b1b4261190aed3f0bbfba22cbe5b74f8bd108835857335f30c4c1765bc4454f7f7fdfcb94befb9405449078db632216b47dca089540f451fc385031aa5521015e06abebcc72afcdee7a46334ca03c2e1cc08393ebf963f60cd26d7a02f64aaa16ddbb6b1db6ebb25edc3f53011a03546bba33488b90042f5d7f234fed2e61acc9eafe137dd081fc30d887822bd7db9f8589f71435a10ca4d86021c4bb6048cfce53d353dbff7679f3c1cc796140085e63bb6e3a221dabaae41d1c039ec7be31a445b0f1503b1b4b8b12af50d0651fa239ad34ada42ab3c617c8aa9f3334c8886e25afe9c9dbd0aedeee4ef9d483195dd723a21bd5296676e00f6f21e87cf34397ceec320010dcb8fbbfbeebb271621efc7753d501a894dd8440d9ba0c9348fefaec4d7552a0d06715bc2370192c9f09b40a1898abc5e1a5ffe4f6b147d01036c5aebe66bbf444e00d2289fa36980f770645700f5530bc367f2bf442e0be30e7674a0db212056227c2a822baae361a221ff46733001e996c2a8175f2748f1a51e0e1742a38acccbec48693210098d6556b81b9780fce601c40bc05e08b1e00274d1b7b9751dff92df085ee866bc3ce16acb429a4e22fe1fb0580b1812f690da0000000049454e44ae426082);
INSERT INTO `troquel` (`Id_troquel`, `Nombre_troquel`, `DCM`, `Img_troquel`) VALUES
(21, 'TROQUEL 20', '1.20', 0x89504e470d0a1a0a0000000d49484452000000470000006008060000004f196f91000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000144449444154785eeddc779455559606f0ea3f66cd743bead2b1a757abd3420f8ad82a411019514411734431a02266cc0141cc59cc19238a09144145c508065482a8a060c09c15734430edb9bf335cd6a3ba28aadebb4581e35eebac0a2fdc7bbfb3f7b7bfbdcfb9b72a7eb7f9daefe0d4628580f3edb7dfc6a79f7e1aefbefb6ebcfefaebf1e28b2fc6b469d3ca1e53a74e9d67bcf0c20b69f8ddebbeffadb7de8acf3efb2c66cf9e3de72c8ab742c019376e5c0c1a3428faf7ef1ffbedb75f1c72c821d1a74f9f348e3aeaa838f2c823eb350e3ffcf01ac761871d16071d7450ecb1c71eb1e79e7bc695575e9926a3a1ac1070eebffffe38edb4d362975d76892db6d8228e3df6d838fffcf3e3820b2e8873ce3927ce3efbec7a8d010306cc33f2ef38f3cc33d304ecb8e38ed1b265cb04e4e4c993e79c45f1560838b7dd765bf4eddb37ba77ef1e3d7af48861c386c5534f3d15e3c78f8f279e7822c68e1d5bd1e0994f3ef9643cf2c823e9bb8f3efae868d2a449f4ecd933bdd650560838975d765972f7fdf7df3fce38e38c78f9e597e3abafbe8aefbfff3ebefbeebb34f0525d47fe997ccc9c3933bef9e69bc46bd3a74f8fc18307c71a6bac91c2ebd1471f8d9f7efa69ce99146b858073fcf1c747af5ebde2e4934f8e071e78205de0afbffe3ae7d5e2ece79f7f4e60f1c82db7dc324dc8430f3d948ed7105608383befbc73e29a8b2fbe383ef9e493f43f99e4d9679f8d7beeb927859d70b8fdf6db63f8f0e13162c4881ac71d77dcf14fe3ce3bef8cc71f7f3c9e7ffef9e43940fff8e38f13f79c72ca29e9fb65c986c85a8580b3dd76db45972e5de2bcf3ce9b0b8eb42b9b1c7ae8a171c00107c489279ef84fe3a4934e9a67f03cc3459f7aeaa9e9a7f75d74d14509bc575e792585d88c1933e61234d01debcb2fbf4cc72dd20a0167abadb68ace9d3b27703efffcf3f4bf3163c6a4b4deae5dbbe8d4a9531c73cc31d1af5fbfb929de40aca503a91bdecb33fc240ba4f02baeb8229e79e699c46580b8e1861b5246bce69a6be2e1871f8e77de79271db7482bcc7336db6cb3b8f4d24be3ebafbf4effe3eedb6ebb6dacb4d24ab1ce3aeba4747cd65967cdf588dc3b4a0739609c7efae9c92b903b9db4efbefba6909d3061427cf1c517c97b1e7cf0c1743c1e74e38d3726ef29da2a0247fc234833cb13f0830cc59e7efae97471bbedb65b226b7ac505bbf01c841c941cac7ce4a165f036847fdd75d7a5efcc3df3a5975e4ade74f0c107c771c71d973cb568ab081cd90339ba40bc80387ff8e187f41a3737bbd75e7b6d5c7ef9e54941fbdd100ac6d5575f9dc655575d95068e325c743e7cf6e69b6f4e5909e748e9eccd37df4cdeb4d34e3bc53efbec1377df7d77fa7f91561138b366cd4abac349de7aebada9fec9b386f4fade7befa55a48d632ebd5c7c48913e719c2261fd275febb9079e38d3752b6724cf6e1871fa6505d7ffdf5534803b068ab081c0050a8bc8118e32db92013727e07166fc2130b1a42b2a60110dfc35373fd442a0007e177ecd8317962d1561138b206e2bde5965b9287c824bffcf2cb9c571bd61c8b32df70c30d63e38d374e6159b455040ed7bef0c20b83066928953a3fe3517808df49ff081b1f153939158143993a39598acb2f4c136a93264d4ae12413f29ca29572d9e088fdd75e7b2d29dbfbeebb6fce7f179ee133bd9c51a346a5ac2629685f9016455959e0000681aa77e816297c619bf0c9eb37998a86a29489c4a2ac2c70c4b656e55d77dd95668ce6680c334914b90295d894bdc887a2ac2c7008bfd1a34727c1a6db97179b8d61b8ce24696120667aa8282b0b1cb12e3b688772e722e3bc1cd3a655c7699b6ab4e55aa8522b0b9c2953a6a4ba474bf484134e68b04e5c5d4d2bf5c0030f4c351652ce5574a5561638a4bd56c2269b6c925cb9b14d6210de2af4c71e7b2cf57b7efcf1c739af966ff506c7acc80a666aebadb74ed575631bced3d0274815b22a7402b552ab37386645c9a095a0c387941bdb644f2d0ce09c7beeb9a9156bd1af52ab1738880edf0c193224f56a28534035b6f166ea582752ef4721ac5b50a9d50b1c6953df44c147df689c37e4a25a5dcd7969826992590915ea459c57bdc041725a934a0692dd42db471f7d34e7d5c6331ecd7ba472fd6acd2f8b89955abdc05132e8bcd1143a748b0230a526cc35fb790fd59cb754cbb57a8183f874ddba76ed1a03070e6c90e5904a4c3752a2b0723174e8d0d456ad4410d60b1c3361f18e54477a8dad8cab9b0258f644cc5624b4582be9efd4191ca4a70d6a7d5a4c5bbd14668b92c9a492045e0492564a257da63a81a3cb97b706708d1e8a02afb1cb86eaa6752a949ce3eebbef9e3636543281750287f03323e2595cbffaeaab09b0a20abca24c08097d7c68795a6f395fca29c7ea048e70527d23e39123472e92c0e466a543eb544a5f77dd752b4a1a750287da3ce28823d26eaa7befbd77a1ad309463f40e05bfc30e3ba4c451498db540700061b1ce6e89d6ad5ba78effa26cc041c4d6d8710e0ee24de54c68ade0e8e4bffffefba90ad70ed09ed01e5d944d767afbedb7d3395b91b8fefaebd3c223b2aeafd50a8e787deeb9e712095b0b575315d9a36d08c3854858d2b07747b7d2f96bedd6d76a050711ebcf6a24d90b43db14d9dd6f2813422696e4d07837b1e5b4306a05c7023e606cf390adac878be9c5c18497dda732ac42b99c1646ade08855c4b6fdf6dba7760021b82867aaeaa63bb8f9e69ba7d0a29eeb6bb58283f531be9d5b3a6c886e7132eb69bcc68e32facc0a6d7d44e17cc191a96c1090a1ecdcbae9a69bca22b5c6342ba24a1e85e825975c923848c7b0ae562338420710364343dd17ebeae7fbfd1617a36f9cb73e8fd5122059a9a8abd5080eaf91c201237ddb786d216f7121e3dca47549c57a3ede2464ebb3ae5f2338e252656b63909f8ab94a4affc634dd4ad7e0a615fc499ad4d56a04879641c01d3a74487d917c13e4e2682656cb547730ef10daf85497c2b94670f21d5b16ed6c695bd4fa36f53140d8e4a48c30e14a0a59b72ed7340f388818d2be0c09db5a4f4815b1b4da5806840f3ef820ad945831714dd6d6eb120df380836bf45deda0c0f0da13887871e51b267c7403d584bcc64d2cfacb75e97fcf038ef2deee094b2fb4cde20c4a751315f8c6d28d5248dd28226ae39e79c0b14ae8660c2b0c16c87e6ba63644caf48e4de23620d4461973c1a16d8494b566698fecfe2d190fd1c690b980a35ba856ac4dd8ce0587d4862cc1442c117fbf25034ebe3a813a6cbab268505b1b752e383af65617c42322b6a5a348fbe5975f931bbf38edc59838616292f19fcc98915e9b356b763683dfa4c6fd1759b69c326572bc9a1589df7ef77f77e0146deef0215354ebb5951373c171e318ae81aa9e71d13bd23ffce0c3189b49f741d75c1b03ce383306669ef97856f7c82466efd5e9d3e3e5975e8e09e3c7c7a5975c1cb70dbbadc1ee19171dbbeeba6b02475b637e36171c9dfab66ddb26aed1372ecae88ccf3ffd3446de3122069c7e5af4ecd12336edd225ba77eb16a766c79afccca49834615c8c79f0811836f4d6383babe7b6db669be8dbe7c818fdc0a8f8eecbca3603d4643a0c88d9eefbdaca89040ec6d6b3717b0e7d6311af28fb2623bc89e39e8cc37bef17db6eb649b46bb966acd2b449acdea24574eddc392ebbe0bc183a78500c1a7859f43fba4f6cbee966b16ab395a3db569bc555170c88979f29febe718947c7c1bee5dab8b54aa54d20f5eedd3bad81bb7712391765ef667a62f0355745fb96ab47eb16cda3ed9a6b44bbd6ada26dab56d172b5d562e76db78a630e3b28fa1d764874df6edb68bd66cb5873b57fc4161b758abebdf78a618306cef9a6e24c3b8662d602b61e373fab22a5d551d4a30d3f42aaa85a6a76e691e3c78d8f7e1901b65fab6decddab575c969525b766626ce0a597c63e3d7bc69f975e3a565a7ef9e8d0ae5decb8fdf6d1bfdf3171e3e01be2b87e7d63cbae1bc7d699b7d5a548acaf01c88603a250fd559355518dc858de478c45d551d4f5b799449f387e429c7fceb9d1efe87e59113b24cb541362fc934fc4e0abaf8cbd76eb11fff2873fc4927ffc63b469d92af6cb3cf7c6cc73a74d9d1a575c7e796cb1e9a6b1f65a6ba52e41d1c5af52492ab7e9533bd5dfd5fbe3557a1d1e9ce1b6a0225b1340b63cf2d2b46971ffa85159661a1b6fbcf166bcf9fa6bf1f0a89171dab17d63abae1bc512fffa6fb1ec524bc7ffb45f3b8e3ee2c8ecbdf7a51ecc905b6e8e6e5919d32a0bc3d7b3b45ef47617e7a7c0b635d70e78ab13d59b79554869efbdf74eedc422cdc1a9cf1999fbbef7eebb312b037ed6ccef62ea739362e0f903a2d7ce3b2470d66add3a23e066b1e1faebc509fd8fcdd2fdd804ea88e1c363d79dba671eb5663c9729d922a4056f2ef540a250c75386b69850bd18adb265563b94722cd29cc8ec6c268c5fe614b033de7f2b460c191cbd7bed9680d967cf9ed17bfffda353c78ed179bdf5a27fdfbe49fba42d2f59b8efda7dc7689b8163862b05076f890c13561a3e2682bec33fda35a55625df2365a6ef411ddbc2c1d52a3584fc7996f95e9dfe4a0cbaeaf2e87348ef2c0b6d106dfed1223ab66f1fbdf6d82391f4da195937ffef66b1c17a9de2c0037ac71999fee89989b4f66d5a4787b66b25f22c820b850d61c921acfdeb8d03c78e0ce2d7130ff05b7eac2a7b7615605c4a6811467aad3e5c49cbc2ec70db6999da1e7edbd02c4d6f9d2e74f555568e359aaf1c6bb76a19eb775827dab66913abaeb24a346bda34565db97996e6db44974c6fb5597df568fef7a6d165834ea928ae3463f93cafb1b8b76946f4eb659eaabe5226d176a24772ca1f09c1aa30b62d6c94a2d853745ae5d431b353a1dc8d033fcee9c03d98cdce89c7f58ffffacb7fc6d27ffa532c97a5ee26cbff359afd6dc5f8eb7f2c1b7f5b61c568d3aa75b46fdb2e71cf5f965926965b72c994e2576ed22476c99245a52613b90eb71b597db0e3cb761a8f81f06000d70e283d2c51a3d7c3aa000351377a5857567cea1bd33edeccf5cab159d96cbff5f6db89580fee7d402cb7d492b1ccbf2f112bfc79b9f8fb8a2b44d30ca0e5965a2ada66a97ad79d77c9c26bcfd8bccb46b14a06dab24b2c91b44fa775d78d63b3f3a9c410b06bd471b0ea693304e1b7d75e7ba512c2dfea2bcf04b3dae267befb7d6e6d4519732d616647859d093c8806e245b6f5d727d5ff948524f79422c78c1e1dd70f1a143765927de8cd37c5906cdc74c3e0f43f9ba1a64c9e12d3a64dcdf4cfd818396278dc78fdf571fbb061f1c89831f14a36dbe51a8eb1de0f148f8bb0de6f718f77f02005b64484886d5311355eb78d989ca8ca2fd88528dfe91e8f6bd1bad0c680b00531a089d7ea42697e26c653c6ca3c089f7d9511dfd7d93178a9e178fe479d7acf8f3f7a72c1cc2c2b7d935e130a33bf9f5916113b368f216a5db48bb560a0cb49b6283c81e2d8bedf63202425006a8401cf0a4595d5853cbf7ba3bf018490d51eca7a2107551ff4458bba118cca20e46ac5c1c402064d98786552e93e234e813ef0af4ac19d40c973f4364a1b5b8a4e4ba85620f00fef81a40691f6a907722ccac66b2402e1a4256a82f3fd81aec77569ba9566621b26fc1f306eec450522aa0aa77027f93e37071093ee9954d27b5d261362c0721be3a276530873412e9cea550e39573d713c62727991c67a6e0012c2a53bde394a5e88568947294d7f439c952a516e4903d8d985ac6531ef0592d0f3708f4525ccf016bdc65b5ca8d54d94208c783e955dea00a8c4f90351c6c2a7d5abf32a5f085169cd92a92fc94d88c926668038c4f6889a1779bfac566eaa2fd270254fb6ff0610ce5528e11885a5545d3a8938497a9781656559aba649aef24631e6cbe47f299d60ca6352d64058740faf01a0c14d31bf98366bde2f1c17963996cc699844da4414f018dee219822610470ab5d22c0b1893ce2914de3ca69483724b3ac78178872f5563704d68e60640f128b4f22cc68b1c9c27714927584eda2dd79c13be50a4e2094a575642ba849c90e235d5bb9ace9187e119407286f9d95c1188cc00a223982fd1e0a0ea7188e0cc0a9020cfdbcc98053327bcb08c37e044e9d7ec3b67920328ce47d2f09edc38802d6fb2916b9368784ff54abcd4e682c3e47ef1296e55aec8aafaf2887bb681e264ecf125b9295082abe86e5d6de6a2f481893b19975035512637bff7b47aef4661cdeb25135ac7e4d7144eb9cd038eb874503322ef733bee5a1a327e4a87424a65db26abaa6df92f3d88df49777c057064073c3367b334c0791aaea354f3e16fffc7094e1cf7f91c45cd2b4bc3d685e3425e229bbaf7548220410053fa5ec7b7e200389ea51d23732d48edcf034e6e0022a7b91f2fa19a4b1f03e3e0bccbf3ff3ce6b73445329f070032042e0f7411481d2f38411b155c94550f43a8d223665f2de7d86ecff63982ce0400aa34cc1d8707788fd092394d40a9c70056d10938c7f5b3ae8b85358263e6c96f5909b7206bb19a931b7e921dd42d2ec0c1e8061a893a250f80621f0c37965a01606f8c5e8afba0b40c5ab46811cd9a354ba379f3e6e96fb72d7994a74546ab923ec78b85ae7041be8ee1583885a7f17474c0d34a3d861184c817f040775e793db920ab119cdc788bd9e08e661db3977a89387652db6cb34d6a77f8e91e502167267dce3e603768e899a859640a99cf4f5d475ac3f05afe7afe9abf7d8e67d02332a41acfd357ac755b67731cef23e8aa1bcde63d3c26df88559fa4512b385cd8170a2bead8493a116e6a2067ead2dacf461b6d94665ba849f9143760cdaa269350e4e2d567b626e3b96617f83ee738b2122f5540ba7fd31358d47a1203cf761ec28fd7caba8e299c09419ec7dbea6bb582c3b8af38467e529f759e6eddbaa5be2b57c50dd89febd2155a8dc0e4ce3c8feb036541e4373ff3399d399ec14b79156f743ce9d8b181e63c0853e029a69d0b4f07100a2827932e101c96cf242f32639e54dbb469d3e4295cddec2247339dfa3099eb52cd4ec8c555aa9c1d9fc73907deec184097d5e819d534a217d6c20d57096dff3731cea51cab1338b951a38416502c04e61b801ad380845b3c164688e1249950c15ce90a4a9dc031fbbc8166713295ae213594f1300903bfc85cceb512afad13380e204408bb72b963619a1074aee586536ef50aabff6ff63b38b5d8efe0ccd722fe17328710b4e122efcf0000000049454e44ae426082),
(22, 'TROQUEL 21', '0.50', 0x89504e470d0a1a0a0000000d49484452000000300000004708060000004125c4fe000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000bfe494441546843ed9a8753555912c6df5fb05bb555bb555bb561669d9d9d9d99da358c39621623c631a360c69c30e79c032a98332610738e6b42413167c19cc088597bfb777c9705f1098f77a8d9addaafea96c27ddc77fa74f7d75ff7b92ef91fc7ff0df8a59123031e3c7820e7ce9d9323478ec8810307cc75f0e0416bd7a14387e4f0e1c3121b1b2b478f1e9563c78e99efe277172e5c90274f9eb85792430376ecd821a3478f96d6ad5b4b6060a0b46fdf5eba76ed2a5dba74b17675ebd64d7af5ea25a1a1a1d2a74f1ff373f7eedd65c1820572e9d225f74abc34e0fdfbf772efde3d99346992d4af5f5f7efae927c99b37af94295346aa54a922952a55b27239cfaa50a182f8f9f949e9d2a5a558b162e2efef2f23468c9013274eb857e485012cfee1c387b271e346b32bec7e8b162d8c073a76ec283d7af4303be4ebc573787e484888346edcd82c1a23ca952b279d3b7796458b16e5cc03b76edd92e8e868e9d0a183ac5cb952ae5ebdeabe631fcf9e3d3331bf78f1629932658acc9b374ff6ecd9231f3e7c707fe23fc89601a9a9a9121f1f2fd3a64d937efdfac9c58b17e5e5cb97eebbf671fefc79898c8c34793671e244d9bc79b3dcbe7ddb7d3723b265404242822c5fbe5c860f1f6efefddc4ed8c2f5ebd765c58a153276ec58193a74a8cc9e3ddb6cdedbb76fdd9fc8882c0d78f3e68dcc993347060c1820a3468d92d3a74fbbefd8c7a3478f64c9922566d7a74f9f6ebc00addebd7bd7fd89ccf06800bbcc1feedbb7cfd01abbb16bd72ef75dbb484e4e36fcbe7efd7ae9dfbfbfc9357e66f3b282470388711229222242c68f1f2febd6adcbb5c43d75ea94ac5ab5cae4d8b265cbcce29f3e7deabefb657cd600769f6a1b1515654207d6b976ed9abc78f1c2fd09bbd8b469930c193244faf6ed2b274f9e9457af5eb9ef648d4c06b0f8e7cf9f1ba940ecf7ecd9d350586eb10edf377ffe7cc3fbd400c2c91b643200ca64f13131312674609e3367ceb8efda053b0d3d92b0ec3e15de13db78422603ce9e3d6b16dda85123a34576eedce9f543b3021ea69650d5593c714fe8c042de229301283e4a7a8d1a350c23f060db800ca82783060d928103071af549f5cd093218c04e6fdfbedd6891a0a02053c66d330fdf8157f16eb366cd4c6db97fffbefbaef7483380642281962e5d2a23478e943163c6185e467ddac2bb77ef242e2ece844ddbb66d8d3883e17c419a01a84d929785934c6bd7ae353fdba44ec284e7b370c207ee27e77c419a01ec0ebc5fbd7a75993c79b2dcb871c37dc71eeedcb923254a9490dab56b1befda409a01946d7408cdc9840913ac860e703c1c1010603a385bb224cd00f87fe1c28552b66c5993bcde16942f8167439b84257c1f1e1e6ee4830da4190013d06fd6ab57cf34108f1f3f76dff11d8423f18e5ca049411edbda2017b4c6c3e8fe910ee8f0ddbb779b5db3014860fffefdd2bb776f531c69566cc285c6b97cf9b2e97a66cc98617acee3c78f7b25a83c81bc422a5071e9e4d03b898989eebb76e082dad87d1218fadcb2658b5cb972255b5a3c2b200dd277734c14bed49ce4042e629dca48e252c0e801602068d557242525c9b66ddb64d6ac5986d9509d36730bb81895d001a149d0fec4285ea1323b9783971acfa92ac41c408daf5ebf36f992929c22292929a61179fdeab5b94f9162f751b554df0d1b3658cb2d072ec625c47ed3a64d0d3f7fca0e2c12863aa2226f9e2679f8cc9972ffde7d79ad0b4fd605c32891cb2365cca8d112111e21dbb66c95c46b1ae76a372347bccad42e2c2ccc8c086d78363d5c501ceead59b3a619547dba4378206a4d94f45581572fa0b604a84a8d8e8ad6644c92ebfab7316b63a4534847f1af54593a7608910573e7c9792d5860ebd6add2a9532769d2a4894c9d3ad5b48ae93d6a032ee294e4628c07cd39c9cb17f1ff9b376f4aaba06029983fbf7cffeddfe487efbe93ae9dbbc856dde9e3c7e365be2eb84ead00c9f3d5d752a36a5599306e9c9c4cf828c1e17e46908c0a21089e651b2e688df847a3d4ad5bd7840c60f1e4c33255a7dfe6f9467effdbdf49a1fc05a44ca99252a5624519a7a22c666db409abd66ae0577ff8a394d6670c1d3c58e25571bed750a1ae942f5f5e8a172f6ef2c017d9ec092ef43ee5bd50a142268c1cbcd05082bf43342f7ef3ab5f4bfe7ffc53baa98aecd727544a162d226d8283341f6648f49a35325ba541918205c5af542919a444704c69f9ad6e00530686b20c81299010866d1803a892f9f2e5936ad5aab97ffdd103744a618c1343fbc8aac815729bf9e89ad552b8407e096cd2545628c32425256a3e5c939fd57b55340c31204e93150f400e458b1635cf664c68535f393006307f2f50a08091d20ec8018ace296d298fc6c6ca15add60f1f3c90e953a7482dfddca8e12374a17126e9efaa4c6ea80654d5d01aac06104260eedcb946dd1654efd007e49a0728f3850b17965ab56ab97ffd117801ee873852539fcb89f838e9d4be9d0cd090dba2d2e3f1a38f4529e561b2fc5ca7ce4703b48f760c409654d4df1146e334b99935d98649625422870828d1cff134897de5f225090f9b2ed52a5690b9111172f244429a5ec233f555e7fb6bc26200210418d2d651c36038e69d9e26ccbec0143292ad61c386d2a64d9b4ca5fe858abdf1eafec64a877ec58a4a0565a110ed6747aab659a3097c4eab2d533b3c50597b8981ea1d420ea3198831d968d7ae9d2964f400d6eb00ba075773cac2380583f8722ec2e792362275959dbeff268ffca057d9e2c5c4af6449a9ab3b3e7cd830d9bf6f9f29502db592d7f4f797219a03546d2a354741342f83955a318041b153676cc1053330b81da68ba1d1a6ed4362b3803beaf21d2ac6ca2b3dfef5cf7f92bfffe56b29a28c92efc71fa5bc9f9f84f6ea253bb66f37f5a267d72ed2422bee18950e8795bd185e5124997bc24654e2d5ab57e778fee3092e8e2cf7eedd6b7608a660b085513422891a1aebb50d0c0e6cae5ea82eb5ab55959a55fca5a6d26d5060a04c5209c2fc9e3c9aa5f9314a3761b1b6a509baf3883ac291c118737eaa3d546abbd776b153882c5a3dca3d47a8947c0c801e8fe86e2e5a305fe684cfd24586c9140e1f547a2f5469ccee43af187cf0c0bf8cb762558edfb87eddfc3de142f5a520324a21cfe8356cc2c59710f728c799aa34f102c967a3237340416cdebcb939924d7f446a032e929562443d40bbb46ad5cad01f9eb105ba32aa3d47a618633391d3a612c42b6345864e3087cdaa09cdc274144c67129dfe75015f9061b0c59900f217c620316d8dd5e98d5934933fa7b9b13e17229468eed925720136c20b363b280c41ae70024f98c254be3e3fcd002a247c4e778607f00635c1660fcbb39c1737189ee105fa685f90c10086af4ce7f002450d97db6c422890c80f7a03aa33a44182fb823403003bc4d4b865cb9652b972656344fa172b7c05e1829721095e1281f130c81764300010fbc1c1c1a64343dcf133f9610b6c12d285094883060d8c84a1efc82961643280c465d0857e61244242a3696c822a8da4606ac16b3b8c1ca90f3931229301ced1271a8784662cc2b42e3740ce7198c24c8aee2d27f990c900679c426526d9e893c90b9b61e480efe1cc8ca1027d03cce42d3219e000f66114c2db5270b6ada2f6293002e6a31761bce3ed59b147039016bcabc3ac88f9a6eda16c7a9073e41bb3596fbb368f06900b745a9c65d112521b9834e70690e3ce20987733a05a123d3bf0680031cf43a894947f1a73422a37407d805e69aca8411cb64324d9095b8f06a4071ee03548762737260b0e3829228c386c64ea9d1d499f2d03702d0f268c68cc730b2c9813225eb2e2c88bfa93553e64cb0098825690a69c3042e4d9ecd83e05aff770e445627330421df244e3d93200c042bccb4c65667778f98faacdef895f849aaf179bc2348430c500a40c2f9de0118ca27a43b37cc641b60d20d178304c44d5a429414d7206403f4dc3c2e9a6af17d598be99f334f41283006a0445950bf14787e720db06002ce74487491ea739ce6b031843b1a32565e77cb978066318769d934d3a389889c1336718bc0a442438f0ca00809b39756467a8d2b4a0c86e9a20e69f362ef411dfc1c5fb44bc9a030b3228668e8bfc70e0b50134e324155ccda9233a89b90f13385b1739061b71f11dc86faa35df4d32a76726af0da0b8910b0cbf784d987884bf799983e6c7d6c5f3b850033cdfd301b9d706b0035448e78262c90d422bb72e9eefa9f9f7da80ff2e88fc1b3efc55866572ec950000000049454e44ae426082),
(23, 'TROQUEL 22', '1.11', 0x89504e470d0a1a0a0000000d49484452000000520000004f0806000000786492de000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000010c149444154785eed9d677054571285f7c76ed5eefed82affb0ab967536c62baf31512009ad10c9e49c733219091144ce194cce49e4607234989c0498683060a24dce39180106cedeefae468c84d24833638474a82981decc9bf7ceebdb7dba6fdfcb9ff407e1d9b367ba7bf7aeae5dbba68b172fead75f7fd5f1e3c775f4e8511d3e7cd8be0e1d3aa47dfbf6293232523b77eed4c18307edf163c78ee9c489133a7ffebc2e5dba64cf71fbf66dfdf6db6fd167f73efe3022af5fbf6ec959b46891264f9eacfefdfbab6ddbb66ad6ac995ab56aa5f6eddbab53a74eead8b1a3dab56b677f171616a6d0d0d098e363c78ed58c1933ec39366ddaa49f7ffe39faecde87d7887cfefcb99e3c79a23b77ee58ebdbb56b97a64d9ba61e3d7aa879f3e62a5bb6ac7c7d7de5e3e3a33c79f2a84081022a56ac984a952aa592254bda7f0704042857ae5cca912387fd7bc3860dd5a64d1bf5ecd9d392ba7cf9725db87041f7eeddb3d6c9777a0b5e219261ccf0c5022322223466cc188d1e3d5ac3870f57af5ebdac75356edc5855aa54b184d6a851438d1a35b204637dad5bb75693264d54b76e5d55ad5ad5be8ff74062972e5dec39060f1e6ccfc9b9274e9ca8f9f3e75b521f3c78107d159e855788bc72e58a366fde6c89832888809ca953a76ae1c2855ab16285befbee3bad59b346df7fffbd366edca8ad5bb7c6f8465edbb66db3e7d8b06183d6af5f6fdfb772e54a6b850cede9d3a76bd8b061f6fc5f7df595ead4a963df7ff2e4493d7efc38fa4a3c078f11890f8438accd31fc468d1aa52953a668debc79962c82c5fdfbf7adc5a6144f9f3eb55677f9f2651d3972443367ced4b871e33462c4080d1a34c8ba8e3e7dfa58a2f7eeddaba8a8a8e84fba176e25f2d1a347ba7af5aab58275ebd629242444d5aa55d3d75f7fada143875a0b21523f7cf8d0de506a088c0bfca183542238d7307efc7875eddad5ba88eeddbbdbc0f4c30f3f58d2dd0db711c98d2059b0382e3e3c3cdc46625e580843119fe52d703d5bb66cd1b7df7e1b639d5c173e95eb717720720b912f5ebcb0c1848bc6371151cb972fafeddbb75bcdc710be79f3a68ddade0496897f467bae5ab5cacaa9d2a54bdb808572e07ab06277909a6a229119bffcf28b962c59a27efdfaa966cd9aaa50a182d584dcc8eb001ef4e9d3a76d706bd9b2a56ad5aa65b5eb82050bb476ed5aeb5b914ca9418a88c4c76181641e445c2447e7ce9dadecc0a17bdbf25c05a4d6ab574fc58b1757fdfaf5ed50e75e88eebc5262a52e13c997909e213988ca7dfbf6b5810419b367cf9ed7c60a13030f7ad6ac591a326488468e1c692d1303c005e10ab04eeed315b84c24792d8103118c4846de20398884446286515a000ffcdcb973d67f1294962d5b66251969e6ad5bb7f4fbefbf47bf33797099488a0844e60e1d3a583f4836b163c78ee8a3690f5827229f884e74e7fe5252fc4836915822f206878db8250b2122a30bd33ac8a2300c02115a137f8955bae2279345244f88348d22032f2a2da74e9db2e237ad0ce5c440e0844c87eec5556199aef8fb4489c44f90c251279c33678e0d2ce4c467ce9cb159cc9b040c82bc9d00049958e6eeddbba38f268d4489c4bc0f1c386035227932519ae18dfc7913c1285bbd7ab5bef9e61b9b524e983021d9b979a24472e2d9b367dba49f27c513c327be09c3393e1078903f8b172fb6c50eb43186831c4aea9e1325928042ce4cd1810200433a3d00e2ce9e3d6bb566eddab5ad604faa4e9020913c81499326d9fcb477efded6e4a96ea72720eba86f629dcc1731cc138ae4091289b2475b5179a6804a3eedaada4feba014c71c11ae8d24042b4d4863264824d1ba69d3a656ee30a45d55fa6f02d0ce4c8d508ca1fa8e6249a896f90a910c69f4e14f3ffd646b77a44de991440017f04006972f5f3e5be8a0381d1f5e21127d886e244293c150627a53a374724090c1bd319b49a568e9d2a5f14aa2578864ae0513e6c308520ab2e9196437c408022e23941499e11d37e8bc4224fe90d212ecdfb871c3adf32a69118c50f43405608a1a4470d2c7b8bcbc42246524ba1b8a1429926e7da333208c4c0e322960535dc7edc52d5ec7229294908204443265908197c02f52cc601a05814e4477462c22092ca44703060cb03e21032fc11404b183c606727002b273108e4524a29379177c01d59e0cbc04c908c1971e232c92aaba7382128b4822129648b0a12d24032f81afc44f32d987a131f5ecdc57148b4848a4ad8ec92c268332f0120c63ba48e8a2431a6299ce85df584432714efb1c055c26d0bd054764bc7ae58afdde0be7cfeb96d1af51467aa0d7b80964c8fd7bf7ec7bc87999f12300103d39c64dd1747afae4299d3b7bce48b79b6e4f24f81eaeaf5bb76e3620537273208648beb44c9932f2f7f7b796e9adf692274f1e9b277d45fbf7edd5b2258b3569fc784d9b32596bd7acd6d123874d82704d770c493b77ecd0a2850b357eec388d19354ab34d043d7ce8908e1c3e6c8fad34436ef6cc599a387e82e6cf9bafc86d9196e817e68fbb801c445b13701a3468601fa6033144f2268824a72449e7e97a03d7cc70d919b9cd10345a21cd9aaa6cc912aa5cae8c3ab76fa7d933a61b42b668df9edd1a60aea956b56aca1ff85f150c0a529d1a35346df264cd307e7da8196aad5bb5526df3bb8ae5ca2bb4454b43e8446ba5cf5fa4be1dc5018c8de84d7d96e6572a620ec410c9d3ab58b1a20a162c681b8e3cd1b115175c18963861cc28d5ad514db9bfccaa4c6fbfad8fdffd978a04e757cba64d3578407f8d1a3654a58a15d347efbea7bffef92ffac7dffeae2f3efbb79a376aa436a1a16a58b7ae8a99042247d62fe593f953952c5a543dbb75376ee0aa9eb9d831911c54af5e5d7e7e7eb651c281182229da921656aa54c986771caba71115f5587366ce5048d3c62a55b4b08a152ea4d2e64907fa0728abcfe7cafce187f2f9e413f9e5cca172c652cb942ca512c58aab70c142f2f3f555968f3f32e47da1a0007f05e4cd239f2c59f441a67faa403e7f75edd05e37ae93e2ba9f484479d6ac5963f5acc710c9d8a7fdd8d1601457b97b020498c50b176840df5eead1a5934618cb9b1a315521cd9b2b7f40802125937d05e70bd0a8e1c3347dea34454c89d0c0fefd55d75c67a677deb62f9f4f332bebe710ff91de79eb2df966cfa68e6ddbdaf3bf78eefeca15c6962d5b36dba5e1400c911087f4c12ad19354813c0d74d8ce1d91266358a9ad9b3799a1725c674c541cd4afaf2ae1aff3f8aa68a1820a0b09d149338c18aac78f1dd352937d756a1f2e5f63a9d98d45fa1beb0c3441d22fb7afb1641f152f5c5803cd395c6d844a2e50372c0a88974886329dadac14a02aee0d22a3a21e99c8774e67cf9dd5bde88e8ddbb76e5a6baa59a5b25a3469a491c64a972f5d6a8f81d3a74e6aaa89ea61212dd5362ccc10da5e1dda85db60d3c21842cb66cdd5bf4f1fad58be3cfa13ee075dc8b973e74ed822995af0a645a21f097244c26746353cb87f4f7b76ed54a572e554bf4e6d4d8b98ac53274fc4e835ae69c9a28566e83753cdaa55b4ce48a483070e68d78e9d5ab37ab5162f5aa4f5ebd6d996934b172fdacf78025864ce9c39e32712a90089bc89a9576ff84807ee9a40b72b3252a3870d51b386f5d53a34443367ccb043dd8195cb96aa47e74e46025531d2a79afaf5ea6945bb33bc3539c7cc22eb81e225127f85c9962851c2765478236abf303e8ca1bd71c37a0d30c3b172d9d20af6cfab4ee1ed8c354e31be7395b66fdb665ba8c35b87a984f197c1017eaa53bdaa19bebdcde73698a17ecaeb9d1f891249aac5bc04990d82dc1b3a92214d46d2c9a45b858d6eccfcfe7bfae4dd4caa5ab1821dbe6dc25a995798c2425b29d02fafb27cf0be7c3efe50858302ad0fed181eaeb9b367db4014b762ed49a0b789da74e339104324e298853ed9b367b77d2fde4811c99dc78c1eadaa952b2bdb17ffd167e842f3b370fe2013790b595d5928385841f90295cb5c782e13a1f3e6ccaefcfe7e461ef9ab7ce9d236e3d9bd6b578a7a1a530a2462606060fc821c6091442388f4467b0a39f4d48808b56ddd46b56bd63401a68e428d72686952c5c62697ad57bb966a189f5da5622535a857cfa490cdacff6cd5a2b91ad5af67df3b7eec589342eeb16d269e923bcec00fd3a9ccea88785344c0022396b7d18de56cb69ec243e3970918582695154704e7ef645af8697a172f9bbc1fa2b0ba28739cf7f11efe4d23032ffeeee93926be97ca13d51f1a539ddd5f2c226951212127d820213c8da7c62f3f4fc2b725a714867fc4523c69915c0753d3b439321543cdd679aa3a1691f4405267a3024c07aba7911c92920b779e2b3ef0b05856c2bc0d863677ee5c3b121c8845246574c8a4cf8585971978092c9e5903e6b428ea30db8a1b72201691982abd3e4c82937767e025f08fccd310b12133ae3c8c45240cd313c8f026e864e02518c62c8b215a531d23f839231691f819da312012f59e81ff73821a60c680d499121a9689853a231691806225733658a4b772d7d7197040ad76fffefd76e690ad21f08f71a5d62b4432a143f58755ff68a6b8cca73750836094b228017d8da2a1cb226e4afa0a91304de587fd24d04bf84c6f640caf2bc85e18a1a4cfcc1cb240213ee1ff0a910e906bb3a40c49e41ce6d313f08f2426c40cbaf35ab4686157c0c5870489244a9132223c71b4e9d15fe2d6f087ac04a6e88dbe4e28754e9048ac103dc942253a56e97bf1742efbba01ad481f149d272c958154e7ee0a67244824a0a192053bf807964840667a8043f2e0d62897d1f2cc52117e97502a9a28913ffef8a3ad7454ae5cd9ee4f46db1f5597371d886d8c863e488ab8e8c7a47ae91325923216518a4a071b20d1faeb8dcaf91f09640d055b7665e1bea93da0609232a04489742c72643b2d7c0526ceba136f96f5bd09c8627b068c072b647704ca66c8c1a4e243a2440248a35a4eff3432806d0b50fa6fa2b6a4658f1db4082c5822153056032727c826492440fa508b236ab15a16bf89d277c77e39af03488b1d3b686189a814b219aaf3c945b28804682a26e8e9c620f8506a27aaa3fcd3721ac988a358cb9c3e5d2658212920531dae68e76413e90053b57c21ebf3c8c971c4ce0d976909f8443238dc1644e2bae89dc775b90a9789c487300ca812b3ef03fbe5908f7b733ad41d400fe2fb99528148020beb0c917c489d84f4624270994824111d06904774a336471a89604d4b1a93e18bc4a1618c7b20872662e31759b8e56a4aec32910e10b5f12310ca10c74a219695f668cdd7713f201eb4a3b6484587f97b22342d318ea6312cd1556b042926124026354b7426454fea75b44d73716cddf03a81a00281582024729d2ca366e111b227b5ae2955440222364381e1817c600d237b485231c13211f52979c2ee020fdbf1c02191a0c2de96f8768637fe104b4dad2e4e35910eb0bc8cdc94ca3a3b36939bb3f3329a8ca7ceb62f49e5abee063a9704829d05098c54b3d8058019d2f8aadca981db887406fe86e1ce05d36f4965995c1d11cfca29c42e22989e4c77dc0c568f4f46cae0a3d9471702f94e5620040707db0e127c39f5444f8c108f100918d62c0ca5d041f28fff7468509a9028cb11295343269fc3b7f15d4cdee35e18114c50a109a9a5e20b59f2e6d8efcc53cac263447293f84eac046d466d6fe0c081b6659817d39adc1c9b776225480fa415d64c64c50df079c78b7ff37b8e3b9aabf81c4514a22e128ca1cb3a21c73ee47c275305bc9f7378529e798c4867700394a610bc387b8ac54c63302347b4470c53c6c77ab05a2c88635833b92fe29fe35835c7f88995f3398ef13e8e138d496159e2c643e33b19f6de80578804b4276345f848b67c4173a23d094a904b0703cbf7f87f18e81a2e54a890dd03979e4d7e52a96637698e050505d9ffc781c0c103a18842b5862d5e7117c81c9206efb5444bff0384f4f6adbea987470000000049454e44ae426082),
(24, 'TROQUEL 23', '0.85', 0x89504e470d0a1a0a0000000d494844520000004500000047080600000051458a22000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000df049444154785eed9c877355651ac6cfccfe03bbe32a62dfb5a088082e4d883421482f26f4123a430b515a002121a18b7410a528a274100d45d12174488000015410a444a504146c80c2b3dfefdb7b98102fe186dc4392eb3e336702f7de9c7bcefbbde5799ff73b7114649c3d7b56dbb76fd7ac59b3f4eaabafaa4d9b36ead1a387060e1ca8a143872a212141a3478fd68409133469d2244d9e3c5953a64cb1c7c48913f5faebaf6be4c8918a8b8bd3e0c183d5ba756b75e9d245e3c68dd3871f7ea86fbef946bffdf69befdbbc41508c72f1e2457df7dd773a76ec98366edca8f7de7b4fb1b1b16ad0a0812a54a8a0a64d9b5e370c4679e38d37346fde3c2d5cb8504b972ed58a152bb47cf972cd9f3f5f3367ced4d8b163f5da6baf2926264655aa54b147d7ae5dedefad59b3463b76ecd0a14387f4fdf7dfebe79f7ff65d45f01014a36cd8b041d3a64d537c7cbcc68c19737db5070c18a03e7dfad89b7cfbedb7f5fefbefdb9b5fbb76adf5a6ddbb776befdebd4a4f4fb7474a4a8a3d57525292162d5aa4b973e75ae3728e61c38669fcf8f1d663860c1962bde8cd37dfd4ae5dbb7c57113ce4c928d7ae5dd3e5cb97addb376fdedcae68efdebd6d48ac5ab5caaee8fefdfb75f4e8519d3c79d27ad3e9d3a7959999a90b172ee8a79f7eb22bed1ebcf6c30f3fd810c40b323232f4d5575f293535559f7df699f52a8cd1b0614355aa54492d5bb6d43befbc63afe1ca952bba7af5aaefcaf286db360a714d7cb3f2fdfbf757c78e1dd5a2450bbb92ac3486f8e38f3f7c9fce3bce9c3963bdeaadb7de52af5ebdd4ac5933b56ddbd67ad0e2c58bed22e06dc108a75c1985953c7cf8b0929393edaa911c1b376eac050b16580fb8d3f8f2cb2f357bf66cd5af5fdf2ec8a04183ecb51c3c78d0f789db43c046f9fdf7dfed4a9108a92a7dfbf6b579830a4288e4077efdf5579b53a64f9f6ef318899ce4ccfff382808d72e4c8115b2dc819111111b64c62a0e3c78fdb98ce2f10c6e7ce9db3a13363c60c5ba508af13274ed8fc743bd716905188530c929898683d84389e3a75aaad14050524dacd9b375b2fe9d7af9fad5454b02fbef842bffcf28bef53812147a39028590132fc2bafbc625782102ae8e09aab55aba6ead5ab5b5af0e9a79f5a2e152872340a6ef9c1071f5877a4cc52627ffcf147dfbb05175c239c89e44b85c2aba98681c2af517045b8c2b66ddb6cc8b46fdfde569c6094bb3b051690228087d35e401da89c81c0af514e9d3a65c91216a6cc6118c8576102f40186bc64c9129b032910b0ed4008de9f8c024bddb973a7b532a40c32b66eddba7cad30b703ee83920d33a64ac2a760c22cf8ad48e50d46818b4088f010b2378d1d3ca030858d3f904ff09851a3465946bc69d3a61c73e30d46a11759bf7ebd860f1fae77df7dd7366cd0eb60f514f9053c06de4215e2de281e5f7ffdf54d2588eb4621b9d2fa4393d13256af5e6d932daf8702b80f380bd2059180c471b33c698d8225f905441cb7cd4f4b4b0b6a435710407f06d7224f224b1046fe608d8201d02cc2c2c26cf985e8905f420d245f2a1255a873e7ce3622fcc18102c3413a75ea64358ae8e868df5ba1097a38a450b418cab43f38df7efbadd52228bf1d3a74b082512883923c67ce1cdbd0e200fe528443db8f36429c914f56ae5ce97b2b3401a943e78590a203d3ca64afae0e9d2e96a3b7414cdeba75abefadd00424f4c0810396b7104638c5a54b977ceffe0f0e8211f105b181c9a29f863a0819ee132e0699cb4ee49c264d9aa872e5cad69dd05c43b1eaf803de0163a7126597529d7af5eaa96ad5aa96d6c35eff2aa03c134248aa90d6ac09d7898a8ab25338c80cf29d57b8660ee2f992a1d6570a487349a38bb6bb6fdfbe1bfa3b07658ae1d2471f7d6433b31720bbd332a49b2fdf64127bb2e9af8e98de23d3bc86910859f8d2e14387ec67f6a7a7dbf74f990ed7ab7076d5000a0cc5869994eb2d0e6598b92f13bbdc6a9981802f4addb143930dff8934f9abf813c5f460d1a26a6b92fb58e3ba4b172fd29a55499a6f2a5fd3268d55ae7429952a514235aa5553f76eddb477cf1edf99820f44772412c6b5dcbfeb140e640d511aedd58bc1352139c594bec8468df4ef071fd2df1c478e39ca962ead161111eadda3bba27bf65467431cebd5aaa9d2258aeb81224554f49e7b54aa64492d331cca2ba0b560146647b0faf3e7cfdbd71d66c0840e3a8a1742122d7bd70eed55c6dce043c6438ade7db7b9e1222a59bcb82a94f98f2a962babf265caa8ea0b2fa853bb366a52bfae9e35efddf5f77fe89ebbfea96953a6face147c5058283074cdc80a84387050a5780121c60b99805e23aa554bd53065bf7eedda8a6adb469d8c578455a8a0c7fef5881ebcef3e3d638c50af4e6df58b8956bb562df47cd9b2babfc8bd36cc664e9fe13b53f0815160b5682ccb962db39e031cd8ec962d5b440f14eca446323b6f68f45ad35b6d36c92c83019571d1f47d7bd5b15d3bd50eafa98eed3b68aeb986e4e4f58ae9dd4b954d535aecb1c7f49439aa57aaa8b5491ffbce167ce01974cb1c480af034e0508a493258c95f7394176014f2d40993d02ef858233f572725a993a102834c13badc7085a3c69b4e669c34468956a5e79f57b1471fd5a30f3fac524f17d7029304bd024c16c984bd33440c7c05584f6194e185515c5092393706d96812da90d858f5ead6554b172e50c6f163bae81bdc0f8e1da40853a1aa98fc52e2c927f5c8030f682c0abc31ae17809ba0f4338386f293ff8043e64581622f8897149f55d9684268f4884435375567dca891da9d9aa2cc33a775707fba56ae58a14913262a3121513166f5ead7a9a3e2c58aa95fdfbe962ae075c106e765ab196213322c36000e0d11331ee2c92b3d9610dab279b312e2e314d1b081ead4aca17973e72865fb366d329e336dd2449364fb68eeacd986b72cd12c734d94e92a61954cc9eea973260f79219ea330d2fb8c1831c2ca27103870034f41ab0d26ae9a90396ee2b44f741f5b6d1ebeff3e3d746f113df3f8e36a1519a97686c0d5090fd7d3c6239e309528a66b47250eeaaf01d13dd4b8ee4b7af6a962ea6f3c85eb0ab6a7703e8a0bfbe820afb0daeb3cc51571d942154c46cb97d2e31c3c7040cd9b3653b9e79eb384adfa0b617ac9b0d546a63c37aa5b57b58dd7c0515eac5259dda35a2ba67394bab46eaec675c2f562e530cd303cca8bd0e19cd010c81bbb13986f31e2010e3a0ae588b21ccca117ee8e912185c3e3e215131dad58536d461a4e302a2141f1861fc4999e2bcefc8c37c92e3161b8c68f4cd098f8a11a3e2456c3060f349f8dd756735d5e00a3706decc682bcb2fbc98d1407f242b2c9ed76855b816a83e571d19d29a9da6e2a5c6a4a8ad2cc8aa4edda6d5e4bb1c72ed394ed494b535ada6e6ddab841eb3e59ab4fd6ac364939d93687c1bca6ac60d1481918856e396b4e75a8d16cb5c085721a25e6161805cb7353972f5db2958d832fe6a0a5e0e0352e909f6733330d5fc9b0c7790f650cc0774245e892e16928712e2571d8aa55b3664dab2bb834f7af02447a72aacb645d38ed0cdd6677a1bf374319780ad18174e29662170e0213dc9fd2c4a4b0b0ef30b81548b0840992061a2d4526bb58ef406f193ac35718aa338d0f6590bb3002a30dd83c1ba1dd52ecc2c175180ec1ff9910320b0965504ca0f4ddbb77b707ff2794b2c241ea6700d6d3d06a761386fa2c99b1290a3e9b09c8a56ec5c90abbeb8089197bdb6ad5aa6567ac68955ef541f909f209dd384f86942f5f5eccbcfcc11a058245d26127219b8749b8a138298417111574c54c4571047fb04621d130fb409223a7b83b95b3c75a6107c3749a3fba620acbc71ffb57f5ac510006a04c2123508d7860091aec6f2a5f58417f57b16245cbe0d9bc937db0eee2ba5100e58ac6882691878d50b9a1c237fbe5c202da0d0424aa4e7878b85df49c7660df601480b7a05712733c68840885b714662033d2f4911ac827844d4e23e23f1905b0b389a74429d12423c2a8305623db649e3d6b075d2c34fd1dd22b46cae97efc1a85ad092851884f58172acc8971392f46abc106a597eda09f7ffef9f50d493077eec11f2fc90ebf46a1743128820af364287498c689ad0b39c5624101dec1e48f506151915b7916c81d61dc0a7e8d02703d4a3527a22275ebd6cd3e0dc18eec40ac9d9fa03810fae4453c85f0679103d5a06f6a14171887d1275b36207684141c26a744955fe0c6d95e41c78f46c4a08b04eb0ad281e2964601780cbbb1894d7417380c5f4eec1624e0c57833450299918201adcfad1c1290515cd00e202fc063d898cb4102f3620b47a0c08b1990d3a2b05bdc1d8166053c2b37219f2ba350c6c831b4010853fc1d03da6f5471e2f54e946d6e8e42c042a014b248ecd92b57ae9cd8aac683db2c5e56c0c873e3d5b9320ae0c6f7ecd963e3b655ab56d65b4866fc1107dc17a1dacbb082711316ecf9656f0ddc833f3001d1e49af09cbc22d7460124591a48c62274d71806c9816135499892e84548911b28aff42eecea7cf9e597ad0cc0c813a18c6b0ab4c2e484db324a56f0273b780e981d9684927b81780d0f37f2382c0c92ca80cac58d6130c220bb47e185c43f37c6671184f803104cef68f9a924247a12698d1a35ac87c04382ad2be7d928809021bea1d0780b5e833b474646da3867880d01c460b83ebc879ba453e5e933f41b6e9cdfc79878204411264d59e5efb0d0c861047206e1cb3806c379e19141318a0bbc81244c778d66c1f49103a3b0a2cc6ddd033d831c00f3e4e0df7c86d729fdfce4753a5a9e30c11b91113188d7ad46508d02d123f393ecc82dac3e3d14abebf620ee7e104a28e14615e359231833378e64c196780c47b9c76b60a87813a1e4d518352b826a147fe026a0d984050410e2c7e378e406f8059e8421083bbc858a026ba69a210a1126775ae4f2dc288511ff37ca9f20fd1786b366d7c8109cfd0000000049454e44ae426082),
(25, 'TROQUEL 24', '1.97', 0x89504e470d0a1a0a0000000d49484452000000630000007908060000002d769f68000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000bf649444154785eed9d795455c71dc7fb4f7b4eff6bd2e624a736d134c6342ec4405010a82c8ae22e01641105c505835a0810255a89115091454c14a3e424d0a3a0862d290a2aa8200ab8c428ee4b10a33189e21e71fb76bee37bf63df5b915642cf339670e8ff7eec37b7f9f3bbf99b9cebdf31b689441cb5088279271f2e449ecdfbf1fdf7efb2d6a6a6a7431946ddbb661fbf6edf8eebbef647cce9c39836bd7ae19a2f6702ccab875eb962c46ce9d3b87efbfff1ed5d5d558b2640966ce9c89f0f0708c1f3f5e1743090d0d45585818a2a2a2f0d1471f61d9b265282e2e96928e1e3d2ae598c6f46eee2b835fb879f326ae5fbf2e7ffff5d75fb161c30624252561ead4a9f2677272321213133177ee5c59e6cc99d3aa8b310e2cf3e6cd93f1993d7b3666cc98214fdc458b1661ddba75329696b028838532f8e59d3b77cac07b7b7b63d0a041f8fcf3cf51545484f2f272545555c9b275ebd6565d8c31a8acac9427ee9a356b64cc585b020202e4cf050b16e0f4e9d38628dfcb43db8cc2c242c4c6c662f4e8d1080e0e46444404366edc88c3870fe3e79f7fc6c58b1765b970e142ab2e8cc1f9f3e7d1d0d0801f7ffc51a6a5dcdc5c9945626262101919296b4a6d6d2d2e5dba6488ae390f94c19a3176ec58b8b8b820282808999999d8b2658bb47bf9f2e53b698c186b536b2dc61830bdb3d1667ceaeaea6463cedaf2d5575f212323032525253870e080dcee6eee2b834166c3131d1d2d6b04f35d4545051a1b1b0d5b681e17c68e62d8e9612d3975ea94e193ff622683662982673ef39b878707162f5e8c9f7efa498b68023824983c79b2cc326c87ef8ea9998cab57afca2fb0cf9c90908061c386c9465ad3345cb97205696969b266141414e0d0a143864f6e6326e3ecd9b332bf7df9e59752067b031c5b689a06661eb6b98c2fbbbf14628a998c13274e202b2b4bb615ec1fe7e7e75b6cf9354f06077ecc366c8be3e3e30defde16652663f7eeddb28171707090798dfd654dd3c34b25ddba7583afafafe11de0c68d1be63278ad69dcb871b0b2b2829f9f9f96d14c708cc613dedfdfff4eb7981da77b64705cd1b97367d978979595193ed1342594d1b76f5f99aa1e2aa353a74ef0f1f1416969a9e1134d53c25ed4c0810365167aa00c6ed0a54b175933b48ce68132faf7ef2f4f7c2da385d1321442cb50082d4321b40c85d0321442cb50082d4321b40c85d0321442cb50082d4321b40c85d0321442cb50088b32f87faf46b48ca7834519a6b33fb48ca78345199cb466ac1d5ac6d3c1a20c4e63e7ec69b26bd72ea565f0a431eefce3c0ef3cc9f79a0b8b32381d87330989aa32b8bb17453afde1871feeecab290f0a3305f23b0d671b70e5f21525a45894c129eabccf82a828833bc989d79c60b7baa8085bb76c91f3814de1147cde1fc1a0b30de4772881efd59fa897532a6baa6b70f8d0e13b59a025b12883f70d18a7a7ab24e3dab54671369fc1817d7b51b26635d2177e8af7c3c311f7f1c758b57225cefcf28b614b516b44d079cfc3e6f2726c14357d7b4d0d768b63d95a5989bcbc5ccc8e8f475a6a2a0a72f3b077efde169fb26a5106efbd3876ec987c83f70fa822a376cf6e647c968e89e342e035a83ffaf77283b3a313ec6d6de1646f8f552b72e476b76ede94db2e484d41e0306f78b8b9c1d7732882fdfde03364081cba77c70bcfff116f76e8005f2f2f7c9296866d42564b625106efbf30ce34574946b1a80d932684c2d5c9011ebd5c111a321a33a64f47d08811428aa308ea7c5c17e9e982483b65ebd762cafbe17075b083bdb5355cc5e76e4e4eb0b3b1c6ebed5ec5ef7ffb3bb479e945f411a266c6c662fdba752dda765894c1e9e9c78f1f976fa8242357a4cf514123e1eee68af162a7ff959589cacd9b919a948421030660dedc39387fee1c6a455bb2347d118203fce060f3365c7af4c0007777f4138535a8638737f0a73f3c87bfb56f8fa10307226ed62c79d7e9fd6ee37a5a5894b17cf972792b005145061bdf92e2627c3c7326a67e3045decfc099db75c78e22fd9305e8d7bb17529293507fbc0e2bc4fe878d1f8b7e6e2e52463f91ce82860fc704711cfee218babff30edabcf8127a8874352e24048bd3d35125baf34ad68c55ab56dde99da8d08073e7d83bdab76f1f369495a17c53390e1f3922ef28dd5abe11ff9cf2019c7bd8cba06eae28c794a848f414bfdb76b58283ed3b18d4b72f22274fc6fc9414cc128dbdcfbb5eb079ab2b027cfd446d9a8b35ab57e388f87b4acae06dc4aa8d339842ee0ed6c9fa63081d1d8c405f5f4c9b3a155f6464c07be850bcf97a07bcf0dcf378f9cf6dd049a424b7bf3be1fd491391b36c19368bb4b6b9a202a5eb4be5d585fafa7ad9b5e581b7241665f05917ec1a1295bab6147243ece0e54b175177e410bec95b85411e7d31c2df1fa9c929481667b99d8d0d3a0a19afb56b87575f6987bfbefc0ababdfd16468d08143db1cfe44d8c3cd178a04f3a7a6f0e2cca60bf9b37fe1195645c12124e891177d5964a7cb1f43344fe639290e121023d0233a64d47b838fbdd5d5cd0cbd95934d476b0ead8096ddbb41135a53d7c448d61177697a80d94a01a1665708c617cf28b4a69ead8d123d850ba1e298989f0f7f186a39d1dbcc5b861b8ef30bc3b6430fc7c8621263a5a96b1a382d15b8879ad6d5bb46fdb4ea42f4f31485c883da2a7f5a06775b4141665fc2246b2c6b3472519e59b368a6eec3c7996bf29baa57f113da23eaeae70717294dd54cfc143f075413e567ff3353e4d4b45a018e4bd21de6f2fc61523870762457636eac4f8e99992215f1950e5123a65ac2d2941425c1c428245a3ede78731c141b206f8895ae2397830167dba506e478ed7d5215b34d8bc5c12191181e5e23545a8ca3325833b78e8e04194897f3f2f3717796200f8efaf0b51989f871539d9c811638b9d3b7618b6befd08268e4338b22e5dbf0efb45b758e55ba69f291984ed183b16974550f95014f95afc6490598ced9c111ecc5521854f79e06b9579e664fc3fa365288496a1105a864268190aa165288496a1105a864268190aa165288496a1105a864268190aa165288496a1105a864268190aa165288496a1105a864268190aa165288496a1105a864268190aa165288496a1105a864268190aa165288496a1105a864268190aa165288496a1105a864268190aa165288496a1105a864268190a612ac3f8c80d3ebf45cb68014c65181fa243295a460b602ac3f4b11b5a460b602aa3b1b1d1f0ae96d12268190aa165288496a1105a864268190af158323a77eeac653423943160c00019eb07caa02d2da379796419a669aaacacccf089a6293978f0209c9d9d3172e448b327529bc9e0920d13274e84adad2d020303b58c66828f7db5b7b7474040c09dabb6c44c069f8b1e1313037777775943749a6a1eb81c45f7eedda50c53cc64705d89f9f3e763d4a851888a8a42515191920f767fd6e1ca6a4c5363c68c31bc731b33195cba811bae5cb912898989888f8f97f94dd37470e5372e33141111012e3e668a990cd602ae37b163c70e2c5dba14d3a64d93a98aabba18ff1344f3bf4111e9e9e9b2ac5dbbd6f0ee6dcc641006fdf4e9d3324525242420333353d696868606c3169a27858df5ac59b3647b4c29c625f98cdc2383f079e2ec5965676763e1c285282c2c944298c64c5b7fcda3c19831eb706d2bb6c75e5e5e32fd33cea6dc5706e112a35c2687e98a6bf9514c7979b91cb0681e1da678c68c0b1ae7e7e763d2a44932fddf6f59538b328cd4d6d6a2a0a000292929888d8d45525212366dda84caca4ab9c014d74dadaeae464d4d8d2ea2545555c998545454c854949393237ba814307dfa74ecd9b3c710d97b79a80c36e8ec1717171763c99225888b8bc3840913e4e8910343563bfe4ee31c30b6d6c2e30f0b0b939793828383e5188271f9f0c30f919c9c8c8c8c0ce4e5e5c99a628987ca6083cedcc6469dd6f9477bf7ee8dae5dbbc2caca0a36363670747484abababec3bb7d6c2e3efd9b327ececec606d6d8d8e1d3ba25fbf7e888e8e0617a6e4a526e3ead29678a80c53f8c7989a38200c09099167007f868686cab38367466b2d3cfef7de7b4ff6941813660ed60aaebec9e5f71e65e9ebc792c1596f4c5b5c288bed041b25e64763e1efadb5dceff8d93e70dddc07a52623ec713d960c4dd3c05a4279b9b9b9080f0f87a7a727faf4e9a36534275c1b8a4bef7119532e1ecfb11b25f06a78565616525353e1e7e707070707d1ce58e33f49c346ab444acf980000000049454e44ae426082),
(26, 'TROQUEL 25', '1.41', 0x89504e470d0a1a0a0000000d49484452000000530000006508060000003191dfb0000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000096149444154785eed9d895315571687f327cc94b3688d9554ca6865263589638896c44146d4a720688c826c0246105c912de2c8e202b894280c045c2ba0c81265893b22a0c6310a2a6eb82b20aba0020a2e80bfe9dff5e1c080c49ababe3cf17e55b71a784dc3fb387dcf69ea769ff7d0030f1f3ec4a953a790919181b8b838848787232424044b962c41707070af1c7c7f7c9f313131484949c1f9f3e7515656867bf7eee1c993277a33ddd3a3cc3367ce20343414cb972fc7dab56bb16edd3a444646f6fab17efd7ab1a5d4152b5660c3860dc8cecec6eddbb7d1dadaaab7d3952e32dbdadaf0f4e953545454203131118e8e8e58bc7831121212b067cf1e71d09c9c1cb1edad63fffefd484e4e1632a74d9b0677777721373f3f1f7575757a535de92493615c525282bcbc3c24252589900f0a0ac2d6ad5b71fcf8715cbb760da5a5a522ecb9edade3e6cd9b282828405a5a1a7c7c7c306fde3c7186d2c9d9b367f1f8f163bdb1ce7492c930cecccc1473a2979717020303c54129b1b6b656cca13c506f1f4d4d4d628ea48fc3870f63fbf6ed888d8d158382abababf5c63af352e6f3e7cf317ffe7ce8743ad8dbdb233a3a1a858585fa57df6d28f7d2a54b42e6ecd9b3c554f0e8d123fdabff45c8a4487e83a5a525860f1f2e2292e1fcecd933b19302b87fffbe88ca850b1762dbb66db871e3869816e9ae1d219309a7b2b212363636b0b6b616d9ebc183076207c50b5a5a5a70e2c40971c632db1f3c78504c031dcb2521b3bebe1e172e5cc0dcb97311101020b2767373b3d841f10246607979b9c8e8cb962d13528f1c3982c6c646fd1e9a4ceec4a83c76ec98a827392ff02fc0685574a6bdda61c0f9fafa8ad39e89aa9df75884325befddbb57d4524cff4545454ae62b609d396bd62c38393961e3c68da8a9a9d1bfa2c9e45c70f5ea55219357383b76ecc0b973e794cc57c0486411efe0e080f8f8f84e659290c9c8dcb76f9fb8646c2f4c95ccee61647a787888c864a2ee1299d7af5f17975094c90255c97c35bc78e169eeececdcfd69ae64be3e4aa644944c89289912513225a2644a44c994889229112553224aa644944c89289912513225a2644a44c994889229112553224aa644944c89bc75323b2e3921fcbcaded7997afff1abc55321beaeb71f7ee5dfd672fe0ca34aec06b6868447d4383b66d40d3afb4e2e4ad9159535d8d933f9f445e6e9e58ebd4dad28ae6a666d4d5d6a1fc4e392e5dbc8482c202b13aefe2c58b42704f2b79df04462f932bcc8ace162169db362c0b09c5a28045c8484f175f2b2d29c59db23bb8527c193fa4a561e5ca08448485213a2a0a3f9f38818af27283feae462b933f8351171e168ebf7f3902fdfbf6c3c00f07e0f3cf066398c917709dee8ce875eb91b173275292b6e3eb4913f197418360666a0adbc99311b96635f2f372c51fc35018ad4cae8ec8cfcbc3a891e6f8439fdfe1833ff587956e1c3c67ba639c85056c2cc7c3e39b19080cf0c7627f7f0cffc2042335e9be0bbc111ffb1d3276edc2d93367c41c6a288c562697e825262462d0808ff0e1fb1f60928d0dfea59dbe7bb2b2e035f31b4cb41c8709e374f86ac2044cb2b2c29f077e04bb2953b179e326149e2ac095cbc5a8aca8f8c55b4a6462b4322b2b2a919a9c82d1ff188589d6d658b37a35ce1515897970c16c4f4cd08dc1f83116d08d1a05d3a143f1c73e7d30468bd8e0a060646566a1acb4048d8d0d68336012325a995c64cb085bb36a8d9650a2c5627cfeb28cb6e9f6d360ad1b8be90ef67071748485b939faf7eb874f3ff904169a7c2f8f59f8f7b1a3a8a9aa448b01978b1badcce75a21def2ac459ca6ad6d6da8ada9c64ff9b9888c0883f5d8b1983dcb031be3e290b22359646f0a5faffd8e733c3c307eb405dcdddc4405c0c5ba86c26865b6d3dcd42492d1f1a3f958b7320c6e7653f0b5364ffa7a7b232e361689df27e03b6d7b283b1b798773b0263c5c9b47adb4643516519191626db9a1307a9997b54492959181e5c14170d1445a8f368793ad2de67a7a21c0cf1f7e0b7db060ce1c64a5efc2dedd3f2250cbece65f9a62a295a596d563505656aa3fd29bc7e865a62627c3cbdd1de6a6c3613ae433e8468e80c3d4a998fad5648c1fab13e510e5858504233428081327586bb5e8a7f8d6cf07fbf6ecd66ad55afd91de3c462b9397820f1b1f62c5d2a518316c18fafef63778bfefef3174f05f31da7c24867d6ea2954303f1f1800118f6b7c170b6b3854ecbe643870cc1283333a4ff90aa5d19156bd344d71b9cde14462b93376d55555661537c3c027c7ce0e6ec04672d8bbb6a5b177eece080996eaef8e7a245888f8941506020a64d99826f7d17226d4792fe2886c5a823b3b1a111850505c839948ddd5999c8d4aec939d277ed44ba7619b9fbc72c1cc9cfc779adfecccdc9115342aeb6ef8d6b57f547312c463d678a5bb2b5d288ff66e38d5cbcedb0e3e0d7583ab196e43ebc67915b43ffb7a81da34f406f134aa644944c89289912513225a2644a44c994889229112553224aa644944c89289912513225a2644a44c994889229112553224aa644944c89289912513225a2644a44c994889229112553224aa644944c89289912513225a2644a44c994889229112553224aa644944c89289912513225a2644ae4171b85b4775d61d32076b5538d425e0d9f6cc3d65faeaeaed8b2654b57996c61d53132550b9beee13d4b6c21c95e739e9e9ea295244ffb76443f20ee70f4e851d11a312a2a4ab4455432bb42276caee4efef2f5a28a6a6a6766eae44db6c5dd5b1ed174f79433ef7e26d804ffba2a7e2e262d18676e9d2a5a23d5ac75e73a2871a85f269023366cc1083a73a1ff9a0e80c1b7c1e387000111111d8b46993688fd6b165e2cbbe939c3b57ad5a2522934d7fb9234f7fc50b98c51964cce46cb5cba72ff01e4e06623b2f65328c9984d8ca8a8988699f9ff31bde65f8002ae6100ae45cc94eb1ecead75df7c39732099f33c43ebd94c96f64a4b22f2fa3f65de5f4e9d3a2dd2efb71dad9d989f2b1aaaa4aff6a673ac924cc56eca3c686c71c9c64d94691076592ba72e58a6860d75b07df1f1fdac7f2902dc9d9f499cde7cccdcd458266d5f32abac8240c6116a7274f9e141d94adacac60666626faf8dadada8a36ddfc01bd7130faf83ed966d7c4c404dededea269fcad5bb75e3c39b187fbdcbb95d90e0b5236f5e429cf8997f3057bd5faf9f9892696bd71b07e6441eee6e6061717176cdebc5944ebebd0a34cce950c7d9ee29c8473737345a3f843870e896d6f1d7cf217dbc8727ae3d5219fc8f03af428f37f6188b3ae62f1ca0781f6c6c1f7f7ff75cf06fe03d6033bee0e0e5e9d0000000049454e44ae426082),
(27, 'TROQUEL 26', '1.11', 0x89504e470d0a1a0a0000000d4948445200000036000000830806000000c642e81b000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000097c49444154785eed9d7950d5d715c7ed4cdb99ce2499b47fa4c68c93a435d168c54cac2c2208b218d92205d40082148868acec8bc86a190504a4801411708c821054d04645145cb0c405500117407041ad0ab2ab28cbb7f7dcbcf70211211adef07bcefdce9c79e3cff7fbbddfe7dd73cebdbcdfbde78ec36b2a01a66a1260aaa661c19e3e7d8aa6a626343434e0e2c58ba8aaaa1a73bb74e912bf9f969616f4f7f7cbeef4790d09d6d1d181ebd7afa3a4a404999999888989818f8f0ffcfcfce0efef3f26469f4d161c1c8c8d1b3762c78e1d387efc38eaebebd1dbdb2bbbf31f3524d8b973e7909b9b8b9494146cdab409d1d1d11c4e0a161f1fcf5fc3c2c2b076ed5a242424e0fefdfbcfb5de2030facf67cf9ef156dab06103222222909494845dbb76e1c489133876ec188a8b8bc7c4e8b3e59f4f5f3a81d9dadac2cece0e274f9ec483070f06c129c07a7a7af0f0e1435cbb768dc31018bdeedbb70f656565fc5bb97bf7ee98dbeddbb771e1c205fee5070606c2dede1e5151513c6c1e3f7e2ca31900d6d9d989f3e7cf232f2f0f5bb66c414e4e0ef7e1ab57afa2b9b999b7242593b1b6eeee6eb4b5b5f1d83a75ea14626363e1e0e0c0c3e6ce9d3b329a0160942c88dcc2c282c351d62118a9ebe6cd9b080d0dc5ba75eb78c8949797f34cae00bb72e50a7c7d7da1a9a9898282826153a994d4dedecebd8b120ab51e350a359202acb2b2125e5e5ed0d0d0e041aa2a22f73c7af428cf96d472dbb66d434d4dcd8f6014906bd6ac81919111cf32aa228a3902a36e29242404e9e9e9dcfb0681d17f989b9bf30ca32a7af2e4098e1c3982b8b8b8a1c168c844bdbaa9a9a94ab51881151616723072c58c8c0c012669093001261109300126110930012611093001261109300126110930012611093001f613f5f7f7a1abab136d6dadfc6767fa2173a89fc9e9586f4f0f7f3242bfe2d2bfc9e8494f6b4b0b7f3842e7f6f5f5c9ce185e4a01a30fef6637d7d9d18ee6fbffc3d18243c8cadc89bd7bf6a0a2bc1c6dad2db277fea07ef6feaece0e34deba89b3a74fa3aeb616ed6d6d1c2a292111695bb7e2c07707505d558dd6d656d959c34b29608f1e3dc2ad5b8db850518e93458508f0f2c0126b6bb838fd1d294949b8c88e77b0d6938b5aa9beae16458505d8929c8c03fff90e572e5d427959193e9bf129e6cdd583c7ead5f83627070df5f5b2b3869752c0e821dce182c348fa573c42030360aca70bb5a99f406bd62c7ce5e4846f32d251cdae2b57735313878adf1889b57e7e48d99c8cfcbd7b9191968671e3c6e1f76fbe890546c6888fdbc4efe7e7482960c78a8b79ebbcf7c7f1f8f5b85fc1dcc414deeeeef87af957f8dc401f66c6c688dab01e8fbaba58cbde426ece2ef8acfe1acb965823233515a92929f0642d64a8a787b7df780313df1d8f79ba3af0f7f1e14f52e929eb48520a58614101165959e377bff92dffc6ddd94deed9bd1be9eca66dfe66091d2d2d04fafbe33273b79cec5df0fac72a2cfac20c6ecbec51ca3e233f2f0fab56acc48c697f61adf51626bcf30e73c919b05ff225363357a6243292940276aaa484c7c48ce9d3f1c1c489484a4cc4e9efbfc7befc3cb8b9bac074fe7c840405218f25130f06a5a7ad057d2d75ac7271c259f6bec3ec8b09090a86b18121de1bff2efef4fe0798f5d94c2cb6b6416c4ccca067ca2f9252c06a5956cbcacc44684808020302909bbb9b3f51dc9c9000f715cbb1c2d90971d151888d8e8685c9024cfef07da84d9e042b3313963cfe8dac9d99d89aba1561ec7c0d1697737574606d65057f5f5f6465658d5d8b519f738ba56e9a2d43b366b232b3e0ebed0d6787a5f059b50209d1ebb1233d15de1eee30d69f8be9933fc2a753a7608e863a2c2d2c101a1c82fcfc7c1eabcb5d5de1c1e2333a2a1a7b580b5755560e3931e5a7520ad840dd68a8c722cb8598a9a606bbc58bb0f7db6cd4d75c46d1e1029e480c75e76099dd9788080b45447838a64d990223e68289acffa27eabb6b6864f25a269178fd9cdfe5c29058c2e4a4fe8cfb3ce3899a5fce91f4fc2b44993e06067cbdc6c278bb752e4309732d0d186c11c6db83a2ee5ae99181f0f6d757518cf3340c4ba7fa2f4bfa58a11c8cb4a29607575752cdb6523c0d707a6468698f087b7f1e1840930d2d763699cb9556424c24342b1c0601e0c58e258b8603e5c9d96c1cdc505ba9aeab059f805e263635151562ebbe2cb6bd4c17ad9f0889e55fbfbfa4177f66c7cf2d19fa136e563164353a1f9d7992ca6f4b1982582e5ce2e705de6081b0b3318cdd581ae9626666b68c07cbe21d6787b621f8ba79b376ec8aefaf21a75304ac5346d628d7f004c585a379aa707477b5b38d8daf261958da5251cedece0ebe5cdb2621442d8c8c499b9a2d9e7f361c03a645f8fd5c8dcbe0d95e72bf8a0f95535aa60140b34486d6c6ce453922823d23c916a961de519526ed5d5d57c42c90dd62a972f5f466969299fe8456e4cb37f7a7ee1ec1fa5b458171b2a75b23f55e8b5abeb91ec958efd601dac3b68efe8e0efedee7e8a2e36686e6623f97bf7eef1637d7dbf7cf6cfa883bd6a16a3335ee5bc1769d4c1a4220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c024220126c0242201f6da81d132a9d7016c5071565a1d44e5aa838282541a8caacea6a5a5f1756a1c8c96e5522978aa136c6262a2f260b4384f0176e6cc19040404a85c8bc90b201318795c6a6a2a5f65a8003b7bf62c6f31333333952a804c85d0a9ca3b5576a6fb4f4e4ee6f9421163151515bc7e3cb9a22a57761ee48a24ca24b46783b6b6368a8a8a6447a52faa7b4f9b0e444646223b3b9b97dea685b10a30aa1b4fd4d6d6d6bccc3aad4857857af794f456ae5c89f5ebd7f3dc409b0e501d100518515276a162fe54379e02922aac4859544c88dc70e9d2a57c430f4a1af2e2260a303a405b17d07606e4abb485c8c18307391c6d7540f571a460549182b65f218fa235d8e47e9e9e9ebcce3d5579914b0126176548da88c2dddd9da77e434343ee9eb42308edbc41bdfb5858787838df5e81eecbc5c5058e8e8edc05c9c328cee42e28d7736024f25b4a9b7401aa7f6f6565c5fb384a2eb43dc358987c331c373737383939c1d9d9991fa38d6986d29060bc94051b62eddfbf1fdbb76fe79d1e0d2e47db685cf7b246e99ccea50a2d870e1de2cbfe87d29060034599914069fc457b358c86516c50a00fac493092d15f1f6454ce866a1c50912e5ad6ffa22a2d2382c9359acbe8e95af24420374a08c319559020a34c38b280ff0315a33091eafb28640000000049454e44ae426082);
INSERT INTO `troquel` (`Id_troquel`, `Nombre_troquel`, `DCM`, `Img_troquel`) VALUES
(28, 'TROQUEL 27', '0.86', 0x89504e470d0a1a0a0000000d494844520000002f00000078080600000062acabe3000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000007c549444154785eed9cfd534f591cc7fd097ed8dfd6fe605a0f99152d91c27712a34d7a566154362914424bb3624d6ad383302ddb83a75494a9650a3d6cb421627a8e52792811a1943cd37befe7b3d5a45299713bb573de33676edd7bbee7bcceb99fcfe7deb9f7dccf080c63497851ea01ffe2c50bd4d5d5a1a2a202656565282d2dc58d1b3706a5507f54e8ef5bb76ea1b9b9b99daa77f5802f282840545414366edc085757572e6bd6ac1994b26ad52ab8bbbbc3d3d3135bb66c416e6e2e5ebd7ad54ed6539df01f3f7ec4fbf7ef71fcf871b8b9b9414f4f0f5a5a5a1833660c74747406a54c983001dadada98346912341a0da2a3a371f3e64dbc7dfb96f9ba8be109babebe1e858585080e0e868787076c6d6d616a6a0a333333d8d8d80c4ab1b4b484858505f7edecec0c7f7f7f1c397204d9d9d9b87bf72e037715c3bf7cf9924f51787838c31f3d7a14292929387bf62cce9d3b878c8c8c4129e9e9e9484b4be3bfb3b2b2101414c426b46ddb36e6e86e420cffe8d123ecddbb17262626ec30adadad7c50b408d8cbcb0b4b972e85afaf2f0feef5ebd77cecc3870fffc1dfbf7f1f81818130363666fb1a2acacfcf676ba0e0e1e3e3c326d4d2d2c2f64f5b86bf73e70e02020278e687922a2b2b919898c86cdbb76fe728f8fcf9739e7d9a7086afaeae66fbb2b2b2e21f0d15ddbe7d9b7d6fdfbe7dec8bb1b1b11cfba9907977c2878484c0dedebed790244a641164f71111113c80848404066f6c6c649362781a21c153881a6af014f10e1c38803d7bf6f03588e0c9748a8a8a24bc6a92f0a224e14549c28b92841725092f4a125e9424bc2849785192f0a224e1454955f8b6b68f78f7ee1d3fa8a5469b1a1bf1b2b5959f3ab7b5b5f1317a5941fba943aa4385ead06345aad39754856f6a6a444545392e9ccf42e28913888e8cc4df9999a8b9774f016ee2b71ba92929387af83012948e934e26f2f69f0b177047e9b3af17072455e14b4b8a11772c069bbd37c1d6ca0a1a4343fcb26913cea6a6a2203f5f013d81556eeeb058b0004e4b97c0c56919ec6dacf1bbff4e642b03686a6a6a6fa977a906ff41a97732e10456d35b941f75f1cdc8911831620434336762e78e1d38a89c858debbda03b510763478f86a1de5418e84dc1e851dfc2c5d909c9494978faf4697b6bbd4b15787a36fea4a101ab57aec4d449933161ec38cc98aeaf80cf82fed429d0ccd0c73ccd2ccc3732829989097eddbc19de5e5eb03137878ef678840406e26a6e6ebfef015481a747cc64b3aececb6132772e963b3a21785710f68787c3d6d21cfaba93613045178e0ef6080d0a42f6f9f37c267e765ca6d4374696e217f76b6bd9a1fb922af03463559595d8e1eb8bad3e3e888f8d454971318a0a0bb0dad50526c64670b0b6425870104a8a0af9593ad52178f7152e6878fc18ef44451b8a120feaea9072fa3432d2d2505e7e13f5f50f71f54a2e3be50a2747ecdb1d8acb39398a89bd47b1d2d1ae007f582f5c809dbf6d6b6fa57fa966f33480fa870ff1a8be1eb5b5350c1e161aaa44131b040504f08c537c2745ecdf8fc58b6c613ccb1087a22278df40a40a7c57117cc2f178ac5ded0ecb053fe1cffd7fb0497588ae05b616e698397d9a62322bf88c0d54aac0539d376fdee0767535fe4a4ec27a8f35983b7b268c0c67e0707414f2ae5ce163f44e29233d1de626f3616dbe107b9533d39f9d77956a0e7b4fb98a1e8c8a8487bb1b0ca7e941ebbb51d0fe5e0b1b3c3d11e8ef8f1025fa04f8f9619df2bfe9bcb95cef7472727b0b03932af07471b97efd3ad629333e7f8e11268e1f8f715a5af841d9ce373686959919cc4d4d3147a351e2be1eec94c8131c1880bcdccbed2d0c4c5f1d9e4e3bbd74be78f122bcd67ab2235a2e5ca8dc1e58c34ef93d392c1573e596c0505f1f5327ebb25925c4c7a1ea56457b2b03d35787a7e3f4635a0b400d9494947cb2aca5b4ac8cf75fba7409a74e9d42ecb1637c1f535d55c51d7f8954997972566a846eac5a945bde56e596986e8ba9903f34b7b4e0c99327ec1795ca9de583070fd0d2dcd2ef15b5bb54b1791a00d5eb2b7274d4a16b427f753f2755e0074b125e94fe97f014286855d6b084a78513b4904f9a8d5afa1c3c5d2f6a6a6a86177c7c7c7ce7322d329d61074f0fb148f4d06a58c1c7c5c575c293861d3c396b8724bc5a92f0a224e14549c28b92841725092f4a125e9424bc2849785192f0a224e14549c28b92841725092f4a125e9424bc2849785192f0a224e14549c28b92841725092f4a125e94be08decece6e48c1d37a654a0d469985089ed222f580a7b448a1a1a17070701852f0b48e2c3333931351117c4c4ccc271f8675c253422a6b6b6bde39544416919a9acae9c0c2c2c23a17c87588e1c9b628d596818101ef1c2aa2a5ed34eb94418ecc9a06d2f57b42867ff6ec193bc5a2458b78b165ed003ec0525bb4949db2676dd8b08153e05102b6eef9fb189ebe38cbcbcb636ff6f6f6e62d2522ec102d1f57bb7415cd6e5555159bcbd6ad5b79d629975f576725313cfd980640f6347bf66cce974795e90cd068cbcbcb552f94dc93beee21e8e2e262ee3f323212870e1de288437ed9dd1a18beab28e5a2a3a323fcfcfc78e494fc8c22d1eeddbb552f94258e0207f54991850670edda359e405a0cda5d3de009984cc7c5c5054b962cc1e2c58b793b1885a21de5aca48ca134e30d0d0d6c2a6415bd85f01ef034423a7df4350ea59ea342a916bbe796fcda85fa3873e60c47949c9c1c8e807d0bf817748b1113c9eaa6920000000049454e44ae426082),
(29, 'TROQUEL 28', '0.79', 0x89504e470d0a1a0a0000000d494844520000004a00000044080600000026daa301000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000095249444154785eed5c695054d915e64752952a5349ac4ad54cc55166a21997411050041423a8e38ca8c10588088a88e818e232184465555c11d112dc4ad95420405007917d712d7043dc35eefb02b822e0f6e57ed76eab313af3a6a6adb6edf75947bafb3efabdfb71ceb9e72ee79841074d4d4da8adadc5850b17505959899292121417174be16b6317ddbeecdebd1b070e1cc089132770f5ea553c7cf850c3c2dbd182a84b972e61c78e1d58b97225222323b170e1422c5ebc58caa2458b3e2a993b77aeec6374743412131325693f86d744bd7cf9127bf6ecc1d2a54b317efc78f8f8f820282808b366cd424848088283838d5e66ce9cf9ba2f13264c80979717dcdddd3165ca14a4a4a4a0b9b9192f5ebcd030d21292a867cf9e4993dbb2658b647bfaf4e988888840424202d6ad5b87b56bd762cd9a351f8568fb426b090d0d95ca40e2a85934c71b376e4862de8424eac18307a8aeae96ac6edab4491276f0e0419c3c7912a74f9fc6a953a73e3a3972e48834375a51565616a2a2a2307ffe7cecdbb74f12f326cc9e3f7f8e9a9a1a2c5fbe1c0b162c90bfd8d8d8a869360d5051a81cd3a64dc3860d1b70fcf871dcbd7b575a9a1666f4f6e5e5e592513aedfdfbf7e3e9d3a79a66d3007d132d8afe9903596e6eaed43a5d8531e3d0b86ddb363902d01ff1827739b48f15ec2f7dd3faf5eba5ef5ab56a95b4ac478f1e69ae104451cd323232a43691b06bd7ae699a4c0bf7efdf97fe392c2c4c3af6bcbc3cdcbb774fd32a883a74e890bc60d9b2653210bb73e78ea6c9b4f0f8f163a4a7a7cb7068ce9c39c8c9c9415d5d9da6551045ef9f969686d8d858141414e0e6cd9b9a26d3016348faeacd9b374b92c2c3c3a575d5d7d76bae508992789328c6902a516f814a9442a84429844a9442a84429844a9442a84429844a9442a84429844a9442a84429844a9442a84429844a9442a84429844a9442a84429844a9442a84429844a9442a84429c40741141f82e71bb84ddfd4d828371529babbd16c6f6868c07d4ddbd3a7cd9a96577821dab96bcbbd371e76e399007dee667f104435343c91df79e6f4291cdc5f858d29c9484d4ec12d9dfb5cbb7a151565a548dbb4119b5352e4b5cdcd4d9a56c8edeebcdc5c141516a2faf0615cb97c5912fa52fcd3070c4e14ffeab76edd425565253233d21017b304c3870cc6083737ec2aafc0b3e666a9296525c5981b16062ff71118357238b2333370fedc7fa5f6f05449594909be0b08c0f4a9d3b02a3e01c545453873e60c9ebf78aeb9d32f83c1896a161da5766465a463767010460c7145fb766dd1cdc202cb6262a416edde598115b1319220475b6bf475e8897911614817da55525c8c1fb66ec5c2e8f9b0b1b4847d0f3b8cf51983b8d857dbff8d4dfa399e6470a2eed5d7a1a4301f11b3fe85a10307a0574f3b7c3f752ae6cf8d84938303acbb5ac0d7cb139ec386e2db7ece18366410fcc78ec1e0815fa3bb95252cbb74864dd7aee8dab90bfed8ba357edfeab7e8d4a1037cbc4623293149fa2c7dc0e044d50ab3d99a9d85e981dfe1efc38761b2309f8af272949596c0cec616e66dfe04dfd19e70771b823e8ef67076ea8de14387c0bebb2dbef8ec33b4f9e413fcb96d5b7c21e477ad5ae137bffa35da9b7f0edf3163909999294d531f303851f542a3b68b1b468586225248b6e81ccf8ad65457c375e03770ecd103ff98e80f8fe16eb0ed66852e1d3ba2878d352c3a7542c7f6eda5b9f5eddd1b4e8e8e3097c47d0a47bb9e08090e46454585eca03e6070a2681a870e1cc47fb2b25024befbfaf5ebf20c7b4e763602270660929f2ffc7dc7e0db01fdf19520c9bc4d1ba131edd0e17373617adde039622482bf0f4270d00c0cec3f00039c5de037d6176b56afc6d1a3473577f9e53038518c7778331e4ee3b92b9a4a526222a60506223e7609d6ae8cc3df5c070933b48165e7cec2177582b5c557e8dca13dfaf6ea2549ca484b47eeb61f10151e8e88d03024ac8c976102cfc4eb0b06274a1734b9ecac4cf4b6b383abd0a093354770a8aa120eddbb0b13b3920e3a568c849b525331dad353688f33fe3979b21cf52e5dbc889b2296623c555b7b57764a5ffe89f820348a0fc00e660bf30bf01b87bf88f06050ff7e2815b1d0b69c1cf4b1b7472fe177fcc7f921213e1e5bc467a3dcdd852f12a180b737fe9d9e8ecb7ad49eb7c1e044f1467bf7ee953ec5c7cb0b96c2497fdafa0fb0b3b642d8ecd9081742d25c9c9ce0367830264f9c8859213361676b2b42832e82583f1416e4a3aeae56f38def070627eab2986aa4a6a40acdf04137110f7568d70e165f7e291cb5958895be81b7a70726f88e85c73037f4fb6b1ff476b087532f477414b192b3206f6174344e9e382135f37dc2a04471fa72f6ec5924272563fcb871f8ba5f3f11120c84cfa851f0123ec873e448111a042076f122cc99190c2f0f0fb848b21ce414275c3c707e5e1eea750e9cbe2f189428ae08f0bbce9d3b2753bd389c1f3b764cbee6916dbee799f60be7cfcbf7fb848916e4176047de0ebd6ab512185ca31847f101e4124943c32b119f51b4cb265c5e618a0527bfd7af5d37c8397783fb283e004509781dc9d5e73a9352189c2863814a9442a844298422a2987ec50b4854a198437145d2d440a238b89087d90c84c5bc72ab983ab520eaf0e1c3f202260d3183db9489a26591286658fd1f51baa667aa1a456889a2e9bd356988d30c7ec87c5a6ad6952b57344da685dbb76fcbb47ee6ea316db8acac4cc6775a9891352ed493c9b8b8389c1791b22982338579f3e6c97459e6ea7116f1e4c9134dab208af9b4cc23664d00da2713b14d0d9c2130f97ad2a44932d59fa431a9b145f235ffe37c6cc58a15324b9b76ca347ea68ef242ced9287c6deca2ed0b850b7f24e3e2c58b282d2d9521416060a07443ecfb9b9044f11719473043db53ccec5d5d5db171e346599f85f50f581fa0aaaacae88596c3bef067515191540e6f6f6fb8b8b8c0c3c3437eae9b47ac8bd7254708a6f5b366494040801c05752b50ac5ebddae885fdd056d2a02f62feb0bfbfbf3439269fbf8b24a20551dc0060b8909f9f2fcb8dd067e9d6343176d1d699617f66cc98219d77525292dcfae252cf8f4dc85b10a505bdfdf6eddb25ebacaec15a004b962c9112131363d4a2ad5cc4d72c63c0353125782b5104c3041649d8b9732776edda250bbcf03d85ebe0dad7c6207c5eed33b31fec0fdf93248e784af04ea254b48462a2186f7164e490ca3d3afe3416e1f352185c5383182afc5cfc245174f054554e6f58bb84d57018ea1b93f099b5cf9d9c9c2c83cb9f57d108f81fc22c95d72337f1aa0000000049454e44ae426082),
(30, 'TROQUEL 29', '0.60', 0x89504e470d0a1a0a0000000d49484452000000430000003908060000006d7396d4000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000780494441546843ed9b8953d34714c7fb2738b5ad65c65290b6088e4751f16a6b451429489004c21554068c1451a1604550b90c780c0544c5038452141441b082a2a342110544adc75489f7315e789fa8f0edbecd8ff883d2da29d89898efcc4e6676c38fdf7ef6ed7b9bb7bbefa113ddbc7913555555c8cbcbc3ba75eb90999989acac2cbd2af4ce6def9d9d9d8de2e2623c7dfa54e861e7ea14c6c1830711171707777777b8b8b8402e97c3dbdb5baf8a9797172ff4ee32990c4aa51267cf9e157ad8b9dac178fcf8318e1c39c289060707432291c0d9d9993fd0c7c747af4a1b147a77373737f8fafa223f3f1fc78e1dc3952b57f0fcf973a1d7afa485d1d2d282bd7bf7c2cfcf0f919191d8b973276edcb881bb77efe2debd7bb87fffbe5e167a772a641504c7d5d5158989891cca8b172f84de6ba485417f403e22242404ab57afc6b973e78416c3110db242a140747434cacaca70e9d225a145232d0c2247c4727272505757c7a91a9a76ecd881b4b434ee0fe973d7ae5d428b465a18e434fdfdfd39089a1a2f5fbe145a0c47d7af5f47454505a2a2a210181888949414a145232d8c2d5bb6c0caca0a172e5c106a0c5334e89e9e9e303737e78e552c2d8ccd9b37c3c2c202172f5e146a0c53b5b5b57cc960626202474747b4b6b60a2d1d2ca36fdfbe387ffebc5063986ab30c535353be6ca028da262d8ca2a222585b5b1b641411ebc081037c31d6a74f1f1e663bb58c7705464d4d0db70c7209b43215eb9d8641ab53b1de69181e1e1e42ad4646182219618864842192118648461822fdef306891a3cb1f816f0d0c5afa52de8492464f9e3c116a5fa9a5a515cdcdcfdf282c9dc3b873bb098da7fec02f39eb91181f87e879f390959989eaaa4a34d4d7e3b7aa2a6ccccb43e69ad558b53c0d6b56ae40cefa2cd4b11f5557af5efd4b46aa2bd2398cdf0f1fc6869c6c4c9ba280cb84f170b0b787322000aaf858242d4a4044581814ecf782afdc033eee525e3c656e4852a93828cacd7697740ea360431e4294d3e030fa6b388cf9168ee3c643ea2a815c3a09df8db3c7301b1b8c1a668b89131ce0e9e60a779789183d72386b9762436e2eeedcb9233ca9ebd2290c7298896cf41decc6402671c11c6605d191f31038752aec191c4b73337cd2ab179c1888d0992158ac4a40dc82f9f062d631dece0eabd2d3b98fe92ee90c0681a0f91e171303172727a81216f13c645161217e0cff01a36c87c2a4e7fb0cc64798e6ef8f94e4646cde54c0fcc57acc9c11cc61a4a7a6e2fab56bc213bb2e9dc120100f1f3ee40995aaca4adcbad584a6a69b58959accfd83adcd9718d4cf1af6df7c85a9de72f8797ac063922b1cc68e453f2b2b662d13909d956518d3846090f3a304f313beb5d70af5a9939815a4c4141f6fccf83e08519173598489e575ae8e133088bd83a989093efee0434c572a794affd1a3479a077683740683d615e2b0789759c5f6ad859032df111e1a8ae2e2221c39dc80c3870e61896a11bc6452f4b7b4446fe643acbfb0c4ca152bf9664f67bb5fff553a77a0d499476cba54946d43fc8228489c9db1307a3e0f9be41c9b9a9a909e96061fb91c36fdfb6360bf7e70934850b3bf864dad5bed52735d954e61d0ce7735f31719e96918c9c2e7f021431030d90f7237290baf93308f4596c24d85089e1e8491b6b6183d6a24224267a184bd8f3859db5dd2190c1a515a7e53785478cad1b3470f98f5ee0d47fbb118c8fe9785e9a798247145ea4f296c91e5812f9955d0fae367b6fa3cd3785a784af74aa73e83a640ecc2181e2108447fabbe183174303e373787a5c567f0927b62c5f2744cf59bcc43e91c1672eb6a0fb2df2eddb7ea144ba730b86530473823280853140a4c0f0c601d57402e9371008b5589282d29c5b2254b991f8946fec68dddbac8ea289d4e13f2198758b4d8515e8e7216267755ecc4afdb4ab1b5b818e5dbcb50cbd620ea4635eaebea7060ff7e9c51abbb357a74944e1de8db26230c918c304432c210c9084324230c918c304432c210c90843a47f05a3ed18d3bb02834eeebc1686a19fe9221874488560d04137b1dac1a0a38f972f5f166a0c53f5f5f5fc4c97999919a452a950ab513b9f3160c0007ebdc29075f2e4497e649a4efbd10137b1b43028856f676787d3a7df4c52e56d114d138241c1823ec5d2c2a024ccdab56bf9b58a9898181c3f7e5c68311ccd9e3d9b0fb8939313efe3eeddbb85168db43028f750595989c18307f323818585857ccad0be0765b8295143bbe3fa52a83f549a9b9b71fbf66d7e8380067ac48811fc224e696929dfd4164b0b83446979ba9341e6b36cd9327ee8fcc489133c434d192bdaccd197f2e0c103bedf42176de88a59414101b70cba5e919b9bcbfbdaf1e68416068d7e636323ffe2d2a54b91909080d4d4541e656847aca1a1817b627d29478f1ee51ddeb76f1f323232f8b4282929e1d39f2e0b9055d0e696585a18340d9e3d7bc6d374f4e53d7bf6f0cb7a0425222202616161080f0fd79b121a1aca2d61eedcb97c70c932c4471ba8bfe20d2e52bb69d2268242738ccc8b6efe252525213e3e1e2a954a6f4a6c6c2cb786e4e464be6ca0e94e3ee49fd4290c1259089912995a75753577ae04475f0a4d0fb26e3a38af56abb9cf7b9dfe160689489267a66cb5be96b648f87a017f020d48ffdce1f701ec0000000049454e44ae426082),
(31, 'TROQUEL 30', '0.97', 0x89504e470d0a1a0a0000000d4948445200000042000000550806000000fd8732cb000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000090749444154785eed9c7b544ee91ec7cf3a67cddfe72cc6222367211926332a52f2522add53a19aca8c1c74d1cda53add164a0dcb9021976ad1a494c230242ae24cae65a6b248294a4545eeb9e4f63dcfefe909c59cb5e6c43b7a3ddfb59e9577ef77bf9efdd9bfcbb3d7feeddf5fd0454f9f3ec5f5ebd771e6cc192c5dba14eeeeee303636c6a851a3a0a9a9090d0d8d1e359c9c9c101a1a8a8d1b3762fffefd282f2f1767da599d403c7cf81057ae5c41414101b66cd982c8c84804040460e6cc9998366d1a6c6d6d616565d5a3868f8f0fc2c3c3111b1b8b4d9b36e1e0c18378f4e89138e357ea04a2a6a606b9b9b958b3660d87b075eb564e312f2f8f6f3f70e0007272727ad4c8cecec6f6eddbb161c306ac5dbb16a9a9a9686868c0e3c78fc559b7ab1388152b56c0dbdb1b616161484f4fc7cd9b37c59e9ead7bf7eea1b6b616656565fcc2a6a5a5e1d0a143b878f1226edfbe8d67cf9eb58378f1e205ffe0efef8f59b36661ddba75387ffe3cdfae2aa2f37bf0e001ce9e3dcbcf2f2e2e8e5b4a4949095a5b5bdb41d097eedcb9c3e341505010f6ecd9c33faba26edcb8c103a7a7a727b77e7295e6e6e67610143caaabab7940494a4ae219a3adad8d1fa86aa2ac989999892953a6c0c0c080c7c2cb972fb783b87bf72e4e9c3881c4c4441c3e7c187575752ae5165d4541d4c6c60623468ce0e1a0a2a2a21d04ad1b88d28e1d3b505555c57d499545cb833973e6c0c2c2028b172fc6850b17da41908f64646460e7ce9db874e9125f4fa8b20804c508b28aa8a8a85720c822b2b2b2b845504aa128aaca22f79f3b772eacadad39085a6dbe0441100846656525eedfbfcf0f50551108720d02111d1dcd970a1f3d8865cb96e1dcb973128404214148102f254108491042128490042124410849104212849004212441084910421284900421244108491042128490042124410849104212849004212441084910421284900421f44183a03a2e1aaf8bca7c682e54f946c52bf4f95de84f0541a5485deb2e9eb213a7ed54fed778ed1a9a1a1b3b7da7917d3e75f22472f6e7a0e4b712343535e1d9f3e762efff2fa582a0ab4bbf4b556c34aaabaa505a52c2aeee2d7ef21d579b0ab94e1c3f8efdd9d9c8cbcd455969293f96eaba8e1516e287b838cc0f08445262128a4e17bd93b92915049972f6be7dd8969686d494add8101f8ff8b53fe0505e1eeaaed4a2f5fe3d7e8513131211b46811bcbdbc10ccfed2774a7efd95c13986848d1b31eb9b6fa11867085f9f79c8dc9e89fababa6ebb8852415c63a66e61668601fdfaa1dfa77df0999a1a86690c8199f144848704232b231d190cd27803037ca9a50585a1214c8c8d60347e1c66b83861cecc6f31d5ce0eba5f8d42bf3e7da0d03740687008f273f3d0dc7cfd8d78f247a4541057af5e85f18409e8dbab37faf4ea85016afdd95083d6304dd8984f86afe75c2cf0f78393a323fc7d7db13c3606a10c909d952526290c61cf26693e6912b43e1f8ebebd3f85e198d108f4f3c3ae9d3b5173b9e68d5aea3f22a58268696981ffbc79303536869eae2ebe1a391223860e858ed61718ab3d0a8ab17ab03435414c54148e141c4665450577252f364185813eec6d6c606e6282e19ac3d0fbefff80fe681df8f978238bb947d5c5aa6e55fe2915044d9402604c7434dc5c5c60a0a787f1a375616134010abdd118c92c63acae0e8b21a9b8c1fe7f5271713102fdfd61ac50c065fa7458999b4363d0607cf2d7bf416bf8e7f0f1f4e416515b53dbadca60a5074bca123fedfa096b56af46587030fce678e05f6e2e3063a6ff85a6260c99dffff29f5fc411c049962ae7b1abee606b87f0d030662dd12c6304c0ddd50d8b162e445a6a1a2e9497e3e183eed5812a1544536313567cb71c1161e158fdfd2a6c4b4dc592f07fc3c9de0e5f326bf867fffecc4ac6a2e070010b7ced6b034a97de5e9e98e6e0c08fd9fbf3cfc86759263f2f1fc7598abdc8e67647bc56d01d29150405345b4b2b984c3462b1c20fe9dbd2b172792caccd4c31b05f5fa8f5eecd3342524202e8d5814bd5d5c8ccc880ab8b335c9d5d90f2630aaf917e1773e92aa582b8525b0b239612870c1c0823c5446e192bbf8b81150b9043d43fc360f501d0660174b68707e256ad42f2e6cd88080d65c1d588074c8a2fefebc519e5ba4653239c1d1d306cd0200c6501cf72f2642cf49b076b0642a1df9e316c2ccc6130660c2cd97ae36b27279e29261a8e63a93416454545efad385ea9205a5b1fe0c72dc92c48066196fbd7b09d6c023d1d1d4c9d62cf2ce07b1c3f760c452c383ada5863f000750c5257678b2d632c898cc0d586fab7be80f6aea454106d6d4f505c548c9c7d7b919a9c84e5518b31932d9763a297e1e89123fc5ee211bbe26b56ae8487bb3b4fb1916161c8c9de277ee1fd49a9209eb3bbc496969b68a8af47556505ce9c3ec55f2ca31b27bac7e85059c96fc83d90c36302dd7c35d4d7893def4f4a05f186d81d27c179db9b412fd8f6dfdbf73ef4e782f8802441084910421284900421244108491042128490042124410849104212849004212441087580a0ae446fbc1b4e1008c6c7d02d80da2674740ba05e5b6f6da4412d563e86461a5e5e5ebc7fc492254b3a83f8982c825cc3c3c303a6a6a688888878d54883ea1776efdecd61d0462adc50655173b1a953a7425b5b1bf3e7cf7fd548834a73f2f3f39192928253a74ef1562baaacbd7bf7f24049cd76a8e51425080e820a2fa84c877a505177327abca6aaba75eb1692939311181888050b16f0de3a2ffb5091e8e97248480827141f1f8fd3a74fab5cd31d3a1f4a95ebd7afe7ddc92826969696f2e5c24b10246a6c47ddba9c9d9de1ebebcbe385aa88ac9efa6bd123056acf46ddd7285b9085d0be4e200a0b0b79171e333333e8ebebf3005a5f5fcf89750cca283d69d08324727b8a03478f1ee56eb179f3666ef1743e1d8f113a8120f7a0168754b041ddbba87dd9ecd9b379734c7b7b7b383a3ac2cdcd8d0f5757d70f76bc3e470a8ab45e983163066fbe458dfa2826747da4d809c4eba21a046a6e478d313b9a7a527f37721b02337dfaf40f76d0fc689ef46f4b4b4b383838f00514f5b3a456746fd3ef82209165ecdab58b9b1241a141fdec682424247cb0a3ebfc6859406e4e153954edf736fd4f104f9e3ce17e44750a644ee46bf4433d6150551ffda53512c50aca18e4fa1413de14f05fc81d7bd3abc3260c0000000049454e44ae426082),
(32, 'TROQUEL 31', '0.72', 0x89504e470d0a1a0a0000000d494844520000003a0000005108060000008388b5b1000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000075249444154785eed9c894f545714c6fd434cb5b62eb50a15b7d68a71012b589b4a08e25293025544d44a08286071650741166d7560943a2cb2348a8028285096d0b8cb568d0b100b8a8228e0fef57d270c6a465b03e9f48dbe2fb94ce00df3eeef9d73cf7d79f77e3304ef8934d0774d6f04ede8e8c0d9b367919d9d8dc8c848c4c5c5a9a6454747cb6b727232f2f3f3515757d7d7eb37cb04b4bbbb1bb76edd42656525323232101e1e8e55ab5661ddba75aa695e5e5ef21a141484f8f878e4e6e6a2a5a505f7eeddeba3309509e8b973e7909a9a8ab0b03044454509e88e1d3b54d742424210111121d1655f13121250525282fbf7eff791bcaa7ed0e7cf9f4b240d06033c3d3db172e54a495946b5a2a202274f9e544d2b2b2bc3a953a770ecd831e96f707030162d5a24c0e7cf9fc7d3a74f85e7650928afc2e5cb97e58af02a1172ebd6adc8caca920833257811d4d2eedebd8bdbb76fe3c68d1ba8a9a9815eaf879b9b1bbcbdbd25b2e5e5e5b879f3a6001a25a067ce9c915458b16205424343515d5d6d7245d42e4233480e0e0e58bc78310e1d3a84274f9ef4730828d3c1dfdf1fcb972f474c4c0cae5ebd2a072d493d3d3d92c61e1e1e707777474a4a8a64e2b367cfe4f81012e7e5e50928abebdebd7ba582599a08ca8031509b376f160ea62fa34a0d79fcf8b1cc952cd5844d4b4b435b5b9b1cb42411944390518d8d8dc59e3d7b24331f3d7a24c787b010a5a7a7cb18e554c2e872c05b9a7a7b7b71f1e24529a09c5bd97823f1f0e143396e027af4e8518b05bd74e9d22ba0b5b5b52f401f3c78207325276156dc23478e587444596d77edda651a510dd4c2a4816aa01aa8baa5816aa01aa8baa5816aa01aa8baa5816aa01aa8baa581fed7a09d1d1df8b3b1017fd4d4a0b1a101b7dadae491249fb3f2b5aeb6568e9d397d1a77eedc19f4ca80d940d95142b43435e1f7b25224ecdc89efbf5b86d9b6b658be74096263a251525c2c2727dc0a0f0fcc983e1d3395e3e96906f0f9f2606436503efaefbad785dcec6c6cde140417a785b0fd7c2aacc78ec5179327c3c3cd0dbb939270acb0509a8bb333c68c1a8511c3862132221cbd4a940723b381329aad7fb5222c2414ce0b17628a8d0d265a8dc7246b6b7c3a7a0c1ce7392028201069070f223f2f4fc02758590be896e060f47477f77dd2c06436503efa6fbad124a0cb962c91949c32d10613c68fc727233f86fdecd9f0f5f141ba210d55959508dcb811b6d3a661ccc89188080b95713b189915948b5359998794f11803ef555ef8cace4e89e6688c1f3d0adf38ccc34f8101282c28404b7333e262633177ce1c7c366e1c74bffc8c477d1d1aa8cc064a719cb228b5df6947417e01d6ae5e2d63f4c3a143155007442991bb70eeacbc579f9282af95bf31c5b332d22da718718c72270b17647902462e322c0c4b17b9c0c6ca0a8ef6f608f4f743c9f122dcefea44b24e87f9cab8b538d0cece4ed9c9b2333a1af171bb90aadfaf006440afdb87a5aeae709c6b8f650a74527c1c1aebebb05fafc702c7f9983a7112b23333fad731072ab381b6b6b622cd60c02cdb199867670f7f5f5f642b27ad282f43809f2fe6dbdb2973ea97f05dff23ca4b4bf1eb815401b5512aaf21f580e544b4bdbd1dbfe5e64ac7477c300c76336729c52750896c0ad67afe00bb19d39579750ad6af5bab8096e1c0fe0352ac3e1a3e1c71cacd043b3a18990d94e2871a9479d2dbcb4b89acad328f5a61aacd047ceb380f9eee6e88080dc189a2e3f2f9991999707571819552757941d88fc1c8aca05463632372737294bba34d58b6d8150b17cc47905284f44af161ca362bb7883c7951511102030264fc26252458ce3c6a14e7538ed78af272e8937588898c903ba17ae5a4bcd1e766278a1b9f329522b43b3111c5c74ff4ef3518a8cc0e6a14a1eaeb6a515d5529774cbd3daf8e416e08a9abaf971bfcebd7aef75f8081ea7f0335b734500d540355b734500d540355b734500d540355b734500d540355b734d0f712f45df1bd18ed20af0535fa5e184dfa450b0a0ac4c967693282d29545483613df0b41b76fdf2e5165ea5a2a2853d71851da2bebebeb5f80f20dcceb0d1b36c0c7c747bc5d96084a203e2b66d0e84d4b4a4a124f6cbf378d3f4a4b4be1ebeb0b17171731c8f21f2c4d0c0ed3362020007e7e7e629ee56e977e5b257f30e4b423d2f24cd721fd69c637588a98a634ca3a3b3b8b3b989165b6be6294a5cf92367f5afee993d6e974b872e50abababa64f187e1676aa8a519fbc3f51a16531a62b996c3e1e7e4e484356bd6c8ef2fef5d1250c2309f6910a7639f0399b0b4fdd3f7cd327de1c205d53456530e2f2e3c1716164a3fe917ddb66d9b9864e906669f5f9680324df9fd0b5c1caaaaaa92fca6319cc589736b4e4e8ea4825a1ac7220dbd898989d8b2658bd4174e8d3c46f86bd7ae997c4d8180be2ca6447373b35c2546951fc608f3552d8dfd616365ddb76f9f40b3ced0cdff26998052cc6dde1d7180d3ea4f68ceaf6a69eccfe1c387515c5c2c76e7a6a6a67f5d8d7b2da8511cec2c541c130d0d0daa69c6fe70070c77c2bccd0cf18fa0947137264bb55a9ab13facbe6f370d027f03034f9135b7cd751c0000000049454e44ae426082),
(33, 'TROQUEL 32', '0.57', 0x89504e470d0a1a0a0000000d494844520000002f000000510806000000420fff1d000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000008f6494441546843ed9b7950d44716c7a9da3f366bed6e8e8ab5398c51d70b8dae070a4308721b1050c40b05220821c8a9a044b90f4541e4104f50840041b9540404610b0d2aab82a0a5e20d28445404c5138feff67b321e68a25b356486adf956b58c33f5fbf5a75fbff77e33ddaf55f03b6a6d6dc5c58b1771ead4299c3973a6db5a6d6d2dffbd70e102ae5cb982b6b6363c79f2a493e2b7c5f04f9f3ec5e3c78ff98dfbf7efe3e4c993d8b3670fb2b2b2b07dfb766ef43a3333b35b1bf5919b9b8bfcfc7c949696a2a9a9e97707c1f0047ef7ee5d3c7cf810972e5d426c6c2c66cf9ecdcddbdb1ba1a1a1080e0eeed6161818085f5f5f2c5ebc181e1e1e70777747515111cfc26fe9397c7b7b3b5a5a5ad8caf6f6f6904824303030809b9b1bc30705057107ddd5fcfdfd19dcd5d515363636b0b0b0c0dab56b515353c36c1d1d1d0c2c15cdc8739fbf77ef1ece9d3b07272727865fb87021df74cb962d3c95dde93652f74c4b4bc3e6cd9b111313c3b3b162c50aa4a7a7a3a2a20257af5eed247d666c9a1186a7c02c2b2b43585818162c58c0af154164389af9a54b97b20b9181c9e214d4c4c8f09451a2a2a260696989f2f272343737f3c5f216cd08c5dca2458bb06ddb360e608a4b4a28f47f86afaeae665fd3d0d0e08b14459471222222101010c0ee449c77eedc416565251213139fc11f3e7c987d5d5d5d9d2f52145555552139399907101f1f8fbd7bf7e2d6ad5b0c9f9090f0029ed2939e9e1e5fa4283a7bf62cf2f2f238eb444747233b3b1b376fdee40c949494f40cfec891231ca84646467c91a2889eb8f4b0dcb0610356af5ecd7e4ef0c78f1fe7197905ded0d0902f521451ea2e2828c0faf5ebd9f2945695f07f8494f0f292125e5e52c2cb4b4a787949092f2f29e1e52525bcbca484979794f0f292129ef4e8d123b4b5b6a1a1be0e276aaab1efdf2558171b8df494ad385659c94be4a4e6abbfa2e1e2791c282bc5c6f838840606a27cff7efcdad4886bcdcdd89a9404ab99b3e0606f8fd898185e4092ee0d7495cce0db5a5b71acea1872b232b1217e0dc24382e060331b3e0b3c90bc65330e1e38802af1f9ee5dbb90f9731aa29687e1bb5933f0adbe1e5645acc4ce1db9d89d97877973edf0d1fb1fa07fdfbeb0b5b6c1ce9d3b9f0fbcab64065f575787d49414b8bbb8c072b239269b18c3c26422037ab9bb22d0cf0f81fe01709d3f1f8e76769839650a74bf96407dcc28cc9c360dce4e4e7071768664dc78fc4945051ffdfd7d989b4c42f2d6adaf2c5fbf2c99c19f3a7912e1cb96415f470783070cc088a143616a6480a9934c6036d110ba5a5a183f560d43070fc1907f0e82daa85198646488599653a1a9ae8e11c386731bd47f0083f7fdec33188bfe568687e3d0a1436fdcbe91197cbdb07c4a720a5b70a2a111b4249a18397c38860bd8a103076260bf7e0cf4b75ebd845b7c082303436c58b71ebfecdb8729a6a6e8dfa70f06f5eb8f11aaaaf8fc934fd1afcf17183e642874bed18687bb3b5a6edce8ece98564067fabad0dd5c7aa91b96d3b428343603bc71a5f0a808f3ff8109ff4ee2d408640575b1b33848bd888cf8244a0666765a3784f112c04bce63835e16a26982c5e0f14d6571d3418e3c68cc52463132cf9f147dc6c69e9ece98564064f19e1f6ed76de70cbdb9587005f3f11745fe2afeffd05bdfefc9eb0e83038ce9b8782fcdd282e2ee69d8c9f448c048b41188841cdb49822e2c2177e4b97f2ace94dd0c1ec595608f0f3479680baf786a095193c6d71de10535b27e0f795952161e34661453386fec7c7bd31f65fa3e02bc0eeb4b7a3adad155595471119be1c53cd4c6129daf290601416e463c78e1df07473c3222f6fc4c5c6a1646f091a1a1a783bb5ab64067ff9f26594969608b7d9868cf474e4e6e4203121111eae6e6c492d0d09c3dfbe7d1b0d75627672b3e1ed361fe613f5111ae08fd2bdc56812b99e668ed269614121f74b5b35dd9ee72b444658e8e1016d8904c60606f0f5f141b6b859d4ca08cc1419455ba2813933a623724538beb79f8b091aea50fb4a157a9aea0811ae93f17386b84705cfe0bb4a66f027c405cb424260626800adf1e344f07d2bf2f95ccc1201aa3fe11b912a35613d631a3c5de6738a541519a8ff179f63d8a08130d4d317f1e080e8a8d5686a6ceabce3db2533f82bc26db284cb787b7a88ec3109fada5a90a88d618b1be9e9c26afa3478bbbb89cfdd315d04e7d71a1a1837762cd4468fe1eca2a9ae01e7ef9d507bbab6f38e6f97cce0c9978fd7d4087f4f4390bf1fecbfb3150f1903cc983a15ae3ffc80e56161d8bc6913d6ad59c34f5b77110baef35de0202cae315e1d7a3aba707371e522897795cce0a5bbceb5a74fa3a8b090b34d704000a22223f193b8517151310effe730ca7f2917e9321f39d9d9dcd25253e1bdd00b8bbcbd112f064681ffae9219fccba23a00da0f6d1537a2adc56745171d3cc08e8e47bcd12b6d14a02d375a38cdd2e0e9dbe9bbaa5be0ff2829e1e52525bcbca484979794f0f292125e5e52c2cb4bff97f054e5f75a8d594f80a79261aafa7b5eddd7d32c7fe2c4899ee736546f4c3f7eeaebebb94c9de18f1e3dda23e0a9285aba7472eddab59e054f55de0f1e3ce0cfe827a60a2db35145aba7a7678f8227a9d08fe683070ff249012af65724bd09fee51537155a09d8bf7f3f5771ebebeb77bead183a7ffe3c0a0b0bb91c97e0535353b9865e2a15da91a09d0945b43c2dca52e5f6a64d9bb89698d2e3cbfb57cf03967c5e575797df5414498bfce960425c5c1c2f8fbfe2f3f40f9574d30901452b41a7a315746e64c992256c7d4a2c2f2f5a313cf9d6aa55ab606b6bcbf993d290bc4590e4eb7676767c3081727c6363e32b9b100c4fb0044dd344be4f51fdbfac29ca5ad7af5fe76d21131313766572699a85aebb270c2f15a5cd3973e6c0cfcf0f1919197c038a764a57ddd9a47d904fe7e4e4b0f1e8b891b3b333bcbcbcf8bc081df1ebaa57e049e45f647d171717383838f0812b3aa9666d6ddd6d4dda879999198c8d8d616565c51cb43b4e16278fa0e3505df51a3c8d3c3c3c1c8e8e8e303737e7f4a9a3a3c3c1dc5d8d9e2fd4c7e8d1a33172e448989a9af22117fa1246a9fc4d9b6da4d7e0e9a9565252c25ff6232323111212c227d5ba9ee5936593f6e1e3e3c347ec28a713c3dbf41a7c4f520f8607fe0b1b71b7f8db4d8dec0000000049454e44ae426082),
(34, 'TROQUEL 33', '0.41', 0x89504e470d0a1a0a0000000d494844520000002500000048080600000071f43c87000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000777494441546843ed9a595054571086794b1ef218531aad542a159768d400b228323003288b6ce2322a4641cb08a8f090201a4090c8a2229b08821b6a4043b98b0804014165515c5021ee8a0aae80ca26e89fee23338e0ac90803954acd5fd54cd55ceeb9dfedd37deeed33ad83ffa03a857afdfa35dadbdbd1d2d2d26bd6d6d6d671b50ff501547d7d3d2e5dba84cccc4cac5dbb16ab57af46545494462c323212ebd6ad436c6c2cd2d3d3d1dadada71d577f50e547373334e9f3e8d3d7bf660fdfaf5f0f7f7c7f2e5cb111818a811e3f1020202101c1c2c6e986fbca2a2a2e3ea6fa5846297deb97307dbb66d13de090b0b43525212929393b171e3468d9962ccf0f070b8bbbb0bb8f725a05ebd7a85fbf7efa3a0a000a1a1a14aa0929212949595e1d4a9531ab3e2e26261dbb76f87b9b939dcdcdcf0ecd933e1148e6501c501cd71c4d3b679f366e1a5ddbb77a3b0b0100f1f3ec4e3c78f515b5bab117bf0e08118933ff966bdbcbce0e1e181bcbc3c5cbb764d249780ba7bf72ef2f3f391909020e6baa8a84850f785eaeaeab063c70ec8e572e1b9c6c646f1bd0e671a7b66cd9a35223b2a2b2bc574f685f8e619c6caca4a38e5f9f3e7e27b9d3367ce60d3a64d2296381039d85fbe7c290ef6b6d8335bb66c81999919e2e2e24418b1041467c3aa55abc4e7bd7bf7fa148ae3d8d4d454ac5d3c9d2c9df3e7cf63ebd6adca8c634f75b5a8695a2f5ebc10509c85bc2e3e7dfa547caf73e1c205a4a4a4887583a7eff6eddb7d06c531c45052a914f1f1f15aa82ea58552575a2875a58552575a2875a58552575a2875f5ff86e23248510a75a67f3baeaa1e41f1eb7103bd3fdfbc711de5548a9550fd564d6fa8fce648081dffd38a4b172fa2946aba33543e5dbd72459453ffb467f051508a77f49696562a526b9071e81012e2d7e3676f6fcc707181a3ad0d82a9fcdebf6f1f2ed0eb74058d71e8e041b8ff381bce93ec3079923d16513d9748150ad78d5d79eea3a01477d7d0d080f2f2722c5bba1433a64dc744990c321313488c8de0e2e888e0154148ddf93b52a8d4f7f3f585743c1d33328291ae1e641209962c5a84bbd5d55d966cdd827af4e8118e1d3b0617e7c930d0d387dec85104642ca00ce8c2ae33672188c096fb2d839383230c757531ded01023877d87e14386c2c9de0195972f7759dc761f2af718a64e7681b18121c6fca00b53821a3b461f43bf1d0c3b1b5b782f5e421e590c7bdb4904a507637d7d0cfefa1b7c357020cc4d253875f224eaa974eacc5bdd8aa9fafa069c2d3f8b407f7fcca578b1b3b68684a66ff48811183678081c28767c7ff14548f04af82cf186859939f4468dc6a0fe033068c097301b6f8a9cec6cd4d4d428f70954f551508aece3006d7bd9869b376fe2686626c1fd0a4b991403bee887e1438761be9bbb38b7acb494ac0c0be6cdc7f734759f7df229fa7fde0f3282cccecac27d2a707b0cf536fb5ac4147276fd99934319188fc55e9eb0949a439fa6d2553e0331d1d1c21b278a8a104105edcce9d329de74317af870585091b92b2d157f5555d18d7e1857dd8aa9dada1a14e4e72371c3066ca593d377efc21f6451919162aaac6830f7397310141880f8b8381cd8bf0fdb2913fdfdfc30cdd919966612848604a3202f8f009e893155f551500a575fbb7a159b9292219f32053e94de295b36e34461217273b2e1606343d938124614d896e411f9d4a938927118c514d8693b77c2dbe32758988ec312cf85b49eed455ddd9b0baaaa7b9ea2003d72e8309c6841341f3716765616983b6b2616babb6192a5140ed65698e2e408bb89d6183fd688bce38405ee73317bfa34d8d3ffdad1ffc44547a1b4a458b9f7a4aa6ec5d40b3aa9ea72257e0b0e123013a46630353284f95863cc914f45809f2fa223d7223c34148bc92352937174dc80165003d84fb084d78279c8cbcd158f24c598aaea16147b8cf78cf22926921313e04d41ee6c670b5b2b4b84ad0cc2019a96b2d212f24429f6efdd83d972396c2c2de068630d6f4f0f710e675e233d237bbc4ebdff4066b0cbf4b04ddfb50b612121229033333270831ed04d4d4d04df8e07b5b5d8101b8b8065cb101218889d34262f15fff4c6d02328565353a378f2175236661f3d8a5bb476bdfff8e0b7035e1e78ca2e565ca487f1938e239dabc750bd212d94bad242a92b2d94bad242a92b2d94bad242a92b2d94bad242a92b2d94baea12eadcb973effc865c5d5ddd6939d41b52fc862c9148c4afed4a28de1453fdb5bdab1d92de1057420c656262829898183c79f2a6d0d0e1ae1cc5f471c3c2ad5bb7facc538abe04994cf6eef4710c65500d171d1d8d888808d1f3c26eed0b713dc90e717171119fca6609fec3bbb8595959620ab9f98a1b6238b6b89f8a6b3b76b3268cc763630f711712b745712ca7a6a682fb23f85a5cbc0a28ce36ce427625375e2526260a48f622c3f1a699268cc763bb7efd3a72a96075757585a7a727aaaaaac43e18c7326f15289bbab87de8f8f1e3c25b6c3cc7393939e2e46caa7a35613c1edb51aab0f9c66d6d6de1e3e32340147b0deca00f3acdd2d2d24426707cbddf53d753e3b865e3be164e2c6e85e35625553187128ae792bfe06ce4c0e7354bd147171414d4635bb16285d2b80389339d9723eedf5255737333fe0651bca151cc806ca60000000049454e44ae426082),
(35, 'TROQUEL 34', '0.45', 0x89504e470d0a1a0a0000000d49484452000000250000005008060000009e71bc71000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000087a494441546843ed5a095355471a7d357f61267124ea0815b2e0123082161a1734404010435014444891c8a6a2b821a828288ac86a290ac8a6281014c105b560aa944445401084190db8e00e2aee1b7aa64f874b8024784521a6e69daa2e2ef7ddee3efd6def7ddffd34f803dcbe7d1b757575a8acacc4a953a770faf46979ddd5c1f967ce9cc1b973e770fdfa753c7efcb865a7dfa21da9070f1ee0c2850b282929416e6e2eb2b2b2b063c70ea4a7a763e7ce9d6f34b84e4646865c33272707070f1e947b3d79f2a465f75fd14aeae5cb97387bf62cb2b3b3111212026f6f6f2c5cb8102b57aec4ead5abe5bde0e0e02e0dcee558b16205020303316fde3c787a7a2233331357af5e6d61f02b24a97bf7ee49551d38700061616170777787a3a323e6cc992317e5bdd0d050ac5ab5aa4b8387e220a9c58b17c3cdcd0de6e6e672edb2b2323c7bf60c2f5ebc90840849eac891235245b1b1b192004f15111181a4a42429ea7dfbf64975eed9b3e78d06b5c07d222323e1e5e525a5b67fff7e5cba7409f7efdf9784a8314d7373b314e5a44993b06cd9321c3f7e5cda5677e3e6cd9b888e8e96daa089503004f968e805aeaeaeb0b7b79727a0f1f504a8ae989818d8dada62f2e4c9d21978eff9f3e7d0dcbd7b57da1089252727cb50d053d8b2650b2c2d2d61616181b8b838a9217aa3a6a1a141ea97de4697a5d1f714281d272727a9a58d1b37e2c68d1b9298e6dab56b983b772efcfcfca421363535b54ce97eecddbb17f3e7cf97361d1f1f8ff3e7cf839ad3304e90d082050bb06bd72edcb973a7654af7233f3f5f7aa0afaf2f121313515b5bfb0b294a8ac18c8c29a99e24c570e0efef8fd9b3674b528c955a52bf072d29b5d092520b2d29b5d092520b2d29b5d092520b2d29b5d092528bff4f52cc6c5f8894fb75f046a494ccb5333c7af448e66c0f1e3e6c57ac606d80050cd60a1e8acfdaaea39a54dbbcafb9f939cefea706a929499833cb07ee6eae5815bc12d9593fa0aab20a4d779a5a095caebf8413c77e44766606d244a6bdeb876c648864333a2212018b1621223c1c39bb77a352cc538a19acf22c59b244d6133a25c59bc4dda6bb385d518ed4a424f8787a60f408537ca4a78bb1a3be808f871752935324b1272d15b913c77e427cdc26f82f1039a4486e83962ec522b1e614fb6ff0c5f0e19836c511616bd6e0f0a1c3b2b84130ef7b252926a34ada5e515e81d89818b8b9b8c0dad20266824c5f1d1df4eddd1b26433ec72c2f6fe4eed923a4f58bba5304f999eedfc2463cebea340ddf09a94e11e9b8a9b109f4faf613871a013fb1795666a62cfd10ace6050404a827555850083f7162f371e3616d6101a7299331c860007abff73ef4fbeb621a2b25e9e9b87deb169e3e7d8af9e2d9d1234d316c8811a63ad8c3ded60663478ec4808f3f419f7ff686e1c08192e8f6b454d4bf2e29c5d02f5fbe8ce2e262ec101baf58be5c887f323ed4d5c3e78307c35910daba7913ea7e3e87c78f1e62fdba30180d348089e1607c6536065fdb4c80a98989785e177d8474757af592d7aed3a7233727a7b5ce499ba2a1bf9254c752505d6d1d366fda8489132640e7fd5e303634c4b7ce4e488cdb888ad212fcb7e60c9ca74d152afa00a64387c07e8215be739d216dc8c6da1a165f7e89f16666982a0eb22e2c0c278b4fb6acac92140dbd23a90661945bc584893636e8274efd9981012cc799c1d7db1371b13148d99a80f163c64a5b3336fc0c3616e6080af04774642436c4c6227cdd3aac0a0941a6f0444a9ee56a05aa42425bf5d1b61a1b1b71aaac1489090998e5e303b3d1a3613a6c188c8d0c314678e337136de122a4643870907482419f7e8a91c38761dd9ad5c2260b50535d2d0bad3f161549db638065dc52f04a522c05ed167144215572f2a488475948d8bc1909f15b909c9c84a58181707674941b0ff8481f1febe9c1405f1f1f089be9d35b07fac26e3ed1ff508603cea703dc170195847e0faa4929de97bc350956e6e630109b4f129e141eb616212b82849b7f0da3410345ccd2935273719a8e79bebed2e57bfdfd1fd0683470719e8e7f1716ca753a832a52549f126df372f330c5c101bafdfac9d3db7c6529d5656a3c5448a43f861a0d91b12a67778e30de6211eddda0f7affef89b20e5f1fdf738da52eded0caabf6614520c9e6b4504b6b3b5c5081191c78d1a05073b5b4c125e686b6d052f0f4f646664b4aa3b262a0ab6e233231132d68686caf739af826a52bc49343634e2d8b163484b4d4548703002162f121e158144615fdbc4bdfc03f9a8fdb9563e4b140a754589efb9650181c8179b2951bb33a826a59c9c5fb434547a605555158a8e1e454d4d8d74694e64fdbdedaf818b172f0a4f2dc37171904be25a917867786d521dd1d695df16de985477404b4a2db4a4d4424b4a2db4a4d4424b4a2db4a4d4424b4a2dfe5aa4f8b6fd5d21c5160066531afe8c7d9724c59fd91a5ebc2ba4d885267b5dd8a0a0344bfcd9a4989810921409b1abac6d2da12740526d2b79d5d5d5f2be86227b57d4d74a8a4d5c0e223d9f316306d2d2d27ab455292f2f4f36ffcc9c395336e0b02790d0b054636d6d0d3b3b3bd9cf74eb0f2a24dd019a0ba5e4e1e181949494d6ac5a535f5f2f09595959c976b4b645adee06db2c694f9416092a02d1b0fe489ba2fad6af5f8ff2f27259a4976f10445aceccf86d0dae47976791ffca952bb2918b861e1e1e8ea2a2a2d65aa8ec5e6454a76d51af6c7364e722ff2741a513967f2b2a2aba349435d8d45a5050208d9a6188ed956c46a5b3f18d8582d6e653be693874e89064cd7e4cf6e76ddbb64d8eeddbb7b75e7775708dd4d4547970f68cd296366cd880d2d2d2768488565204bf7b58dbe649d8341a141484e5cb97bfb5c1fe511e9a5d8b6c0ca43658d5e98876a4a86ffe6a3871e204a2a2a2dab5e7f26fc74e57b5837315423c307bf12821da166dad23da9122688cec2264118c756e76c32a83c1ae2b43997ff8f061291dc6a3ce82f46f48fdf900fe0703a15bfbc04ef0ab0000000049454e44ae426082),
(36, 'TROQUEL 35', '0.30', 0x89504e470d0a1a0a0000000d494844520000001b0000004608060000003dc4ef7c000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000006f3494441545847ed596b508e6918fe7eefcece186b583b8cd594992c51a948e7d3d7810e126a900e2ada56223a692b2ba5b69324ca8a68770dab32c54a6af0c320e76a543aa9508a51918a6beffba9acc8ce67e61d7f7cf7ccdd8fb7e77daee7be9feb79beeb7e6f19c85ebd7a851b376e20262606010101c203030315f68d1b3762d3a64de23d373737383b3b233c3c9ca71e65b2a74f9fa2b2b212c78e1d839f9f1f56ad5a25dcdddd5d61f7f0f08097979700323636869696169c9c9c50575787aeae2e0c0c0c0c819d3e7d1a595959484c4c4452521252535385a7a5a529ece9e9e9c8c8c8407272b28888a35dbf7e3d525252505c5c8cf6f6f62130474747989a9a222a2a0a838383e2a11476fbf66d181919c1dfdf1f972e5d426f6f2f64565656303434444242c2f030698c53b872e54a6cddba1525252578fcf8f11098999919f6ecd9333c4c1abb7fff3e424343111b1b2b52d9d8d83804666e6e2e722ea53158646424e2e3e351545484868606c8acadad0598d491711a992c717171ff4566636323c09851525a6d6dad48e3ce9d3bc18c6f6a6a52827dba29c12431259824a60493c4946092d8170ef6e6cd1bf47477a3adb515b76fdd125e535383478f1ea1b7a7072f4892757474a0b9b909753461757515eedebd8b4a7206608dd8f7b24fc882b0b0b0b1c176efde2dc07a7bba51499aef0429e41092615b3607e337927945a74ea1e6de3dd49390293b7f1eb9870e218544edafd1d1d8465a233222026929a9282b3d2f16564f028735c898602c7838aaaacabbc83df83b02495ceaebe9417bae266c488145d28bc5a492ca09282d25193e5e9eb0b59663a19e2e74b5b5a1aba50d6747276466ec456d4d2d1a69f26ddbb67d0866696989bd7bf78a0223efc811acf7f1810569f685f3e763f6cc99d0205fe1e282748a3eeff061046f0c84959909d467a861eae4c95099360d3f4c994ae317202e76a748294fce52ee0330b95c8efdfbf7e3c58b1788898a86ad951cf37574b0d2d515720b73686a68c08e24dff698ed4827fdbe768d3bf475e6414d4505aad3a7c3505f1f060b1688c832284335f76a84741b333216aafbf6ed13d5c61f7979041885b59e5e30363084eaf084cb5d96e1c0810388a7959b191963e2f86f3169fc048a5a1d21411b9096948893274ee01e01f5f4f4a2bebe7eec3db3b0b078ab886b8979a5e7ce89cd9fad3e13df7cf535be9ff41ddc56b8e2c8e15c24ee4aa03d94435d6d0634676bc08cea84a09fd621233519e5a5a5e868ef10050a2be28fb27184fa0303fde21f05274f8acd9f306e1c264f9c0487c58b914a251133d373cd1ab82e5b0e5fefb5f0a6daccc5d11e5b0237e0efbffe440bbddb4f7bcf9185fd5f644c90070f1ee00e51ff4c71117c3d3d60402499a5ae0e7313130450cd15111a86cd414114e12e11696a720a8dd1831d916cc72f91b87ce9229e76750a6d1f4ec7611498adad2d16d1aa0f13cb4ace9ea5494d614fcfc2b66c21c062e41cc846809f2f2c4c8ca0a3395790c5d9c1011994898a8a0a5cb97c190e367268cffa114e7636c8a4e77c1ec724c808d8213aa4bc577c66d4555521a7d46672359998003f8a506e6a0c3d6d4da2f814b1574c20665e3611cbdad404ba7334b094d2999599296e968fb2912b192e75efd315b3998a714ecb4c35352c5be20c3797a562e5f6724b2cb15f0c2d8d39509bae82799a5a7058b498e8ee089db97361b2509fd2bc0e85f9f9686b6b136011efa77184207c83308b2e949763ebe64d303130802e4dc893707a7ef6f3416c4c34d6f9f8d2d9b3c43cba59b4c83509dc92def75deb8d2c8a92efd26eba5bc59e8d4510ae3c47eec6aece4efc73e6b4b8f398715eeeee880a0fc3919c8374ef9d433eb19449b1c13f401c0717e7a588a1b179478fa2e2da353ca14b9acfab42d47fd76a6bebc44b9d4f3a313830bab8efe9ee41634323ed4f1dfa88c5efdb27ff9ebd7cf952f8ebd7af879f8c363e2afcffb1ec0bffa596ca94609298124c12538249624a3049ec0b036329c722f5b37c23b6b3b31385c567f9fa3df25d5f6a304e6370703076ecd821d2d8dcdc0c990ed561daa482a54e637575b5680471c7e21c296daec365dc21e2ca33888a853b77ee0825c5dedfdf2fd49322ce63592bf6f5f5e1d9b3674211171616c2dede5eb4c9aaaaaac40264f92497434242e042652c33875b5cfc0217e1fc9222ce6379e5adadadb8458a987b2f5c5c3241b855f6f0e1c32130eefe14141460f5ead570a5b2f6ca952bb87af52a2e5cb8807292e28a388fbd78f122cacacac45cb9b9b9a26c666270548c21c0f80fd394f7ccdbdb5bc8703e73dcfb52d4b9efc6fd37eebb656767e3f8f1e328a52a94cfd6f3e7cfdf8a5c01c68500b38757c30c62e703a9a8f3786ed071d592939383ebd7af8bb4f27ef2e78e1193bd2bad79afb8c063bf79f3a6c8bf22cefdd26b54547083aea5a54510662c13917d1e03fe057235a1a5ba1ba6260000000049454e44ae426082),
(37, 'TROQUEL 36', '0.52', 0x89504e470d0a1a0a0000000d49484452000000410000002f0806000000bc09a76f000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000b0f494441546843ed9a697095551286ef6fabe6ef4cd5fc196bca2a1704d4414010c84a20614b2001841809843510521af62d0412400402d9089b02094a20111190354058145140b6444c00d95765118801df394f57e2a0a3403037e3885d752bf7e67ef7fb4ebfddfd769fd3ed9117e59b6fbed1b66ddbb474e9524d9f3e5d43860cd16bafbda6ce9d3b2b3232523d7bf6548f1e3dd4ad5b3775ead4c9be1b366c98d2d3d3555050a08f3ffe5857af5eadbc9bf7a44640f8fefbef75fdfa751d3b764c2525253a78f0a03efffc73151515e99d77ded1e4c993151f1f6fcafbfafaeae5975f56cb962dd5ae5d3bb569d346fefefe6adcb8b1fcfcfcf4ca2baf68e8d0a106dae2c58bb563c70eedddbb57870f1fb6fb03ec77df7da78a8a8acaa7ff76f9cd20dcbc7953a74f9fd6175f7ca12953a6e88d37ded0a04183949090a009132698326fbdf59601317efc788d18314223478e54525292fd6fd2a4494a4c4cd4f0e1c3ed3bae79f3cd37ed77d3a64dd3c48913ed7aeec77d366fde6c209f3b77cec0af0979201040bdacacccacbb61c3062d59b24473e6ccd1ecd9b37ffc3b73e64cc5c4c4282c2c4ca1a1a1ead5ab97525252b471e3465bf4f9f3e71fc87ae5e5e53a73e68c81ba76ed5a0372c08001e6217dfaf431a067cd9aa5acac2c656767dbf3f1b665cb9669d3a64ddab76f9f8e1f3fae1f7ef8a1f28ef797fb8270e3c60db3f4471f7da479f3e669f4e8d1b6a0c0c0408be3d8d858b3240b5bb162853efcf043bb168bedd9b3c714ba72e54ab5dc1720befdf65b9d3a75eac7b0027ceefff6db6f2b353555a3468d3250222222d4be7d7b4547479b172d5cb8d0ae05f407f5949f8070e7ce1d5dba74499f7efaa9b66edd6a56c41a2b57ae346b2727279bab636d1f1f1f8b71c80e00203294f5a6c007dbb76f575e5e9e85465c5c9cba74e9a2e0e06075eddad578074fc13b58f3ba75eb54585868bfd9bd7bb7814af8fe5c7e020200ecdcb9d38809e68e8a8a52fffefd2d5e67cc98a18c8c0c6566669ad25803d457ad5a65bf292e2eaebc8b7705af3c74e89079079eb168d122cb2655afb4b434e392d75f7fdd3c85ecd3af5f3fe39b356bd6e8ebafbfaebcd37fc483cb4032c420c8cd9f3fdf2cddac593363f10e1d3a98cbe7e4e4989bc1d4c4dc850b172c7dc1d4b76eddaa51b6be97e0adac198bf26cd6c0fae12cac8da2840c46c443d0232020c0c206e3ad5fbf5ea5a5a5ba7cf9b2ad1bf1ecdfbfdf506adab4a95d3c6edc380b07080642fbf2cb2f4d696294075787706a5b00080e236c8e1e3d6ade79e0c001e3266a0ec0217be11d700a46473ce4e2debd7b1b6a303a9f7fcf8a3eace03d841069193de1b6050b16e8e4c993f2f00174203edc1dcbff51854c0551925aa94fe00ed2aa272828c872f1575f7d5579e91f57f070c89ff0c0e309fdb973e7cad3b06143cbafa0f4a80835c4f2e5cb8df0d1dd40a0d821361e15b978f1a28140ea1c3b76ac3c8d1a3532104e9c385179c91f5ff004ca6c6a2042c2c3eeed510381ba0210d8935838e009a0f1a87a020ef027087f8250cb20b03da6d6bf538d6ab43ad75647fe27205c71fb8e23ae12652fc276f65ec246eca6dbd8b04fa1d4f546095f2b20b089292929d6ca0f3e50822bc923bb7553bb901085b56fa7be3da3b56ed54a1d2d2bd5eddbb72b7fe1ac5e51aebcdc1c8d18324423ddd6bd20bf4017dd4ed51b522b20b0e32c2adaaa94891355f79967f4cf7f3cae3a4f3da5260d5f946fd39734392951dbb66ed1b5ebd7ed7a767f674e1cd798a1090aefd05e31d1d15a929bab4baea8f186d40a08d4e76b56af56dcc081facb638fe9ef7ffd9b7c5bb45097f04e0af2f3554c8f282d7df75d9d397b5615b72bcce285ebd7aa7754a4fa384f993675aa766cdfae1b8e43bc21b50202fbf94d1b376aeca8d1aaffecb30af4f3537c5c9cc6b83d7cd7f070758d88d0fcb9f3545c52622745dbf09af189eada314c539227d8e7f3e7cf998778436a0504b2c0e1838754e0ea73144f1c335ac949e395103f58212d5b2a3a2a4a398b166bf7679f69f3e6424d4e4956b0fb7f60f3660e8c71dab573bb2e5fbae8b5d3aa5a010146c7cd61771429293eac3999e9ea16de51cfd779da8543b43266cd52ba7bf5888c543dc71b4f3ef1845af9fb2934a4b5fac7f4545aea74156dd9fcc027c6d5915a0181851312b8fa5917f765a5a52adcb05e5327a5a8a3cb10ad0202d43726c608b07993268e349f5670ab568e436215dab68d5afafa386f8954667a9aae7ae104bb5640b87ae5aaf6eed9e3c2215f4b7272ad07b17fdf3ead5fb74ec35d0a7cbe6e5d05f9fbab7540a05ea8574f4ddc1ae2e3062b75c60cc717e16af05c7dc7233e1a3d6298573244ad8070f6cc592dcf5ba6f841718a72ee3e3335d5b1fd0eeb2b4e4e4e31c55b0506a84d50905e6af02f05faf81889cececc34d27cbeeeb3f26fd1cc40b8ec4510d845a2bb57b6d2274f9cd402c7fe9d3b76d20bf5eb1b11cececc52cee21c0d4f18e2483050b1fdfa6870ec0085b50d516bc705839c55c63a126d1f12aca68d1aaa7b9708653b1eb9e685aef42f7a026f6af264898ab1acb44c5b0a0b8d0c5b346ea4260d5e74566fa0e7ead45152e2382b96766c2b52ca8409f26fde5c759f7c52755d4155efe9a7d4392ccca5d06c1d3b76d42b69923a8693259a339c3e7b1ab88571b0003a352d158e20e764a42bb6772f756cdb56c18181960a97e5e5e99403fdb4db47e4e3966e31212e3420cc88d0502539172d7220fd52cbecb70a0d170e956926d1b6e3af9d3172daccb99b37e4c0bebd5a5990aff973b2959996a6ecac2c97328b55ee16c3ce92798615efbfafb9d9d9cacac850cec285daea88f47e1bad8711bc8a4612ad05da89e8fd99ab553c7474396ca4eb041034556bd205cbcb6f599aa3343e7fee9cfdbd3bf7f39e67f2ec0bce1bab8630eede5cd584703f80a563ce180163031cb7f36c0fa8d0806de5f2345d28c66576edda6544496cff3f0b8ad3ab64c285361c4d65c890b120bc806e35e2a198a123d3bd7b771b9fa1dd4db7f9bdf7deb316382c4af79739016289eb19cdf1565dff3082b258144bd37fc4abe996bfefc28cf5335442cb8da917faae4cc9bceb3670550d270f37a0239d9f9f6fee413b8e8b69cf3184d1ba756b9b3c617c86012cfa79478e1cb1aeeeef45e890d3aea7a546ab1e57679024dc6dd65e7df5550d1e3cd81467c884acb065cb16e3a2aaa1309b4fa0d62736c910b4de51b86fdfbe366455dfe579c8937eff54b7c5a5b3cb000437e25a1e0e28a4d8bb63dd1b02b3a330a1ca3339a9a27b8ef2581d2531209d25d6dedca55ebc9bcff41d99a4831809f3bb4facfe6b5c07b762428590603205f7614883c910628a9b310d426dc1cd4933a0ccdcd0af4d82d494a0006ece0c05cf2474ab0a1e0cc4fa3020eff91fd7f099be233ab197f9a59de97d6796aa042f01796e466e65c28c59446610f11a26cc981421f530d1c27bb886711fd210431458f15e64cb773c87ce38e4bc7af56a637280e72ff7c6d57916cfc4e5796120f88b50e5b76498eac803830082c490ed0a9d420c77b03162f283c532b33466cc18ebef118bcc29c2270c7a61b92a30981281587f7e804acdc07d21b5aa19293c9069195ef012ae9e9b9b6b44cd440acfa6d5ce20061900001f86b41f18847b090f6632046b31c845a621ddf28294980540293c0862c2a5010e457891bbf9cc77b82e9e5445cec435f18dc5f12c808413a8256a4a6a0404042e2017a314e915ebb36894472962138ec15b988c61da0ceb3213c5141c2378780d800166d59c2261c53d486900405185d7d4a4d41808bf26841021f0c9279f18402883a2146510dbc081036d5a95fd0bf99c39226a12a6ccf0b0da10af8340ece32555a531c320c43e799af4ca8b0287c285efd8e15dbb76cdacfd73def096781d84dfbf48ff0688aff009f29490810000000049454e44ae426082);
INSERT INTO `troquel` (`Id_troquel`, `Nombre_troquel`, `DCM`, `Img_troquel`) VALUES
(38, 'TROQUEL 37', '0.77', 0x89504e470d0a1a0a0000000d494844520000004c0000003908060000009c78cd59000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000cf549444154785eed9b89778ed716c6f357b4ebaeebb617ad6155aba8c820554d2283104310415a04312432986a4ea9a1a62088792c6a8a869010540cad2909420d498c2dada810454dcf7d7fa73e4d62b8820c257bad37c94abe7cdf39cfd9fbd9fb9cf36c3b95805dbd7a553ffcf083d6ac59a3f0f070b568d1421e1e1ef2f5f5557070b0a2a3a33567ce1c2d5ab4488b172f364ffe9f172c58a0193366a86fdfbeead0a1837c7c7cd4b4695375ead4c9bc6ef3e6cdfaf5d75ff5e79f7f3ef8c4e2b3970ad8f5ebd7959393a373e7cee9f8f1e33a74e890016adbb66d66e200d3b66d5b393b3bab76edda6ad0a0813a77eeac152b5668e7ce9de6f53ffdf493798e1e3dfaf0fb810307949494a4fefdfb1bb01d1d1de5e0e0a0c68d1b6bd4a8519a356b96018df7d8b76f9f8e1c39a2ecec6c5db8704157ae5cd18d1b371e8cf0c5eda50176f3e64da5a7a79b81b3ea23478e5458589879860c19a209132668ca94291a33668c860e1d6a9ed1a3471bef01a89f7ffe59b9b9b906749ebcbcbc87df5984acac2cad5ebd5a313131faf2cb2f356cd830f31993274fd6a44993ccef003424244483060dd2b469d3f4dd77df9905cbcccc7c30ca17b7220176fffe7dddb97347b76edd3261c6eafdf6db6f3a73e68c323232b472e54a33a17efdfaa965cb9672727292bbbbbb3a76eca8e9d3a72b2e2e4e070f1e3413c00b01e9d2a54bc60378df7bf7ee99cf28fcf07bc2edf7df7fd7c58b1775fefc799d3e7dda78e0c68d1bcd0201149fe9e2e2224f4f4f75ebd6cd2c0e7f4b4c4cd4c99327f5cb2fbfe8f2e5cb6661ae5dbb66def3eeddbb0f66f76cf64c80316080494b4b534242820901420b1e7273733303858ba64e9daa254b9668eddab5669084e2debd7b75f8f061131e80fcb2ed8f3ffe301e78ecd831a5a6a66af7eedd4a4e4e36e324d467cf9e6d3cb95dbb76f2f6f656a3468d4c58f7ecd953df7efbad5252528cf7e2cdcf628f00063878ce8913270c27ac5fbfdeb8f6aa55ab0c0fc5c6c69a01f8fbfb1b0ee18188090780dab3678fe10f42a9b40c6fc51309752862fefcf9664159581206dfbb76ed6ac279debc795abe7cb94948cc75d7ae5d867ff1e6c779df2380e1aa840dae1c1111613259f3e6cd8d8b0f1f3edcf0101e46569b3b77ae162e5c684271d3a64d0664b2d5cb24d9e73526cba4095de6c3a22f5dbad47026e366fcd0c4d75f7fadc8c848e381ccb54f9f3ee635241a1ca7b015000cf766d2bc39a40c50356bd694bdbdbd09c1afbefacab8f1f7df7f6ff8871083ece134f8c0c64165c91813e03146c64ae8412ff0e8ba75eb4cb9121a1a6a42b556ad5af2f3f3d3e0c183b56cd93293c4e0bbfc56003062194f993973a6c93a5f7cf185a99b08373c8b0f8027ce9e3dfbe03ffeb946d89234b66fdffe30abe369380a9144c2f8e69b6f4c58e73703185e0158b829710d57fdf8e38fa5ca43a56578229e05670322de4712b1991d60c15b1486d44a80b675eb56e345652dbc4aca08c353a74e9984002d91e46c6677fbf66d534d03162f2024896ff8ec7537aa84eeddbbab57af5e26eb82891d24181f1fafa0a0205315832c1ef7ba7a577ea3d0a59683db289029d0ed48bda4d7264d9a3cac3dcac1facbc8b0ec44d8869104f7efdf2f3bb6286c8adbb76f6f5e506e8f1a5b3d6a340a5b3bb62db6a313526db93d6a9419ad5bb7367b613bf67b64c671e3c6157923faba189405f9536ad851d5b315608f580ed8e38daa9f229e2da01d5f6c9bea72c01e6f6cce070e1c58103078ac1cb0c75b010fb31ddb9403f6642b07ac88560e5811ad1cb0225a396045b472c08a686506300eeb0a1f52deb3c6c0f334e3688063298e5b3826e7c4a538f7c1a50ad8ad9b3775e654b6b66c4a54cca4898a0c0d55974e9d1433658ad2d3d275f1c245ed4849518776edd4212040c15dbbaa77af5e0ab35ed7b37b0f4584856bd890218a1a364cfdadfdef006b633c253a5a47323274e509373d2f6aa50ad8b9b367b5615dbcc68c885297cf02d5c4a391aabdfbae5af83653ec8c586d494ed6dcd9b355efa38fccf3b193931cebd6d587efbfafea55aacabe4e1d79bab9c9dbc3432ed6df3ea95f5f419f7da6142e66ce9f379ef7b2ad5401dbb573a7465abb7f7fbf16f2f36daa8036ad55f9bf15f55ed56af26fd55a5143879aa7930542e78e1daddfb592b383832a56a8a00a6fbea9f7ab57938b433d39dbd755b577de51d5ca95e5ebeda5a40d09e64aad380429a50798453e09ebd72bdc0a2fdfc68d1568855dbf3e7d54afaebd2afee72dd5a9595381016d35322a4a1b1212cc6ba74e9eac76fefeaa55a3863e767434e0f87a7baaa1b3a3deab52c500e6e5f6a9d6ad8d3317c8b75e25c0eedeb9ab94eddb0d0891e1e10ae9d9533d7bf4d0871f7ca02a952acbc502243c3444cb972e35a7bf1c11c7af5dabe02e4172b2400d0eeaacc8dea16aebd7520e756ae9ddb7df56e5b7de92d34775b46cc96273a74a2279d9562a8071ec7dfbcedffc722927c7dc07b66ad952552b5592a7eba7ea1711a6f8b8d5ba6801959b7bd5f0d2f0a143d4d4f2aa265e5eda9c94a4ad5bb668ece83126549b787a5aa1eda78e81815a1f1f6f6eba5e290ebb77bf60eadfb56bb7a22c3ef369e4ae564d7dd4f5f3404d8f9ea8a3870f292b2b5bd36362d4ba650bb937fcc4f2ae20659e3ca173e7ce6bdbd66d9a191bab09e3c669ceac595ab17cb98e1f3b66aec78aa3bc2800185f00ac24cec378ff9b376e58a5c50d5db7eaafcc93994adcb85121c1ddd4dccb43aef51d2dd03a286ee50a034af76ec1b2af5d5b3e5e9e8a1e3f4e5773afe88ef51e489650eb1cd8bfdfc898722e5d329e555cb5d86301431e50dc80e5e55dd7c1d454eddd95a28cd47d3a9b9da94c8b77227b87c9b96e1d55faf7bfe4e6e2ac8963c768fedc79f2f1f6568dead5ad6cf9b936256eb400f97b7c0004e8774be0e2a6543c0c0ecbc9b9acb5ab562a76f2042d8c9daa1dc989168007ac6cd95e552a56548537de50c3face1ad4afaf559c0e9687bbab5cad701c3b66b4b2b3b21ebc53c95b01c0366cd86044705c8717b787a19e49b6883b22b4975c5d9c4c69e0dbd8db644807ab380d0b09518c55b50f1b3c503e9e1e0ae91eac258b16e8e4f163a57a574a72e2aa0dc9a81dd7e14804d0a216376018e43cd5da0605f8b791eb270de4fe694379b8ba2aa2776fc5ad59ad3dbb776bd182f9ea151cac3933639571305dd7afbd7ce562510cbd2cb746063074156448eedd4ae25e12911a9284850b1668f4a851664f38cd0230c9e2a8d3a74e19024f4b4b559c35b8748befaea1cf2ae59bf8112346a84d9b3646a56887f614fe427a5912f22632190a45aee09146a6a7a599fa292fef9ae5e17f09833985c8b5802584cb826c017d1c324f73f34db641ffc4cd371a77d479c57954f24f31dbc2a1b4447989b41351b41d7f60a5d1ada20145dbf93a0ae9f21b98e038a82db9e89e3871a29181a143310a440ee1f0323225f21ef461259100caaab163c071505f73810bc7d31bc041e5438d2b5e06b9a1b1201b109eecfe1192c139afba040a6a4217c77c093d3020146998408462b38780e16594172888919bf31d110699816d086ff6aa1a21c8c9082188f019293d1d2da832f94e2561b3022a6ad0a583020531a0911d10c6a2a0a6cb837fc63d01161d2cfa77325c6169765934322ef363f1e9160118b6833805f3627ef42c3177e6c8df01aab074b50060b8255901a9355a7cfe094e1b3b76ac29dc1095d13bd4ac5933e3ae6ca9904bd13d06499665438a4a970add2a38000d0cf424d14e839890ad0f0a72fa1090a2c3e38f8baa0280e537c0a346030cb606bc21c59badcf11ef83efe8aa40ddc240c824b6fe225607ef63654bca28bca1164e30908ed306b365cb16a34fb51d63e14d48307bf4e8212f2f2fd3774997cbf8f1e30d57e12cccfb4947dd4f040c2353126e841eb27484fe941f3cb8335b06526e545494214700a5ff91763fdc1ab13142da676d7c7a112329e1e52c30c01015bdaded167d500101011a306080a9a5083dc6c61c68dc421b0750f97b8c9e762ff054c09e669c4971240c1ff0810c04b5319b540064c0902680927de9282145937d76ecd861fef77980244c580404ba780ea5109fc922f199e875f17c2883be490a72a28328a17462f1a19de7f5fce7060cefa3dcc00369c86212842103a28b842e32f8805694c0c040d5a85143f5ead53313c33b492ef458b24562f09cc5f3b0ba851f8817a0281cd1e49270f076808187e8ee4505ce0102a105f7b228d4527c068b63eb956491a09be7b5e706ec690600ac22691a8e0324daeee8aa0040260597d8bae278f0001b1732611e7eb69dd7919979783ff6be643432382107a7d27c8037c35570587165ee62010cc333e0031aa0c84e0040e89275e10dbcc3d645dbb0614303283d985dba7431cd9f90323d8d004243281e44672fd98d3e6f78082f0354b892cc8677536ce345c55568171b608f33b218e1c1191c5e43a6050c272727b9baba9a8c459b2121cc0359f377523f190d30c9707826079f54e485eba4e2b61205cc66f01f7c8527103af018a99c32040f21a4a883f899df5170e2adf018ff43c8037e696cd74a05b0ff676577df2afd0fb1254dba03b6789d0000000049454e44ae426082),
(39, 'TROQUEL 38', '0.59', 0x89504e470d0a1a0a0000000d49484452000000450000003d0806000000fbfca485000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000090949444154785eed5b7750d557167e7fefceececee64d664667763c4e8ac0a52547a1fc102a14991842608ea82b08088d21117cb2020bd89541b16349200a2d2515446aa4adcd800051410b1ebb7f7dc7d64415e4c263e1fed7d33677e8fb98fdfbdf77ba7dc728e0013083d3d3d686868c0c9932791959585d4d454ecdbb74fec929191f15e9950a48cc4cb972f3949adadadb87efdba58e4dab56b686e6e465353d37b65c292328cb76fdf0a3f7d38e85d434343181c1cfc491e3f7e3c46449272e1c2059c397306252525282e2ee64f494b6969291fc3d9b3677fb394959571a1f790d4d7d70b67f87e8c218554362e2e0e212121080808c0962d5bb075eb56fe59d212181888e0e0600405057d900cbf2b3e3e1ef7efdf17ce1478fdfab5f0d36870529e3c79821b376ea0baba1a870e1de203f1f6f6c6c68d1be1eeee0e0f0f8f492b34077a7a7a7af21f383b3b1bb5b5b5e8eeeee6048882e0cd9b37dc09a5a4a4c0d5d515b6b6b6484848e05e98bc7f7272f2a4169a577a7a3a8f3abb77ef86999919d79c8b172f0a29180bc1ddbb7771fcf871b8b9b941454505fafafa387ffe3cdadadab8e7276ffd6b3cf644151a3b59417b7b3b8a8a8aa0aeae0e131313a4a5a5e1ce9d3b421a4643b073e74e4e08b1575858c8c3d68b172f84cd530bcf9e3d43636323a2a3a361696989d5ab570b5b4643e0efefcfed2e33337394139aca3877ee1c366cd800535353f4f6f68e52020adb82f0f070444545f190450e773a807c28990f2904690ead4d8641114940aa74e0c0015cbe7c19030303c2a6a98dcece4e94979773e74bcf870f1f0a5b8057af5e41101b1bcbc3f0952b57d0dfdf2f6c9aba20f320522a2b2bb17fff7e1e54469242a624888989e19a72e9d225f4f5f5099ba62e88947bf7ee713248532a2a2aa4a44849110129292220254504a4a4888094141190922202525244404a8a084849110129292220254504c68d143af7a5b399fb5d5df8cfcd9bb873fb167a7abaf16470f0ff27e86c70bd3d3db8f9c30fb8d9de8eaece0e3e201a34fdffd3a121f47477f3e30cdace8b0be3464a7fff005a9b9bf1eda993484f49465ef67e9c2d2bc5b5d616d6f6bf3efa595f67cf942225311e4971713879ec183a3b3af1f8f1201e3deae3c7a2a525c5b85c5f8f070feef3c18a03e3420abda3e14a0372b3b2b0d9d7077636567071b447e4f66d2864136f6b69c11336f1aaf272448486c0d2d404e64646f0f5f2446579051a1b9b50575b87fcbc3c84040522313e1e956ce07406220e8d913829d461735313323332b07eed5a2cd5d1868a9202949514616d69895d3b2271aab01095e7cb111a18089315cbb160ee1ccc9d350bfadada488c8b470e23337acf1e6c58b70ecb0c0cf0b58d0da2a3f6e0425d1dbff2fc50489c14fa254b4b4a101c1080e5064ba1b0603ee417ccc35c99d9d0d1d084a7870762a2a2b073fb76e8696a42517601fef1e56ccc9e39937d57169eff74878fa7276c1881ca8b166136234b76de3cac7170c4b1820266568f843dfd76489c14728ae5acb323870f63f7ce5d70b0b387ba8a0ad414e4b06a8501d63b3b300d7281093317393659035d5d7cc3cccb9e89b5a9316c5799c3689901e419599fcd98813ffff14ff8eb8c4f616a6c8cbc9c1cb198b7c449a18873ebd62ddcbe7d1bd5d535080b0d87a69a3a16cf9b0b9baf96c3c3d509eeeb5c616561c14c4a09067afab0b130879d9505ec2ccd18698e7076b083d957c65059b204b3bf98054d5555f8f9f8a0acb4542cb70d122785c2ed6b164e091d2c92c4ed8d639aa286cffff2090cb535b06e8d03330f0fb8383840514e8e998f1c541729414b790956e869c3dfdb0bff0e0f455870105cd638438b99dc7a37571ccccfe7377c94b3f2a1903829f442ea806c9fee5652535260616a862fbf98096d7535d8afb681c77a37387ef33516c9cb6389a212d7046d353518ea6ac3ef5f9e488865e3c9cd454a5232f3411bb9d3a62b5c5ab7d0843e141225853a6bbc7a95394507ee33dc5c9c111b13cdd62aa790c03486a2d1f2a54ba1b8500e7ffbf433589a5b20232d1df5172fa28285e2581671743535e0646787436c3c5d9d5de8628b3f4aac1127244e0a5d689b1a19630e8b1a0ab2b28c1817646566229ef5b1d6d101ba1a1a982323833ffceef72c3a1922293e01b5d5d5dc5f4446446031d31e5b6b2b143047fdfcf973e19bc50b899242a0bbe800ff2dd0505185ccdf3f87eae2c54c73ece1626f07d315cb9889e8b03665469a0c9416ca638dbd3d5faff8b3459e2d0bc3d4bed9c71be7cacaf8e03f06244e0a39dae2efbe87ff263fe8ebe862e1fcf9505654803e330b73a395ccd13ac1cbc31dce4e4ed05257e79aa3afa5092d46940ef3393e1bdd7120271bd7db5af9fee76340e2a410eeddbd87ef4e17213c340cd616abf8a4adcc4c11e0b7099969a96c457b0285274e30e236c1dadc8c11a30e1d3555f65d331c3e908f96a646f43d7a387534652406d8a6b0e96a238a8b8a505559895b3ffe88a74f9f0a5b81dede1ed4d5d4e0c4d1a33871ec286aaaab3e9a1f19897125854091e301f333d4e9bb1326f3e863a1bb830db0b3a3432c4bf85f8371276522e29748a105a294947748210d9692f20e29044ecac183077926d37421a583f930ca60a23c3f7a52dedb4808f6eedd8b8282025c654bf4e992de458bcc1a16f928d198d2d529cb7c24787ad761b6aca69292e990de45a03d555555154fefa24cc931a4501e6d525212b7314985c5f104990f1d43504235254192db7857190494d0efecec0c22874c489cd7091311a41547d982d1cbcb8ba7ddd3fa89881a09c1ae5dbbe0e8e8085f5f5f9c62db7c52ada98c969616242626c285ede029c1581404f9f9f9bc7465f3e6cdbc40816c8d62356deee83995848e33a97e8992a9fdfcfcb063c70e210da321a0c220caa3a55a1872bae45ff2f2f2909393c3d72fe48449e83b934d86c74df3a039e5e6e6f2ca0eaa52a1ca8ed3a74f0b69180d01c568723ce468296e536a365572686a6ac2d0d010c6c6c6303232c2ca952b279d0c8fdbc0c0007a7a7afcefc8c8481c39728497b6fc6c1587f0c91d2c9dc453a95a686828afea080b0b43444404976ddbb64d3a191e37cd870abbc87f5201d42f15668c2a97a3cd1025efd38a8f58a45a205a1293d0e7c926c3e31e9e039141b78c3f5df2ff0c4416564e774849110129292220254504a4a48c01f05f47ebe374d28daf8b0000000049454e44ae426082),
(40, 'TROQUEL 39', '0.43', 0x89504e470d0a1a0a0000000d494844520000003b00000031080600000064bed1d5000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000708494441546843ed5a8957cd6918beffc1cc99ffc0d4d0986126da53d1a45393f68529d16094842933a5455aa47d9116a248d31c91b450dd6eab08155aa42387914e2254b4dff0ccf77eee8d0ce718d3e576a7e79cf7746ef7ebd7f7fcdefdfb5e01fe479842f6e9d3a7686c6c44555515cacacab8949797cbbd884422bed78a8a0a9c3f7f1e0f1f3e94309a8a49b2e3e3e3686b6b83afaf2f1c1d1d616161c1c5dada1a363636722bb43fe95eededede1e6e686dada5a0c0f0f4b98bd82402c1663686808b76eddc2993367f803545555a1a4a4c465debc79505151915ba1fd292b2bf3bd2e58b000868686484b4b43434303d7f0eba405f5f5f53878f020f6ecd983c4c444d4d4d47053be7af52a97a6a626b917e95e9b9b9bf9e7d0d050d8d9d9c1c5c505d9d9d91818187849363f3f1fbb76ed82b7b737274d5a9ee93874e8101c1c1c60656585b8b838747474e0d9b367101c3e7c187e7e7e080a0a02115704545757734bf5f4f4446c6c2c2a2b2b3132320241727232020303111f1f8f73e7ce4996cf6c50fc292c2c4452521212121270ecd8319e6904f48b9090101c38700057ae5c912c9fd9e8e9e9e111f9c891235cb3c4adbfbfffa566c9a1298291932b02eeddbb3785ecfefdfb5f9125cdfeafc82a9219777777e3ecd9b3a0e0fb0f339e253b83314b56d664a96a191b1bc30bc9e737313131c1933dad994e7c12b277eedce1a5dafdfbf7f1fcc52bca4492ea55fabebdbd9daf1965a4a70b32274b2d620f0bf975ac9fcc484f4780bf3fac2d2cb1cace165bdc3622212a02052773719ea5843f8e6662a7ef0eb8ac7682bdb51556dada203a3c0cf97979b8d6da8abebe3efe423e1432274badd475d60f67b2dcb6cee5672c565d846fbf9e0f031d6d982c33c04a2b0bf8fee685947dfbb06db33bcc961b415f5b0bcbf496405f470b0eecfb403f5f9cca3b899b373bb8797f28644e966acffa4b9710151989a5fa06f8e2b3cf6168b0146b1c1d61696a0a3d0d7558b09f5b366d8299b131b4d516c3dcd404ae1b3660ed6a47e869aae32766057131d1dc3aa46dd98740e6640707077199f5c1fb584f6c63650dd585dfc17bfb7644b2ee63fd5a17e8a8ab330deac29991d7d3d6868e8606dc5d5d919a928cd8e828e869a9b397b01c017e3b202c2d79e7d1cafb40e664474747f1d7eddb28130a91109f80c0809d488c8b4578481056d9da4263d122181b19c163933bf418697a19eb58739dc21a91c4f8582cd3d586b9893102982f9732b28f1e3d923cf9df43e6645fb0683b3121e6816a5c2ce669e7447616b66e5ccf4c580deaaadfc3dec61abb7606c2c37d332c57ace0666c6b6e06633d5d1831f9dd731bf24fe5319fbd29df3e4b6759fd2c8a52114e429aa9abad41527c1c9c1ceca1aba901035d1dac7172425c7434c277ef86d7560fd8989962e15c651819e8233a22022dcdcd6c6303fc657d283e8acf523416969622f7f871141614b08d3741585202bf1d3e3058b204f3e77e851ff4f5919b730cc5a78bb037260af6162bf08dd2972c48adc6899ce378fcf8319e3f7f5719f27e903959d2647999886be7570f0ff86cf76251f51caaabaa101214ccc9ce9d33876bb0aabc8ce5db1a2430b216cc4fb59889a7a6a4a0b5a5f53f69540a9993ed7df000a70b8be0e7e3031bf315b0fcd1041907d37084fdc32d9b3da0a3a909adc58bf18bcb1a54578850989f87001f6f5831bf75b2b743dbb56b181a9c9ec33e9993a5fa967cf57263039213f762ade32a963b35a0a5a6061525651e8d2915558a44c8ce3a0a6f2f4f6c7377e39555a5482879caf440e664a5108bc739e1a4bd094cc3e6305dbe1cc6868658cfaaaa3fb3b270b7b313052ce2868786b2d414832a46b4bbab53f2d7d3838f4696d0dfdf87cb0d0d38c49e99cccac3fdcc1ff34e9e44fbf5eb3c1f53fd5b5e56860bcca7bbbbee423c3e83bb1ecab9638c14f9f1fd9e1ef4f6f6e2c993273c0713883045ef9191e16909486fe2a392fdd498253b4b5601304b96c8a6a6a622829578f405dd6f2a02e8ccabaeae0e592cafc7c4c480144a473d5cb3bb5907a248d71faf5f6c11d9c9eb0fd2aaabab2bbf9056942b4b3ab52c605d175dc3464545710d535e17d0ddac8989099c9d9d51545424593eb3d1d2d202724f7f7f7feeb325accda4824640a33529ac9c8b660d756666265a592947053d553c74e845b62eef42fba4033f325fda3f05a4e0e0604e542814721f260868715757172e5ebc889c9c1c1c678d379933bd1d0a5814a1e559a48323449266a0727373b9e9522c224bbd71e3c6e48dc3e41c149d10141717233232922f4c4f4fe742c318f22eb4cf8c8c0c6ebad28044a64b44c942a598244b5332172e5ce09199064a7c58134e424360f22eb44f9af6090808e0699426dde84a854cfbf54663922c9de6d1e005856bf25f2a3468fc80a64ee459c2c2c2f85ec94749ab14793b59cffcd60937c94f0ede9a31fb26e2b478a609ed5bda46be0d53c82a3a66c92a2680bf0178a02136fa0938890000000049454e44ae426082),
(41, 'TROQUEL 40', '0.89', 0x89504e470d0a1a0a0000000d49484452000000370000006908060000009e5fbbc1000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000007a449444154785eed9cf94f554714c7fda536fe019a626a3596c51594560b4505140113a1681515f1813c148d446add957d1301c1a44214a8c46a50b182686954b62a28b2b85579082e6c8a5116770504be9d33de67455c0aca7b173bdfe4e4fe3077b8f379e79c99c7bb33a70f3e61fd7fe16eddba85ab57afa2acac4c3656515181baba3a34353549a37cbbde09979e9e8e9d3b7762c78e1d888b8bd3bac5c7c763dfbe7dc8cdcd454d4d8d34cab7ab135c4b4b0b1e3c7880d2d2526cddba15dedede58bb76ad566dcd9a35fcba6edd3a04070723212101999999b877ef1e9e3f7f2e8dbcb33ac0ddb97307393939080a0a82adad2d12131371fcf871fe878e1d3bc6ede8d1a35a311a07d981030710191989d5ab57f3a82a2c2cc4ddbb77d1dede2e51fcab0e70c5c5c5888989819b9b1b9c9c9c909797c7dd5f5b5bcbafdab49b376f72bb74e912525252101e1e8ec0c040ecd9b30767cf9ec5fdfbf7d1d6d62691bcd04bb8d6d65624272773f72f5ebc987f42e4494a5c0a55ba6ad39a9b9bf99520ae5dbb86ecec6c1ea29b376fe67948d014a6c4a11687a3c1937728c728bea903e59d5c451eaaafafc7eeddbb111111c12d292909454545686c6c94ee92e0aaababb16bd72ef8fafa22353515376edce08d721779f2f4e9d358b972256c6c6ce0e5e585fcfc7ca9558223376fd9b205ebd7afe7ee7ef4e8116fec0d2a2929c1b265cb60686808474747646565492d125c797939c2c2c27848d26cf9f4e953ded81b44b946738481810166cc98818c8c0ca9e535b855ab5671cf3d7efc9837f6065db87001eeeeeed0d7d7878383c3a709a7a7a7f776389a216961a498ed4d3947708b162d7a1996f485432d012767093801274309380127430938012743093801274309380127430938012743690d8e7ef66e6d256be5f6fa8b8a8f21adc0b5b5b5f3bf43bfddd3effa0decfaf0e143a91578fae4099e30fb506905ae9d79e9fcb9621c4c4e46dcf6ed38b07f3fce1517a1b0a0007b7edb0d9f0d1b11e8ef8f3fd3d3f9f39f3d7b26f5ec9ab402d7dcd484f4b41484f8fbc273890782fcfd7038f52062b7fd02e7794e30ffde0c53cccdb162f972a4a6a470ef76475a816ba8af43e4a660b8cc7584dd346bb82916203430005e9e9eb0b1b2c2e449e6301d370e532d2d111d15859aea6aa967d7a471387ab574e9e245b838cd81d5243358994f64803698cd1eeee6a2c0b2a54b1968103c94ee98686a8a003f3f94979549bdbb268dc2ddbe7d1bfbf6eec512f6c0b1a34660c277e330ddc61a1613cc305c4f0f3f7b7921272b132d2dcdc8cec8849585053c196c161b14bdf06cede28cfa5e38dadff1a170f4c29da6fb93274f620503186f6ccce04632af4d82fd345b583238a31123e0e7ed8da2c202de278fdd4b79a77475e57977abb6162defd89df0266904aebaaa0ac58585880cdf0c2b96473afdfb63ccc891b0b634879d2df39c99298c478f4278d826a85425bccf99fc7c066f0e97f9f3b1372909159595fcdd7757d4e370b438676564203a32027367fd0843e621821b35cc80cd8a26b0618066e3bf81d1f06108090ac2f9f3e779bf5ce6b9a92c2c950a055f2aaad8a4223b381ad0aff171cc034ef8d6c8107a430663e85783788e8d1f6b8409e3c7610ccb3fddc183e1eea6e42fea699bd3ef6c0db43033c312a512e9478ef0fd24efda34f326f5281ce51abdacdc9598c8d7ac79b36731efcdc44c7b3be80e19029d0103f0a58e0ef4877e0da351a3315cdf00862c5c3ddc952cd75c30cbc1015111112855a9deb851e67dea71b867b4abe0d4291e5a890909cce211be29148318549f3e7dd0afefe730361a0bc5fc05b09e3c0583070e64213b0c3653a6202c2418d99919a8635eeb8e349273f41df2369bed6ed26e1f66a772733166f468f4fbac2ff3de1798eb38070971f1080908c0e48913b9577f983e9ddd7702f57577f95e98eea8c7e1dea4c68606fcc4c2940014cece88d91683bfd9c27ef2af1c8432c0798e8ef0f7f5c5fd7b0d528fee492b7014ae79cc7be947fe40269b4955252afe5f0185dfb9e2621c4e4be37bcbd89d2f3a74535a81d394049c8093a1049c8093a1049c8093a1049c8093a1049c8093a1049c8093a1049c8093a1049c8093a1049c8093a1049c8093a1049c8093a1049c8093a1049c8093a1045c6f2f19f25e3875259b8f71984153a24a36e4395d5d5dd8dbdbf3da606a7138dac04d85c2a80611c1f5a6b054a954bc4c0fc1d9d9d97586abacace4d5cf7c7c7c70e8d021545555f146b98b76d552392c4f4f4f989a9a62e1c2857c03b95a1c8eaa0ed244e2efefcf6b7fbd5aea46ceba7efd3ad2d2d2780d3e0acda8a8285e4d4a2d0e47a2830ee4352a1046f5bf08b0abfb8d35254a1b2ae745450ea9e6576c6c2cf7201d997975cc2fe148f44910149579231753393ab9890e345db972853bc2d9d999d7fca27a7b548bf3f5236c1de0e8d0039de8a0ea88262626bc3a2115ef2423775fbe7c99cf4e9a367a2e4d1c34863367cef0aa72d1d1d1584ac7664243f9f4ffeaf135b53ac09168193871e204af9248eb1e4d321b376ee433a9b68c726ac3860d7c2c010101080909e15512d5252a29445f2d20a85607383a1f400b38b99eeaef1194abab2b140a052f0b49a6542a356eea677b7878f03c23a88282174766dea54e61a94e4802a5c298f48d8566525affb46d145134265a97ffcb79bb4e61f929e9138603fe010314d3e5250834c60000000049454e44ae426082),
(42, 'TROQUEL 41', '0.33', 0x89504e470d0a1a0a0000000d49484452000000420000001e08060000009818c864000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000062d494441546843e559694c5457189db4497f68d36ab5586ab05a1010a9d136b691562b55913646b4042bc85295455170298b08832048119098283b361484511661c62abba0415082824476598a01158dca262ac8e9f75d47a34d9ad685a1194ff2e5bd79efe5deb9e79e6f7b4fd2d1d1819a9a1a949595a1bcbcfca99d3f7f5eadecd9759d3b770e67cf9ec5e9d3a7c5eff6f67648aaaaaa90929282909010444646223a3a5a1c232222d4ca784d515151d8bf7f3f828383e1efef8fddbb77232626469021292a2a82b7b7376c6c6ce0e1e121ce3d3d3dc5b9ba99979717366dda046b6b6b98999961f9f2e5707575855c2e87243b3b5bdc74747414aa080f0f17c7bd7bf7aa95f19ac2c2c2e0ebeb8bcd9b37c3c2c2028b172f8695951512121220c9cdcd156cc5c7c70bbfe158c14775b4d2d252b0076464640862d6ae5d0b5b5b5be11e92e2e262ecdbb70f6d6d6d7853303c3c0c8e8da1a1a1421d1c17458ce00b0d0d0dcac7d41ff7eedd1301928326132114c144b04c2e5fbeac7cecff83a1a1210c0e0e2a7fbd1eb01aeedebd8b929212ecd9b347c4479511c193dfbf7f1f03640f1e3cc0a3478f9477fe197d7d7de8ecec446b6b2b6eddba8501da451ee75531aa4430724e9e44e4c183484f4dc5952b5770fdfa7504521e5f4f01cb85ff4c5434aa2aabe8c961fcd9d62a9ef374f780f9ca1ff1cbb6ed48397c1875b575e8efef7f3ce04b62d415b1cbc707b694aa7e0d0cc4c50b17d04c64982c5a8489e3c6417bea3438da3b20372717fd7dbd2839731afe94e6162d3486a6c624cc9f67046faa010af2f271e3c60de1322f8b5125a2b7b717df2d5800a3b973e145a9ba824adda6c6467c317b36241209de1b330696ab7ec271c57152430b0eff9e809fa9e831d0d5c33b6fbd8d193ad3614fca912527a3a9a909030303ca915f1ca34a04f7321ae3c7e3337d7d486967ab2e5ec4d5ab5761b66c19264d9880695a5a7058b78e149183b2b325a4062996925a74a67e4a248d85a19e3e6c484dec3e959595e8e9e9518efce2181522fa48e6ec02c94949789b767ea6ae2efca452d4d25c3da4121faf9d24fb79983b670e5c3739a3b0a0004765325852d5a7a7ad0dcd891fe2fdb1ef8a73f3152b114e95616969196edfbead9ce1c5a1622286c91d7a50989f072f773798182f8496a626e6181a620be5ed53b4e06edad5538585d846b53eeffe460707649f3881f4b434383b39c178c1b730faf22b22e973fc606a0ab7ed6e38223b42eaaaa5b1fb94f3bc38544ac4d0d02045f81a444746c062e50acc3298017d1d1dcc9a6980359696f82dfe10cd5783e2e2221133be5fb204ebedec20cfca42757535b232331116128a9d9e3bb0c5c505c14141483d9a2ab24a57d74d91825f162a2582d5909c9408277b7b21fb6953a6c090e283819e1e4c4d4c20f591422157801b3e4f77779852f3c31985d5c0f5466f4f2f11592b14c3a494518fd0d2d22a822e670c5ecccb42a544747676c061fd3a52c24c4ca0f43871dc7852c474e86aebe01b23233851a71b17130b8542f19408ebd5ab69d78f2a4778fc876fdebc297aa03b77ee609054f63aa052229a9b9bc5ce6b7d3c99ea000d4ca5ac30f9234d52c627986ff4359c376cc021ea761572393cdcdc448c6022d29e2182c11528bbc1ab28e0ef502911ddddddc8cfcb133e7f9202605c6caca817343e9880d516ab204b49411b95ce39e41adb5c5db0d4d818766bac9041d5e44843a5443078c2273bd9d8d88019943a590d7e525f5159f26e979c3983a0c0006ca458b2cbc79bb249be787e24a172229e0557823b3c3ca9b70880224b8e6bd7ae89ebd5972e21332303490909f883e2456343bdb83e9218552238d29753ff5f515141d1bf457496ac88abeded68a86fc095c626747674a08fb2c248e35f89e03258d5f82fedf848806318bfba0ba2fae43922f8a526b7c66f0a1e3e7c28d4c90278faaa8edf5932119cf2de14f05baf0b14b09f23a280ea7efed0c1cae8eaea12450c1fd5d53850d7d5d5e1d8b163e2fb8d03f53882082e73b76edd2afc856ff2c78e4c2a6bf95cdd2c8bea9ae4e4641c3870006e54c8999b9b8bef1ab15ce770f47c2211fe0c1618182814e2e7e7a756c66b0b0808102a707676861d35796c52a914ec151296097fe4494c4c441a353de9e9e9e2984a559e3ad993b5c96432b1d6b8b838912df87a7d7d3dfe02c75d5e2dcfbc41f10000000049454e44ae426082),
(43, 'TROQUEL 42', '0.20', 0x89504e470d0a1a0a0000000d49484452000000170000003e0806000000c089805e000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000672494441545847ed98794c545714c6b1a94d6c6b1a8d6dacd6aa5401656b151150280da5a240050586111459145410b08014302ac80888ecca268b2895b2040c220d0858dceb06c8ee065a51544441ad0af8f5dcdb99d6b1d32026f4aff9929347de7dfce6bd7397f3ddabd0d9d9891b376ee0ead5ab686d6d457373339a9a9af875b078fdb99696163c7bf60c1229444545c1c3c303767676b0b5b5858383035c5c5ce0ececfc462179d6c6c606c6c6c6a8adad15a3091e1818c81b4c4d4d211008e0e9e989cd9b3783dd1f2c828282b069d326f8fbfb432814425d5d1dd5d5d56234c11968e5ca95707272c2d6ad5b9197978763c78ea1a2a262d0a8acac445555154a4b4b1116160603030394959589d1040f0f0f878f8f0f828383919f9f8fcb972fe3c9932778f8f021babbbbff3358fba3478f78dcbd7b17870f1f86b5b5354a4a4ac4688247474743241221353515c78f1fc783070fc44d6faefefe7e5cb87081e7ffd0a143e2bb04dfb56b1758141616e2d2a54bfcaddf46d7ae5d83979797343c212101f1f1f13c25aca77b7b7bc54d43134be7faf5ebff0d8f8b8b436e6e2e2e5ebc889e9e1e71d3d0c4c6381bd272b894e4709992c3654a0e97a96185b3e23e6c70b6e4babbbbbf397c802acc8b172ff0fcf973f4d1b5afaf8fffcd0a0a2f7154eafe78fa140303031c2eb358bc0a97148beeee073879ac1a07f665617f66068e9497a3a4b818498989d8401073533398909508a5dafbdbe9d33877ee1c7c7d7da56be8abf09a9a1a3c7efc182f5fbec495d616a4a724c3cfdb13017ebe484f4bc3f65011ec85cbf0a5ba0646bfff01468f1a85c5666648a11fdc9f958595e479981390e86f38b3147575751cde439f5b595e868d1b36c082fc8cd38a15888adc89d55480b5be9a857163c7e2dd11ef60d4c8f73077f66cb8af5e05af75eb60304f0fe5f4851271786c6c2c0a0a0af8706239ada5f4444544e07b9385d099ad05a1b50d44db4221b0b2a6b7568786aa2af4e6ea409bc006baba30fbd60886ba3a98f0c9c7dcc748a4c08a338317151571cfd84f9db337230336969698f1c534a829abc096a0215bb6c09eec9ef9c285705fbb16b164497cbdbd21b0b480d13c5d284dfe1c234728e0e8d1a36234c1939293919c92c2d352517104a5d421561616509a3a159f8e1b07351515982f5a8418f294d9d4b9d547abf0fbcd9bb873fb3642c9a179ae714380ef0ff0a0eb1cad59d26949ddb30769e9e9c8cccc44425c2cef3c63c3af314b5d0dca8a8af4e6ca984f9f9e405f78ead44974deb94d0eab13c7c9130ac961b9bbba223b6b2f0af272e1e2ecc49d97440a29e4b412139310b96307d6ad71c5826f0ca145602d4d0d68a8cc80cab4e998a9a4ccbd606d6d1db771f597ea101f130d0b33536cdf1682c6fa7ab2e057101c128c621aae1229ecdebd1b11e111f0dfb81182a54ba0ada90e15c5a9940e65a84e57c2b42953f0d9f8097c8254565492276f447e5e0e3cdc56c363ad2b8a8b0ad14b13ef56c72d6c7d1dce3a9399d060ca9f282404e1a26dd814100087e5cba13b479b46c0787cf4e1682cfcce98f2eb0a6f029a7d67443fac489d6e812d4181488889c18f7e7ed0d5d191ce391be3113b22904c1d7bb0e8204e9e38815fa9c7e3e9be50600b4d55354ca751634520a765b6b05bba1846fa7ad09c3903f375e6c292526347fe7e819111264d9cc86db5447c28c6c4c620272707e7cf9f47575717baee77d1435508136d8723cdba65b642f8fbfa6023cd564fb7557071580e3b5b01a571291c6847e242cf98999860f2a449d270c90c6546f42f97fb94ef6bd884fa85a67256e65eeca14efff9c04f38b07f1ff665d0c84aa31146f7529292a83d834ffd2db4c398af276386be3efdd94a78efde3db45dbf8e16da4835d068686c68406363238f268a66b6d9a2b84ecfb4b7b5f1d55048934ce6dac257c59a7f56c5a16a582b11db6ab2cddab0c0e5e65fa6e4709992c3654a0e97a9ff1ffeea794b03150466e7de46ac687893039382336bc18a333333ec40e66dc58e10fdc80148590b961276fc979d9d8d3367cee0fefdfbbccc0d25d8d7b2faebe6e6260d0f208fc28efdb4b5b5a1afaf8fa554d11d1d1df9f9e260c14ef55690bd66c77e8686861833668c7481666f6d6f6fcf1b197c11994e76cac67e64b0b0b2b2c292254b606e6eceff57854cebd9b367c56882b373c034da35444646723fb873e74e7ee6c5d2f526c11c1b7bc1d0d0507e90d9464e4022858e8e0eeecb596fb3608d4389f6f6767e6535b49e2cc8abee41417c1d06017f02aed29429d23416ed0000000049454e44ae426082),
(44, 'TROQUEL 43', '0.47', 0x89504e470d0a1a0a0000000d494844520000003400000039080600000079e60835000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000718494441546843ed5a694c5457149ea44d9ab4894dfac7362eb48222e280a08e2da38022d46a6a8a08086e6810c2aaeca360540222fb6a01912d4d4005016baaecb258712058145029c65dd9555c40dcbede73cb220d4dc596599af9920393fbe6bd77be39cb3df7de23c0ff0c9cd09b376ff0f2e54b3e4078f5ea156eddba05a9548ab2b2b261292f2f97ab545454a0aeae0ed7af5f476f6fefa0b6a3c1091181fefe7e3e40686f6fc7c99327111c1c0c373737b8baba72717777979b6cdfbe1ddedede080d0d456e6e2e1a1b1bf1faf5eb418d4730cae5b2b3b3e1e9e989ad5bb7c2d7d717e1e1e15c0e1c38c0851e262f89888840545414ff91899c8b8b0bae5dbb36a8f908862df4e0c103787878402c16c3d4d414212121a8a9a9414b4b0b2e5fbecca5b9b9596e427a5cbd7a15a5a5a5080a0ac2a64d9b50585888a74f9fe2c58b179c0c8113eaecece4feb961c306585858c0cbcb8bbbdcc3870ff9971409f7eeddc3891327f80f4e96233dc9fd060606f875012584868606ee5a142f9999993cf0e8c6b17c54de20c5efdebd8bfafa7a383838709db3b2b2d0d3d3c3af0bc89c34b06bd72ee4e4e4e0d1a347fc8232c0c7c707b6b6b6d8bf7f3f27481e25a8aaaa425a5a1ab710b91dc592b280920465bec8c848100fcace020ab2949414c4c4c4f024a04c84121313111010c075a7798ac24470e6cc19a4a6a6223a3a1ad5d5d5c3bea80c3878f020fcfdfd111b1bcbbdebfefdfb10545656729723f3d1e7eeeeeec1af2b3ee2e3e3b173e74e4e88746f6b6b53115228a808293a5484141d2a428a0e852044d5fd7f55c5cb941029ddddd5858e8e0e5e4e3d79f2044fd862ec2c2baf0a4f9f469d548a07ffb2cc921921b24217235378ea1726a73809e979292f2003f7ee839fb70fc2d802ede7827c34378d2ccec60b9911ea7ddc8bdadaf3f0f6d8017f890471ac1a8e632f95f8f9619991310c0dc4f8d6c404f67676888b8e7aef77ca8410adf11b7ebb801f13e260bc580cf3d5abe1eee20ac76d0e586a6884d91ab3a0afab0ba19616e6cd9d0b1b4b4bb4b6b68eda467b57c884d08d1b3790763805b65696d09e35132bcdcce0686f0fdb75eba027d4c112661dcb3516cc5246d0d2980923b118b5d25a3c7efc78dcc9624209b5b38749d902313c643f56999962fae4c9f87abe3e245e5ec83b9e8be2a2226466642068df3eec7073e344f5844298182f456545253a59cc2914a17367cf223a2c14eb2dd742bc700134a64dc76291087bd88ab2e6dcaf7c797c93592f3e3606eb99f574e76861b6fa0c164bcb515e56ceafd376da783061844891c3494958b7c61cf3e76a43a8398bb9930616e9ebc3d9d11139c78ef13db536b6a22cc83b0e4f77372c65f1355f47085363231ccdce424bcb553c7ffe7cf089ef860923448aecf2f161965908b52f3ec75753a742535d1dda9a9a2c1118c2c17e1ba2222271a2a0000d172e202f3717fe7ebe58fddd0a2c592442487010aaab2a791c8d07134688264d7f892faccc7f8091c13758a0a787793a3a509b3205933efe041f7df0213e9bf429e6b3ec96cfc854575521353989bba7689e0ef606f8a3a2bc8c111a7b03feef3061849e3d7b86f4d4140407ee6529da093656563063f38ce68c1998ce48a94d9d0675b52fa1ab3d875b26fc40083c5c5db072b909961b2ec64f19e9b8cc26d8fefebec127be1b26d4e5ead8445a5652c4e321323c9ca76a3d36cf2c313080f5dab5b0dbb811d62cc6cc57ade4ae66c4c6c9dd6c9995eaeb6ad1d5d9c962717c73d18411a274dbd3d38d0e96a9aeb5fecedca71cd191913c353b393820393109c75962484e88c7f72bcc20d2672ea9ad8d1526cb1020f1e3f70e0c3ce725d378306184de06653cca66a52525d8b37b3732d3d3d178e91223db86e64b0df0f3f26093ae15d6b10ac1cfdb1b39478f0cde397ec884d010c86ae48a7f2d69fafa9efd597933e9efeb7baf9267083225240ba808293a5484141d2a428a0e152145c79884e8288f8e2489101dbc2a13a18484047e7a4f84868f2495f98c7588101d1a8f3a63254274344e9f95891011a19ea421ddb9cbd1517e4646066f35292e2e562a42d470e1ececcc1bab285c68b75670e7ce1d94b0529f585272a026a5f7dd9a9525a85aa726268944c20d429b3054dd0be80235ffd02099901afda8814191419b29d4d2437d0a142ee46e641d5a8bf1e6253a21a08d74ca16448c5cafa9a989370951a0298290275127e3952b57b8ae478e1ce18d801432b76fdf1ee9c6a23f642afa32756285858521303090b76ec5c5c521292909870e1de2929c9c2c17a177d3b4426d30d4d347dd9534ff9065c89bdeeec6e484c84a3448299c6e747272828d8d0dacadadb179f366dee1b865cb16d8d9d9c945e8dde6e6e6108944100a85303434e41d8d142ab4e3f4f65ec4a8164d3a39b879f3266a6b6b51545484fcfc7ce4e5e5f1fff216722f6a7f2b2828e05d8d172f5e1c651902111b45680874a18fadf7a9ff8cba1d8784024f5e42ba5068fc13c624a4bc00fe006e13a51a93f4c0710000000049454e44ae426082),
(45, 'TROQUEL 44', '0.68', 0x89504e470d0a1a0a0000000d494844520000002f0000005f080600000078059e6d000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000083049444154785eed9c7b5055d51ec74f4d7f5d67ba6558a6decab85d430313410c3c2a102902020a8292c823432479c9cb07d105021906901090870a9a909aa0988a859a0f0ebe0105f191824f8ca739a8a0c0f7aedfe2e080893613e76cf69dfd9d5973e0acb3f7faacdff9adb5d7d9bff5db323c43972e5dc2b163c7b07fff7e14161662dfbe7d2a2fbb77efe6af0a8502972f5fc6e3c78f95347dab17fcad5bb770f2e4496cdebc19ebd7af475a5a1ad6ae5dab96929a9aca5fa9cdacac2c9c3a750ab5b5b578f8f0213a3b3b9584bdf504fec183073870e00056ad5a85808000848787232626067171712a2ff1f1f158bd7a35ff7bc58a15f0f4f4446262220e1f3ecc3bf0e8d12325656fc9dadbdb71fffe7d54575763c3860d58b46811fcfdfd919090808c8c0c6cdab409d9d9d92a2dd4466e6e2e366edcc88de7e5e585c0c040feffd9b367b9f59f2519b90af975525212626363f9c96a6a6a70efde3db4b4b4f06f843aa7ca426d74b743ed36363662e7ce9ddc78dbb76fc7c58b1779079e1e0732aa205ff3f1f141646424779d81209a3476eddac5fd7febd6ad3872e408f78e9e92959595212222020e0e0e080d0de503762088be85d2d252a4a7a723242404d1d1d13878f0a0b2b64b321ad5cb962d83a5a5257fa5ce0c145dbb768d7b85939313dcddddb16ddb36650d70f7ee5dc8c8d2043d63c60cfe5a5e5eaeac165e376edce0f08e8e8e58b06001b66cd9a2ac012a2b2bbb2c4fee626d6d8de5cb97e3cc9933ca6ae175f5ea553eefbbbaba62f1e2c5c8cfcfe7ef777474202727479cf034bd6766668a179edc49b46e43ef8b169e2e6012bcaa24c10b25095e2849f0424982174a12bc5092e08592042f94febfe14f9f3e2d6ecbd3fd9a9933678a0ffec48913080a0a12273c4540962e5d0a2b2b2bf1c1979494c0cfcf8fdfab1425bcafaf2f2c2c2c24f8fe94042f94d406dfd1d9c9a3766dac50ec881ae8168522dbdb3bf088bddfd6d6a67cf7c5520b3c415314e3e8d1a3fc78fa9b0263dd6a6a6a42656505148a629428143cdedb505fcf3f575c5c8c2b57aef0cf3c1d30530b7c6b6b2b4a4a14485e93841df9793877ee1c1a1b9b94b5c0750659b0231fe96b53b1293b0b7bf6ecc1961f7e609f4f46e8ca5064a467f04e3437352b8fe8925ae06b6b6f33a80df8ca7311d2525378f4ba27fc71d646ccb711f0f15a8cf0b0307c1b19091767677c6a628a89130ce034771e32d3d351535da33ca24b2a8527ffbdc3c00f14fd8c207f5fccb1b54562423ccacacbd1d2729f7fe65a4d35b23233e1ea3417d6e6d3e1e5e1018f2fbf84819e1e86bea1018dd707c3582e474c74142acf55f4721d95c2d7d7d5e160d12f88fa6f18667c6a027b1b1ba4a624776d7c686fe765c7f61fe1cb1a363132c4544343b8318b2f7473c344bdf1786bf060bcc53a60636981c4f838949796f26072b728eeaa12f8c6c606fcb2af10013eded01fab83a1afbf06cf850b79e49a061fcd3035cc729fcfb1c368cd9118397c184c274f46a0bf3fbe66ed584e9b86f7860fc73b6f0f4380af37b6e5e6a0b2a28247ddbba512783af8f8b112a47c9788cf1d1c30564b0bc33534f0056b646376368fe55ea8aa42211b981666a6f8e09d11787fc4080eefe7ed8d886fbe81f3bc793064fe3e514f1fb1aba2b821c84d5a7bec3350093c592739e93b2c7475c167c6c618afad8d512347c2dac212816c859a1017cf7c3f01a1ec7782a97c12b4477d800f353519a81e66dbd8228cfdf8a112121884e5c121d8b3fb279c6753694343432f9f5709fccd9b37e1eee28249061360a03b0e46fafad0d3d181eed88f21373482199b453e33358519eb98c9242318eae962ece8d1bc035aff19c53b989b938343870ef199e8f6eddbb8f7c71f7c02e8b9b7a65f072c5985ac73f8d0afcce253b9b5b534dfc7781d6d8cfbe8230cd5188257ff3108ff1c3408c3de1c82d1ffd684c1b88fa1cf8a8ed6876c70be81575e7a197eacbdb3652f8eb4f73bfc9d3b77a0283e0abf255fc1d16e3666cdb482b99919268cd3c57b23fec52d2bffe413d85a59c279ae231c66d9c264b21cda0cfeed2143f026eb406c4c0c7e6333d28bd4aff014bc6d6e6e660d5fc24e7625fd9e5d2dd7b39384ad5c098be9d3a133660cec67db219c0dc87519e9c8ddfc3dd25252e0f1853bf498f5df6583565f5717bb0a0ad8345baf3c6bdfea5778f247b23ecdc53455d6fdfe3bff2668235d706020e6d8d961351ba8c7d94fcb1b6c5cd4d7d77100ba7a3ad8dbc164ea5478b28b14ad65da5a5fbc40eb57f8be441dc8cfcb6317a814b6c629e17b657aea0c5b2e24af5983e8a828bea679c8d6427f452a87a71351e94b7dedccfb2b52293c813d0ffcef4a2d6ea32a49f0424982174a12bc5092e08592042f942478a124c10b25095e28f5054f3702281d438257959ee7367cffbc18e1e9b73325a489129e444990a285a7209e68e149a285a71947b4f0742f5fdc96a7b465cac8a4f43a821f48b981dd611d1717179ea79b9797a7ace91287f7f6f686b9b9f98083bf7efd3a5fc33c177ec992254fe007526223a550533eac9b9b1b3c3c3cfe3cdb50a89df2aeedededf946390a140c04d17e86f3e7cff3350ca55507070763efdebdcada2ec9284c43e99974b99d3f7f3e8c8d8d515050d02b982b84a2a2a2f8be374a27a5750c75a4aeae4e59db2519ad1368e4d23740969f32650acf05a75d185555557c07873a4b4545052e5cb8c05d452e97f324dea2a222be187b3a50f1e4d10114a2a49c6bca7e27df0f0b0be38f10a083d559c8b7c988340ec99d29339f12ea9fa527f0d433da3340d9bff4fc0167676718191941535353ad454b4b8b5b7cddba75fcb101e42a7ded8e7ae6e3326860d0431b287599fc4e9dc5c6c6865f94688f734f91cbf4e9366294042f8c80ff01afe3f7b0a3fb38700000000049454e44ae426082),
(46, 'TROQUEL 45', '0.49', 0x89504e470d0a1a0a0000000d494844520000002500000053080600000018e5cedf000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000751494441546843ed9a794c545714c6e79fd6a6b6710111444554dc009111649d4255a0422150d914aa2c051457aa124c0123b8a31077364113d722ab98aa0534261863546453513480e2be01aea87cbde732830a34798127b6c9fb929319debcb9eff7eeb9f732f7bc4f86ffa0fe1f502d2d2d686868c0bd7bf7505f5fffd9e2c1830778f9f2a5f2aaadd755a90d8a0edebd7b1767cf9ec5fefdfb91909080356bd620363616ab56adc2ead5ab4509557b5bb66c41666626877bf3e68d92a2556d50d43b3b76ece05f5cbb762de2e2e2b06edd3afe37c18915d4f6faf5eb79bbcb972fc79e3d7b70fdfa752545abdaa02e5fbe0c171717787979f12f1f3c7810595959c8c8c8c0e1c387f9ab1891939383bcbc3c242525c1dfdf1fbebebec8cdcd5552b44af6ecd933d4d6d6f20f9c9c9c3077ee5cecdbb70f172f5ec4952b57505959296a545555a1baba1a454545888a8a82b3b3334f674d4d0d9a9b9b5ba1e844ba03ead20d1b36203b3b9b7ff9d1a3473ca514042e56343535e1f9f3e7b87dfb364e9d3a85888808040505f1eb3e7dfab4158a06b5abab2b1c1c1cf0e4c9137eb02775eedc3984858561e5ca953c3b8d8d8d90a5a6a6c2d6d616e6e6e6fc4e7a5aa5a5a57c5251a64e9f3e8dfbf7ef43969898080b0b0bc8e5f2b6eeeb495554548018e2e3e3515050c0d32aa359606969c9a1be44facacbcbb173e74e0e555858c81756594a4a0a140a054c4d4df1f8f163e5a93d274adfb66ddb38d4c9932771e7ce1d09aa53495042254109950425541294504950422541099504255412945049504225410995e850af5fbf4643c3335e5f7af7ee1d5ebd7ac5f78e0fd82e97ea4eaa57aa4bd0ee9bce692fd1a008822a3229498958342f1467cf14f39d6d7ede11040706e2070b73d8dbdae247d6aedde4c9f072f740546424eaeaea942d7c90685054e44a4f4b83b7873bcce4c63871fc186edca8c6eeb474d85859e3fb6f7a6160bfbee8f36d6fa8f7ed8bb1a34663a6b737ae5dbba66ce1834481a2346466646096af2f74070fc6600d0d1c3d7204951515484e4c82b5b9057a7fdd0b031854dfdedf61a09a3a8cf40de13f7b36af4bb557b7a1684c9c292e46c4b265303230c0573219eb893ed8bf772f4e15152161e326d8585bb363fd3042470763f546b1545a62b68f2fe2d96754536daf6e41bd7bfb16e5a597e0eee28cf163c660e8a041ac37fa41477b10162d5880e83f22f19b9f1f26191b43534d0d06ec9c9feded111d118efc9c2cd4d5d4883fd0eb6a6b919df1274c0cf4314c4b8ba74e475b9bf7c8af3367626e4808bca64f87e98409d061c006a347638ab515e60705223d390925172ef0d9da5e5d86a23b3c76f42856b21934565787416962248319317428460e1b06576767f8cc98c15fadcc26416e68c0e14cc61bc2de468179c141484f4dedb4d4d465281adc2b1890039bde4334d4a1a33910a318cc285d5de8b1505859c1c1ce0e0e53a7b2980277575778b8b9c15c3e11fa7a7ab0653372d99225bcf6d45e5d86a2f5c5c3ed170c1f3214daea6ad01da4c5a074307ab82e071bc752259f600485a505dc5c5cb064f1622c0f0f87a39d3dc631a8497239e687ce136f9da24715b42e6ddc1087e8c8282c0b0b838ba32307a299a7d1bf3fb435066288a6264630e8f1fafa6cc19c0a0fd65b53accce0a0b0c0eff342909b9dc98bacedd525282a2fd38917d8402db97489adda793c15662626d01ca00e6d4d2d589898b214594161660e5363390333849cc129e48608f074c5eec42db879bd4abcd9473d45b5f4172f5ee07d4b0b6edebc8994e464b69a7bc2d8c8082613e4085bb0106b636311b3620516b03439fe340dc60cca69b20d622296e274c15f78f9bc49d9e2a7ea1214dddd5bb646a94415e482bf0bb066d56a04b07529d0cf9fa5260795e5e5a860515458c816ca8df0f1f2c2d2850bb16fcf6e5ca92843f39b8ecb01a9cb03fd63d1d3aec6c626d4dfaee78f34aaae5efd049a44b395feed5457df60bf101eb35f0faf792f772651a05422388af7efdf2b8f7c2a3afef133bc7f93a850624982122a094aa82428a192a0844a82122a094aa82428a192a0844a82122a094aa83a854a661b4b6b6b6b98b01def97802a2b2bc3f6eddb3b4259b12d37417d29ff94aaa7c812c7a1c8bb4486ae89132776b036f6844a4a4ab079f3666c64bb6a82a212a42c3d3d1d7676767c5c51cda0a745f637729a111439cda8ee2e3b7efc38c2c3c3316bd62cd07b2a6074561df95c2a2e2e464c4c0c4fdff9f3e7f91092918d91ca3d0444e32a3030903bbea81bc91ff7f0e1431efc094237e3e376a86dba063927098afc9ff46482b6fa6de653ca2d1906a74d9bc69daa9467b2a5517a29d2d2d2ba1daa7676edda059a6034c0376ddac43d79648353156a65942aaab09123363a3a9aa7d1cdcd8dbb633d3d3d79cf51040404743b54edf8f9f9c1c7c7071e1e1edc4b7ce2c409eeff5415446434e3687dba75eb161ffd5bb76e45686828bcbdbd3920396429e6cc99234a8484842038389803924d977aaf8377987a8aaa7534aec8ee4d69cccfcfe7565d8a43870e8916e4473e70e0000f7a4f2e6b72df522f7dac0e7ef42f2fe01f700f1a3cbedc6ca40000000049454e44ae426082),
(47, 'TROQUEL 45B', '0.71', 0x89504e470d0a1a0a0000000d494844520000005b0000002e080600000047d965eb000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000009c149444154785eed9b895bcd691bc7fd05e61d66184ba4284596f6440b15e9458bb450d98b11a6bd6409292fa66d2a69d1de3b44a98c4ea5a1b2e4d5a2728957a86c9588166bbeeffd3cd7c994e5654c755d673adfebbaafcef9fdcef9fdcef9749ffbb9efe7b99f41e8a6b6b636fcf7c60d646464c0dfcf0f1bd6ff8835abd7c077d72eecf5f7e7e6ef37b0ad8bc19eddbe707371c1522b6b989998f2e782ec6cdcbf7f5f48f343f5805d7dad1a61a1a170dce008672727840487203929193902014ee7e571cbcb1dd8d6c52037270727d2d2117b381611070fc276a90d87cf587576be1112eda977b05fbc7881f4e3695867ef80258bcde1bb7b374a4b4bd1d2d2c23d5e6c1fdab367cfd0f2e4091e3d7a84d52b57c16a890582838270fbd62db4b7b70bc9fe210e9bbdf164661636396e447858184a4b4af1f0e143bc7dfb96bf48accfebceeddbc8c916c0cf770fdc5ddd104a11e27d7e835ebd7a85070f1ed0cfe130366fdcc47f061033fe2addbb770f07c3c2b196c6392f0f4f343535e1c5f3e7c2b304bbb5b515d7af5fc7e1e8181ee48b2f160b4f89f567f5b8f9318efe7a041e6eeed8e2e985caca4a3ad62c3c4bb059bc29292941427c3ca223a3505e568eb79d62d7fe1a35353621579083e0c020f8eff1c3b9a2223ca4a8d1a5412c365fbc781189f1093cf3a8aaac42e79b4ee169b1fe8c98e3169e2d404c74340d94c11fc26679e1c50b177ac07ef3e6e3a98b58ff5f0cf6b9a27348484c44745434cacbcbe95893f06c37d82c8c2427268961ff05bd839d9080281692df87cd3291620a230c765242222a2b2ac5b0bf520c76516111e28965e4a1489495958961f795c4b0fb517f0bd8ac127bfdfa35ff5cec716767277fcea6185e92b1bf5df6f2e5cb77c60ab6aef7f487441e36037b9f2ab3d292cba8a9b989c78f9bd140e96a795929b2324ee0b7ac4cfe373d2d8d4f39e49fce273bcd278a0ace9c41c595723cb87f4f78b5be95c8c36e6b6f474e763682020e10cc0c54575f23f02588080f839d952556d9dac0ceda0a968bcdb1c2d60e2e4ece70757282e3baf570777146584810f204027e9dbe96c8c36e6c6cc4766f6fd85a5b223c3404978a8b91979b0be79f36436ad448c8498f83b4c4688cfc7e1864a4a4a13d731674c894a64e83868a0a2ccc4cb16dcb169edeb234978597be92c8c266f1f6e9d3a7c8484f87f4580968284dc7562f0f1c4f4d455c6c1c9693170f1d3c186346fc800992929824230b352525e8ebea40534d0df2b2b2f43e49c84a8f87bc8c0c79be1962220fe1deddbbc23bf4be4416765d6d2dfdfcb3e1edee8651df7d0b6585497058bd12fbf7eec5ce1d3e3059648c2183bf81e4e8d150270f3659b8102b6c6cb062d952e8eb6893572b434359195a1a1a509d3e0d063a3a08d8b70fb577ee08efd0fb1259d8a77304d8eae106435d6dc8488c80ca94c9305bb410ebd6da63a5dd72e86a6963e837ffe0de6b307b0ed63bd863aba707dc28bc2c986b007d6d2d1819e8c19cdef34f833998377b36f6f9fba3e6e64de11d7a5fa2079bd2b467143e7e090cc0224303c8498ec1646949a84e53c07c8267616e8e450b1642554911c3870c81ac941479b20e562db7833b0d8c0cb689d17ccc9e3913b367cd84a1de1c7a3c0373b4b4b0cbc787b2930a1ea2fa4222079b2d275dadaa82e3da35d0509c86712386434e6a1c54a72a60ee1c5d98191bc3c8703e541415f971e6f1b3d454a047a183793ecb4e1619ce832a9d579093c3f4c993299e4f80bab20adc5c5d5170b6808f057d219181fd8ab204f659d84a119b7c1f3d7c187e18f22d460ffb9ebc771ca610b0e9f27250575286819e1eac2d2db1d7773776efd84671da1a6a1497e5c74b434b5d0d736990d425af5e4aafd94a9908833c43550d36d6d6883b1c8b1b376ee079b71594de92c8c0ee208f662b464989897c59693c65187213c663b2ac0c268c1d0b99316378aac7320f4d7575d82db3a15c3b1c3fefdf0f7b1a3835555508b614652d8a143634298eeb62d386f5888c8840485010c156a58c643162a2a270bdbafaa30bb27f5522039bc5e9ca8a0aa42425c1d3dd03164b96c0cac2020b0c0d2139722424860fc708f2f411df0dc5a489b230343080b3b3331cec1d60346f2e14e8d8442949cc5056e4de3d83e0b31cdb93b299cd8e8e50909787155d33253919757575bcb4ef6d890ceca72d2db87eed1af2f3f2389038f6812323e1e5ee0e290909488e1a451e3e86420ae5d4e4edd3a74cc1cc199ad0a0f03065923c264a4b5121a3c03310966b2b4e9dcae3b6beae2eb4353529c62b11f48dbcef83c56c360dd0db129d984d19427b5b1b07c1ec05c5f0567a5e54580863caa1cdcdcc7813cc5ebf3de4adee94572fa0e24515e626c67058b31aaece4ef0dde983e08000f86cdf8e8d1b1c792fc78f0eeba882f4e663c135fa67b23e98be92c8c0fe946ed5dce28ba707f61f40daf1340e3f2b33938a1b7f78baba20343810bfa62423f3c4090ef4f7fc7c9ca0aa93fd3a12e213907a34158505857d5aa67749e461b73e6bc5f973e7505c5c8c1a02dfd4d8845aaa2e8b2f5c407e6e2eca4a2ee3266517b5b57770b7be1e77a91c67850b1b6c593b5d4d4d0d87d01f1279d86c2e9a650e1d1d1d3cd474cd657774b4a3adb595a770ec383bd665ec79f739edce7e6acd1079d8a22431ec7e9418763feab3b0c57d23bd2706bbab6f84c1662dd73d60b3cecb0be7cf73d829c92904fbaa18f657ea517333654ee791989848b0a3780f655353a3f02cc166cb4effb974090971f1bc8b9e4d41f645753510d44c9e5d505080d8d858eed955555578f2e4b1f02cc16615d595f22bbcd72f3c340c25972f8b617fa51a1a1a70ead429fc1212c23715dca47c9fb564776910cb53d9413638eef5f3e305447ff559fcdd545f5787989818b8bab8c0cfd797c3ef3ee13588c5e786870d387ae408b6797bf37e8beeddf2627db9d8a287cff61d586c6acae7715831d67dfc7bb7a78635b6ecdcb103893492565cb942b1e689389c7ca118d046f2e29359597c026cb189297c88e5fb11e2dd6e31f65fc8a678c3e6921dd6ac45504000ca294f6461a67b292cb63f8c4d07b00c84b5067b7b79c179f34fd8ffaf7dc815087877c0fbeab10f922d171d3a1801775757eee52c43c9ccc8e02186cd9eb1162f36a396ce2c6d601afbfec78f1de37b678ea5a6e2183d4e4949c12e9f9d08fc39803b2c6b8ffb987ac06623e7d5aaabf8ede44944841fe4f167bdbd03dfc1caf646da2c5d063b1b5bd8dad8c066d9c0343bfaee6cbfa3a9b109ac2dad78d860de2cc816f048c09a803e55a7f480dd25b6c3e9ecef67f845588fc63c7d0318cd33a41b1853f037e3f0d9cd06a2b178bcc0c80873f5f4f9a2065b9c60691eab1e3fa78fc266aaafafe783661c25e841818108090ae65badc3c3c2f9c5c328271f88c6be7b48703002694c633cfe4d5537dba8f425fa246cb17a5bc0ff002ac5165f8edd37d90000000049454e44ae426082),
(48, 'TROQUEL 46', '0.89', 0x89504e470d0a1a0a0000000d494844520000004c000000490806000000975ac098000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000086a49444154785eed9cf95314491ec5f79fd8082366231615c5d19911774046201075c6755c18700851c001f14005560474e4525404e53e5c055d870559403cf1004507e534501417451450bc35b8c15b04dfd6cbed569023ac1fdaedb6eb456450d15914951fbe99f9adceacf7070ca29e9e1ebc78f1028f1e3dc2850b17b06edd3ab8baba62f6ecd998316306acadad316dda3471ac4b65faf4e9e2de793c6bd62c383a3a223e3e1ec78f1fc7f5ebd7d1d9d989376fdea8280cae01c05ebe7c89eaea6a1c3d7a147bf6ecc1ce9d3b111c1c0c6f6f6fb8bbbbc3c5c505cececea2f058d78afabedddcdcb07cf97284878723292949b43333331367cf9e5591185c0380ddbe7d1ba9a9a9f0f1f1c1d2a54b111818282e74e4c811e4e5e589ffc6e7528e1d3b268262ebd6ad58b46811e6ce9d8ba0a020bc7dfb564563a0fa01e389870f1fc6c68d1be1e1e18165cb96898bd5d4d4a0bdbd1ddddddd2264d9655978ac6b457ddf6ccbd3a74fc590c30061d4999a9a0a68fc7c2868ef80f10442717272c2eeddbb71fffe7d3c79f2448c65bdbdbdaab33e3fb16d5d5d5d282b2b434a4a8ae8a2274e9c404343035ebd7aa53aebbd0430c2e2d8d5d8d828fa36bb9fbea9b5b5558cdd191919888888407e7e3edadada54b5ef2580313c9b9a9a70fefc796cdebc59d0d637b1ab3e7bf60c274f9e14190167cfbaba3a55ed7b09603cf1dab56bc8cdcd454e4e8e98623fe76e389cce9d3b071b1b1bf8f9f9a1b0b05044d9ebd7af55b52a60fcb0a8a8484cad25252578f8f0a1a8d447555555c1c1c1414c7ae9e9e9229038c6a925801110236bc3860d62b0e32ca1af62fbc981b9e7ae5dbbc4f0c4f14dad77c0b2b3b3b17efd7af10beca2fa2ae6a1090909888e8e16f967656565bfc17f5060fa1c61f7eedd437272b2c8fef7eddb874b972e89744bad01c0eaebebf51ed8f6eddb9198982886a92181edddbb17a1a1a17a0feceeddbbd8b66d9b482bc8e4e2c58b0ab0e1a400932905984c29c0644a0126530a30995280c994024ca6146032a500932905984c29c0644a0126533a078cab81c32da46a5a3a03ec7a6d2deaebeac4d7c1fd8071bdb4ad0d0df575b8219df3a6bb5b55a119e904302e98ee4c4e46467a3a6aae5e557dfa3f7576b4a3f27c05b232f6e0dfe9691afffa5cab81712db0a3a30355972ee1172727ac5dbd1ac54545aa5aa0b5a505e7cacb90bc2d0901fe7e08df182a01ec50d56a465a0d8c8d2f2f2b455c7414be333181c7a2c5283cfdbbaa16b850518198c8482c717395ca2f888ad88c8e3e37af096925b0b7bdbde8ececc0d9c2dfe1efb3125f1b8d81a1c19fa508f347f57faac5b685ab35357099e7086b7333ccb7ff093b12e2515d5525f67b70a55e53138356027bd2d585ab57aa91bafb9f58e8e28cf186a3314e2ac1016b71598272e7ce1db10dc978fc384c35fb163ecb16e34076266e4af7c6455502d5d4cabc5602bbd5d0809cec2c04ae598d793fcf81c564534c9c30012bbdbd7024371727f2f31124c13318f147589a18c3c36d011263a371bae0d4bb5d827a1561a74f9e44f0da5fe1686f8739b636b0fbdb6c98181bc3618e3dd6878420222c0c8b5d17e09b3106b09080cd9c6685b9f6f608090cc2e3c78f5557d18cb40ed8a953a760656e8e917ffa02a3a46232f11b4cb7b2c2d7e3c763ece8d1f872ec587c356e9ce88ebede2b1019110e1f6f6f584e3197a2f02b644a5d95f9da330ddda3d6014bfded3709c89798603456c032fbf62f309d640cc3912331cac0004686863092c0198d3240e0af6b909ef62fc4c7c4c0f16707e9bc49026069498948663521ad0376f0e0412c5ee80eef15cbb1d2d3130be6cfc7544b4b7c316204c648a0a64c36c3540b0b4c9e34116e0b5c10ba2e04ab7d7d61f7e38f62ac8b8c88404971b1fe00e3f5999c969596e2445e3efe919824008e19351ae6df4d81bbdb42f8aefc3bdc9ce7495dd502b37ef81edf5b5b63ea1433d8fef507646664883db79acaf8b50e58df74a0a5b905a5c525888b8d859dad2dbc56782225390507f7e548d97d8200c468b3b6b480c34f3608f0f3159b789b9a9ad12dcd949a90d601eb2beeece3acc74d6b7c3cbaddd82812533e607749e943a9d4f5f2f3f25020cdaa9512283646d33b23b51a18f32976ad76e911897fb3e783a8696d6915f746a84c58f9eca969693530269f8c98a140f4f6f4bedb5fffa9be23d36a60da2805984c29c0644a0126530a30995280c994024ca6146032a500932905984c29c0644a0126530a30995280c994024ca63e0ad883070fc4cb94212121b875eb169e3f7f2e2af551b49fe0fb927cc9944c681c30e0055302cbcaca121e3b376fded4eb3772d5ef4b32c2f80ee9a06fe4f22be043870e09930b3a0af47d295cdfc480d9b2650b62636385cb0279709d412d018c04cf9c39831d3b76a0a2a24278587caaaf84b54d34fb58b56a95b0d0a1d302590cb0616017e45a1f8972d70ca9eaab684341ff9d4d9b36e1f2e5cb0256dfe011c0f801f75c71b69c3973a6f0de21447d8a32b6957e69696969c25b2c3232528c671f4a00538bc644767676f0f2f212532a4d2f3ec5d2d6ff5b0c166607b4c70a0b0b83bfbf3f0e1c38d06fb057ab1f30526628dadada0a7710ce148cbacf5d6c230d9ad8765ac8d06c8e76147dc72eb5fa01a338f8d368cdcaca0a4b962cc1fefdfb45a4718cabadad15e39b2e971b376e889f57ae5c1149697979b9305fa34f05f3500ef6ec9a43adb00f00c6148390d6ac59232cfc088fd469c2c68b45454509d710161eeb52898989415c5c9c38261cda147a7a7a0adb18d6d10a8b967ec36d4718004c2d0efa050505c287861725c08080006179c7c23fa23ed695c27b2628da143275a0039fafafaf485499d10f66b0f6a18604463537378b8d22c5c5c52227617765a14d94fa58970aef5b5dd81e1a11317560b2caf7053e46c302538b21ca1994192f9f02b831973f75adf0be0986c71f134d83e9a38029520bf82f7895dcea1bbe9c7d0000000049454e44ae426082);
INSERT INTO `troquel` (`Id_troquel`, `Nombre_troquel`, `DCM`, `Img_troquel`) VALUES
(49, 'TROQUEL 47', '3.56', 0x89504e470d0a1a0a0000000d4948445200000088000000970806000000ce3a131c000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000e2e49444154785eed9d895b8d691fc7fb43e6ba66cc6b66309656c9565209a568112ddac812a92c2159ca9654d62c31244c66de32c60863b2644b482aeb50320683646f0cf37d9fdf3da7dece719e5be67de75dcefdfb5cd75775dc9d96e7d3ef5e9ee73cb7d5ebd7afd1d0d080dada5ad4d4d4b429d5d5d56d4e5555559b73e1c28577a6b2b2f2bd73fefc79692a2a2a5a62fa71eb9c3b77aecd397bf6ec3b73e6cc19dd9497979bcde9d3a7df2b656565463975ea94515aff5f6969298e1d3b267e56f2a1b1b11156cf9e3d130f2e5fbe1c0909099831630666cd9a253273e64c91e68fdf95e4e464a3cc9e3dbbcd4949496973e6cc99d3e6cc9d3bf7adcc9b37efbd327ffefc36253535f54f272d2dadcd59b060c17b65e1c285d22c5ebc184b962c11c79f92999989929212dcb97307560f1e3cc0faf5ebe1eeee8e0e1d3ac0d9d9196e6e6ee8dfbf3f5c5d5d45e87dd3501bfa9cd6f1f0f030ca8001038ce2e9e96994810307b664d0a041183c78f03be3eded8d21438648e3e3e3d3125f5f5f0c1d3ad428c3860dd38d9f9f9f88bfbf7f4b020202cc263030b025c3870f475050906e468c186194912347223838b82521212166131a1a6a94b0b0308c1a354a37e1e1e146898888406464a46ea2a2a23066cc18c4c4c4a057af5eb0b3b313dfdf962d5b505757072bb284fe4adab56b876eddba896f803e89d2fa494c131d1d8dd1a3471b85be9069e80b3767ecd8b14619376e9c51c68f1f6f94091326bc95d8d8584c9c38d12893264d324a5c5c9c51264f9e6c94f8f878a334ffe5b44e6262624ba64c99223275ea54dd4c9b360dd3a74f6f4952529251a8329ba6b9429babd2a6d5b839a6d5d65cd56c1dd38a69aef2355719fa23efdcb933bcbcbc909393831f7ffc1156b76fdf169f686f6f8f2fbffc128cba1416160ab949f61d3b76180bd2bd7b77ecdebddbd0945191e2e26251a1a8a251b11082fcfcf3cfa2cc500529282830346554a4a8a848748754455a2a486b41b66ddb069af6326af2f5d75f8beec5a88b21419ac7202c88da4805a1e94d7e7e3e0ba2302c08234557109a2bdbdada62ebd6adf8edb7df0ccd19d5900a626363c382280e0bc248910a626d6dcd82288eae20b4664fe761f2f2f2581085614118296605a1b3b92448d7ae5d5910c561411829ba82d075055dba74111789b020eac28230527405a16b00e84a2216446d5810468a5490cf3fff1c9b376f664114462a48a74e9d5810c5312b082d94d1d5d21d3b76644114870561a4b0208c14a9203c0661a483549ec5302c0823452a082f94315241f85c0ca32b089fac6308168491a22b085f30c4102c0823452a085db4cc5d8cda4805a1d7c5b0206aa32b48f32bebb88b511b168491a22b08ddfe815fddcf9815e4eeddbbe21654747f1012e4d5ab5786e68c6ab0208c145d41e856d02c082315846e62c782a88d54100707071644715810468aae20b4c504dd8a9b04f9f5d75f0dcd19d5900ae2e8e8c882280e0bc248d11584f60be9d1a387b8912e0ba22eba82d066322c082315c4c9c98905511ca9203d7bf61482343535199a33aac1823052740559b46891d8f19005511b1684916256907bf7ee898d757bf7ee2d0479f9f2a5a139a31a2c0823452a489f3e7dc49e752c88bab0208c145d416863ffbe7dfb7217a3382c0823455790f4f474b8b8b87017a338ba822c5dba14fdfaf5634114a74d82bc78f1c2d05c4d7efffd77a3b4c6f4634b830531031df47b77ef826e07fad3ad5bb872e532ca4f9fc6e953a75055791e976aaa71b9a606972fd6e056fd4d343e6ab4d8cda75910333c7bf60c478f1cc6a19212941c3c881ddbb761615a1ae626276365562672d7acc1869c35c85d9b83eff7efc3b5ab572df6748459417ef9e517646464c0d5d55508f2fcf9734373cb862ac7e3278d3875e23826c68c46d2d4446468b3b9c4f804f476ea858f3ff8003d6c6dd0bb7b77f4b0b783b3931316cd9f87d2c387f1f4e953c3b358165241faf7efaf9420cf9e3d45d5854ae4aecb81ef400fc4c68cc1f2cc2ca42f49476870089c7bf6849b735f38d8d8a043fbf6b0edda15abb2b370a6ac0c2f2cf477a42bc8b265cbe0e6e686eddbb72b2348bd369ed8969f87e8f030f4ede1808963c7625bde56ecdd5b8c4d1b372175ee5cc44f9a080fadb27ef6b7f670b4b343f19e3da8bb71c362afba63410cbcd20ef091c387302d31018e5a37d253eb42a64c9e8ce2bd7b71f3663d6e6983d5e3a5a558af8d3d4606066a6d6ce1e3e5859b7575a27abc79f3c6f04c96050ba2d1f0f0212a2b2ab0421b80fafb0cc1a71f7d889e0ef6981a1f8fef0f1cc00bc33a504d753556af5c8111fefef0d4ba5faa26963a7b69462a88bbbbbb1883d0a8de12a16ea1e16103d668073d24d01fbdb4aae164630d47eb6ee86e6d0d5fad42cc4d99a3559623b8ffe081f67e8a365875425f6d2c923c23499be17c6f7826cb452a88878787450b72fffe7d9c38761c51a1c1e865d70d1db5cad1e593f6b0eed4099d3ffb0cf69a247ebe439195b10c870f1d42744404ba75ee8c218307233f6f0b7eaaaf373c93e5a22b486666a61084ba184b15a45e3bc05f15ec84bfb717dcfb38a1b79dada81e369a049f7cd40e7ffbf0236dc6628ba851e19a2419181110807e7dfb20411b9b949d3aa9c4adb9941684069e458585888f8dc5e4f1633136320241fe7e707371c1a7ed3e467b4d109b2e5d31c8630022c3c21038d417e121c1589793835b0a540f425790acac2c0c1830400862a98b404d2f9b40abc675b575a8bd518beaea1a1cd8bf1fcb962e85a76b7f6dc0ea8398e8d1080e0a8273af5e9834611cfefed54edcb87e5d991398ba82646767c3d3d3d3a20579f3fa8d18a83635fd91c74f9ee0dab56ba2aa446bdd4a625c1c162f588829f109f01e38100b52e7e34cf9693cd72aaaa54e6b4d515a105368a9bdb1f131ce9d3b87eccc2c6ccacdc5aec222f1765652127616148893772aa12bc8f2e5cb3150fbab514910822a03fdfc278f9f408526ca952b5770eeec59ecdfb74feb82aa9559556e462ac8a04183941384a0d909fdcc24038d356890fee8d1237156dbd2afff30c5ac20b43e40820cd6e6fb24c813ad6f66d4840561a4e80ab262c50a168461411839ba82ac5cb9125e5e5e2c88e24805f1f6f616823c7efcd8d09c510da92043860c614114870561a4e80ab26ad52af8f8f808411a1b1b0dcd19d5900ae2ebeb2b04a15544464d740559bd7a35860e1dca82280e0bc248d11564cd9a352c08c3823072cc0af2e0c10321c8b061c384200d0d0d86e68c6a4805f1f3f36341144757909c9c1cf8fbfbb3208ac3823052740559bb762d0202025810c561411829524102030385200f1f3e3434675443579075ebd6b1208cbe20ebd7afc7f0e1c38520f431a32652418282825810c5614118292c08234557900d1b3660c4881142103a79c7a8895490912347b2208a6356109ad6e6e6e62238385808422fe666d4840561a4b0208c14168491a22bc8c68d1b111212c282288e5490d0d05071235dba1320a3262c0823452a485858180ba238ba826cdab409a3468d12631016445d7405f9e28b2f101e1e2e04b97bf7aea139a31a2c0823455790cd9b370b41680c72e7ce1d437346355810468a5941e82af62d5bb62032325208421b0c336ac2823052a48244454589412a0ba22e2c0823a5a8a8083367cec48c1933842057af5efd4390bcbc3c4447478b2ee6f6eddb86e68c6aecdab50bb366cd12929020b43d4acb4a2a2db5d3837c36575de86686749f183ab34f2ed0e5a8461584bb18b5993f7f3e9c9c9cc46dd977eedc29b670b3a21be77ef3cd37a2df21512e5dba2436d551659f36e69f242727c3c1c1410842dd0d61453b2d959595892bdbe945dc070f1e445d5d1d5ebd7a251a30ea909a9a2ab6a68b8888c0810307c4635624c2cd9b3771e8d0212c58b040dc8eead8b163caedd7a632d45bd0b66cb403fbb871e34457434583b0a27f686f36babb212d96d1abfce98e437cda5f1d68dcb977ef5e2c59b2045bb76ec5c993275b262b42108236f7a3d242f76ca79db869a76a460d68dcb978f1624c9f3e1dfbf7ef174b1db4a923d12208410de8c2a1a54b97a2b2b252991da755872ac6983163101b1b2bba169abd344f528c04a1f590d9b3678b3e88a639b492c6582e24018d35a96a5061484a4a12d5a4354682d0a2d9f1e3c7c5fe31292929a2aba1190d6f536679901c376edc407171b1187352af419313d33b6d1b094283551ab01c3d7a542c9ad1bc9824292f2f37b4602c059ab51c3e7c588841c5807a0f3af64d4d4d86167f602408418355da5488d6e1d3d2d2c46e9874d53b3da16a3b515b2a748c2f5ebc28662cd4adcc9933077bf6ec118f9b1ee3b70469864a0d89e1e2e2224eff969696f2d5661600fdf1d7d4d4885573ea1da882506f5155556568618c5941c824ba4f48494909e2e2e244686fdd23478ef002daff3174ec2e5cb880828202317cc8cecec6be7dfbc458446fafc2b704a11243d31c3a1f43a9adad15cbef645b4c4c8cb813515656167ef8e1077141096f82f8bf0bad92d39a46464686387674c63e3131516cc54f4be9972f5f7ee75286d90a429234f74534daa56a422b6d93264d82b3b333264c9820ee6b468fd11cbababa1ad7ae5d1326d2aca7bebe5e8416db9adfe7fc75a1df73f3ef9a8ec1f5ebd7c518b2a2a242f4022487abab2bdcdddd91909080c2c242d1d5504ff12e74c720a650b5c8cfcf171793344f81a992d00a1c7d4c8b6cf47fb486428f51df46e6d25bce5f1bfa3dd37994f4f474d175d0453f34f05cb870a1789c1ea3ca418fd131d41b6f98a3cd825029a2691095a5efbefb4ebcd88a6639b402e7e9e9097b7b7b71aab85fbf7ee28c20ede44dcbf6f496f3d7867ecfb46b299da6777474147173731317fed0651c74bc68a982163ee918d2d0a1adb45990d6d05c995e8147658cbe308d47689a44d710d0b525bb77ef166f39ff9d7cfbedb7628c71e2c409d1fd9bae6dbc0f7f4a103d68dc42fd1a7d433462e6fc674327d84cd731fe55fead823096070bc24800fe0147949b1b6d044a680000000049454e44ae426082),
(50, 'TROQUEL 48', '4.44', 0x89504e470d0a1a0a0000000d49484452000000aa0000009308060000001e0382e7000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa864000008a849444154785eedda7b4cd5e71dc771b72626eb96ed9f39aaabce4ba1ad17c049ddba382f1514e5264ab5d5661b159516a76b41141c45404054b006ab551463a5a932da058705193678e322b3834263042a221454444ae4760e97cf9edfb31f2e5abbb529e774dfe4f34abe1ef971387fc03bcfef794eceb0969616141515e1ecd9b3fab1b4b4142525251c8edda6b8b818172e5cc0f9f3e7758335353530bab45aad1834acb2b21261616158bf7e3da2a3a3919494a4273131110909091c8e4dc7682d3e3e1e919191080d0d455454144e9f3e8dbaba3a7477779b99aa508d8bcecece70757545404000828383b166cd1aac5ab50a4141411c8e4dc7682d303010bebebe98356b163c3d3d71f4e851545555a1a3a3c3cc54859a9d9d0d0707071d6b4848c8bd9574ebd6ad888b8be3706c3a466b5bb66cd1c11ab17a797961dfbe7d282b2b437b7bbb99a90af5e4c993707777474c4c0ceaebebcdcb44f6d5d4d484c2c242a4a7a7e3f0e1c37abf7ae7ce1df3bb66a8c672bb6ddb36dcba75cbbc4c645f6d6d6dfa209f9191f1d5a17a7878203636962b2a7d671e5c518d7701be14aa71eb37f60957af5e352f13d94f7f7f3fae5fbfae4ffb070f1e64a8f4ff89a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230543b1b181830ff47df0443b593bebe3e747777c36aed35afd037c1506daca7a7076d6d6d686a6a424343033a3b3bd5aada0f8be5dfd75b5b5b75c45c67ff3b866a63cd2ad0b28ba528f87b3ece1416a2abe32efaad3db87eed2af2f37271f49d7770baa0001515153ae6aeae2efd47a1fb31541bb25a2db8585284b4b7f7627b623c0e1d4c43ebad66b4de68c447a74e62f3c60df059b810ab835621253945c55ca0fe180d6a8bd063be020d62a83662b55850909f8f4d61a1f09ae78ee717f9213e2e1607f6bd85c8f0300407bd8c15cb9662d68cdfc2e1a7233065e244040506e2d8bbefea3f08dd8fa1da48fb175f2039691bfc162cc0f4a9ae58ba7831de4c49c1a6f00df0f47057e381dfbff41256bcf0221cc78ec3d38e8e787eb13ff6efdd8b9ada1af355681043b591cf1b1bf187e5cb31c9f1093c3561bc0af2051c4a4b43447838663cfb6bfcd2c5050be6cd839fb737dc9ca7e037cfb8a97057205d6d0f3efbacd67c151ac4506da0a3a30325c5c598377b26c6388c80d3b8b1ea36bf0c6fabd532e68d2878ce7d0ece139fc65415e8336ab59d39dd0d3ef3e7e1f5f5eb9079fc386ffd0fc15087d8eddbb751545484b75253e1316b06263d311e539e74d287a68d6161f8e3abafe850a7a948a74e9e04d7491331c36d1a7c3de763c36b7fc2fb7fc9d46f63d1fd18ea10b15aad68bddd8a8c8c0cf8fbfac249ddee7de67be883d4afd4aae938762c468f1c85c746fc0cae9327e377cb5f44ac5a5d23d55660c22fc6e271070715f64c246f4bc0e54f3f355f950631d42162bc795f515e8184f8784c9f360d3f7ef407983a65329e557b4f17759b1f3d72247ef2c31fe1d1e1c331cdc51951119b9073221bc7df7b0fa347fd1cc3bff77d4c767242e48630fcf3d225f3556910431d22376fdec4f973e7919498083f1f1fb5079da80e4cae7051abe793e3c763dce8d16ac6608c0a76a63a4cc545bf81fcbc3cbc9f95a557dae18f3ca27fe6cf9b36a1fce38fcd57a5410c758818bfb04fd48afad70f3ec0ae94146c56c105af0986fb9c39701a3f014f393ae2b9d9b3e1a1c63864bdb2f26524252460b35a591f7fcc0163468d829f9717f6ee49454d75b5f9aa3488a1da90f14bcc3c760ca1afbd8e888d1bf5893e37e76f484e4ac4ab412bb1d4df1fdeea1015b2663552dfdc85c28f4ea3b1e1bafe7c00dd8fa1da90f16193aaaa2ae47e988b82820254ab95f27375a2ffc7c552641d3fa656cf3dd8bd6b17f23e3c894f2aca71f3c60df47477f3a3800fc1506dc862b1a0bdbd5d7f42ca7834be36f4f6f6e296dad3d6d6d6a2a6a646bfef6a444d5f8da1da88b12afeaff88c5f7e3f57cfaf85a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a2230541281a192080c954460a82402432511182a89c0504904864a22305412e16b859a9393732fd4baba3af33291fd0c0c0ca0b1b111858585484f4fc7a1438770eedcb92f873a77ee5cc4c4c43054fa4e18a1363737eb388f1c3982b4b4349c397306adadade6331e08f5dab56be66522fb316efdf5f5f53875ea14f6efdfaf632d2929415b5b9bf90c156a6e6e2ee6cc99a34335965f227bebeded457979b9de9fc6c6c6c2583cabababd1d9d9693e43856aec0b7c7c7cf41ef5f2e5cbe66522fbb97bf72ef2f2f2101919899090105cba7409ededede8ebeb339fa1426d696941666626c2c3c3b17af56aecd8b1433f91c81e2c160b2a2b2b919a9a8a952b5762ddba753ad2070d33f607b5b5b5484848c0c2850bb16cd932bd041bababf19601873394d3d0d0a01f8df390f176685959194e9c3881ddbb77ebbbfa9e3d7bd0d3d363e6f91fc38c7fbababaf4aa1a1414047f7f7fac5dbb16898989d8be7dbb5e61399ca1989d3b77223939593fc6c5c521222202d1d1d1faeb03070e202b2b0b454545fa70f5201daab117a8aaaad2a72de387030303111010006f6fef7b63ec63399c6f33bebebe58b468917e340ef06e6e6e58b264895e49b3b3b371e5ca9587def601e05fba11ba63e1f9dad70000000049454e44ae426082),
(51, 'TROQUEL 49', '4.00', 0x89504e470d0a1a0a0000000d49484452000000970000009a0806000000a401daa7000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400000f0149444154785eed9d8b97ce751ec7fd059dd339ed39edb6c5ee2a5ae412cb883233d819231c9730d3ae19d731ee0aa5721d97c12042a292923ba911420a13126b665cc6ad1877432422a9cf3eaf2f8f935d8fccd437c3f37e9df36df4cca5677ebfd7ef73fbfef22b664278a2d8be7dfb6cfbf6ed969d9dedd6d6ad5bddcac9c9d1d2bae10abac2cacaca72fe1c3d7ad42e5cb87059aeb7df7edbfaf7ef6f3d7af4b0debd7b5bbf7efddc7ae9a597b4b46eb8f00477f8d8ab572fe7504646861d3b76ecb25c5dbb76b58888082b5dbab4fb58af5e3d8b8d8db59898182dad1b2e3c898b8b731f2b57ae6cc58b1777b2e5e6e65e962b3131d12a54a860e5ca95b3860d1b5ac78e1ddd4a4e4ed6d2bae1c293949414f7312a2acaeebaeb2e4b4a4ab2cd9b375f962b2d2dcd8535d223f597108561eddab5161f1f6f6ddab4b18d1b37bad78aa5a7a75b6a6aaacd9b37cff2f3f3dd8b421414a21559f01ab9468c18e1f2a42297f8356466665a424282b56ddbd6bef8e20bf79a4b8b54fed3a64db33d7bf6b8178528289f7efaa9b56cd932b45c7bf7ee752f0a51502497f086e412de905cc21b924b784372096f482ee10dc925bc21b984372497f086e412de905cc21b924b784372096f482ee10dc925bc11522eeea17febadb72497283421e5e236e7e9d3a74b2e51682497f086e412de905cc21b924b784372096f482ee10dc925bc21b984372497f086e412de905cc21b924b784372096f482ee10dc925bc21b9843742ca3560c000f777a27ef9e597ee45210a8ae412de905cc21b924b784372096f482ee10dc925bc21b984372497f086e412de905cc21b924b784372096f482ee10dc925bc21b984372497f086e412de905cc21b924b784372096f482ee10dc925bc21b984372497f086e42a20172e5cb06fbef9c6ce9e3d6b3ffcf083fdf4d34f969f9f6f5feedd6b3bb66db39db9b976f0c041bb74e9d295ef085f245701c9cbcbb3ecec6cdbb56ba79d3c79d2befdf65b5b9799697366ceb429af4eb26953a7da92c58bedd4a9d357be237c915c37c9a54b3fd8c913276ccca891d6bd4b671b3c7080cd9f37d7962f5b6a5ddab7b57ad191f678b57f5864f5088b6fdcc896646458defefd76fefcf92b3f21fc905c37c9d9b3df5ad67f365b6242bcd58d8cb47fc5b7b4e14387d8847163ad716c5dab5db3bad57de2718b7c2cc2ead4a86ee3d247d967818846ca0cd71429b96e9223470edbdc59332da252452bff7069fb67749475ead0de7a76ed6c71514f5842b326d62da56340be9601d11eb32e1d936d562055eedebddbd569e188e4ba092e060af78d9f6fb02103fa5ba9e20f58d9071fb498e8686b9b9868ed925a59fd3ad1d6a34b277b7974baf5edd3c762ebd47691edf529536c6b4e8e9d3b77eeca4f0a2f24d72f70e6cc19cbdab2c5a6068af5f689ad9c5c8f962d6bcd9b34b1bebd7bd933ddbb598daa550332c5db807efdac734a8ad5ac5edd3ab46b670be6cfb73d81c875febbefaefcb4f0427285e0fbefbfb7ecac6c1b37768c356dd8c0aa56ac604f54ab6ad50269b15ae54a2e328d1c916693264eb4b8d87a56a1dc2356b2c45fecde7beeb112f7df6f7367cf76628633922b04c78f1fb781fd0704525c1d2bf5971256e28ff75ad9871eb40a65cad823819aab46b5084b081cb8d4c1836dfcb8f196f4ef442b53ea61fbc3dd77dba3e51fb1cc356bdc0c2c9c915c21d8b76f9f3588ab6f7f0fd457a5fff6572b57aa94950b4855ba64c940842a610ffce93e2b53fa6197fed6ac5e6d69c386dbe38fd5b0320f3d6409cd9fb2dc1ddbedc7301fa44aae10ecdfbfdfe29bb7b0ba5151d6a87efd406a6c6875027f2e1390ac6489e22efd15bfefcfd6b471635bb4707ea0feea138866d52caa664d4b4b4db5fcfce3f6e38f3f5ef969e189e40a01c3cf9c9c6cdbbc79b36ddeb4c93e59b5caa64d9b6631b5a3ad4ac58a4eba4ec9c93628709cba24b7b384664d5df73861fc78b7052442c83562c4081b3870a0bdf3ce3b612b175187829c7dc4d38175e8e0215bb76e9d25b46861b5236b59eb40e73865f2645b9c9161a3d38605569acd9a31c3c9c89690905c370ddde3c183072d75d020ebd6b9b38d494fb70debd7db81bc3c5bb562b96d088877f0c0013b1fa603d3eb21b90ac085f317ece3952b0335d6c2cb5b3b818e923b230e05a4fafae4c92b5f258248ae0272faf4e9cb774304526670cff0e2c58b615fbc5f0fc925bc21b984372497f086e412de905cc21b924b784372096f482ee10dc925bc21b984372497f086e412de905cc21b924b784372096f482ee18d90720d1a34c866cc98615f7df5957b51888222b984372497f086e412de905cc21b924b784372096f482ee10dc925bc21b984372497f086e412de905cc21b924b784372096f482ee10dc925bc1152aec18307dbbbefbe2bb944a1915cc21b924b784372096f482ee18debca959e9e6ec3860db3d9b367bb67e0085118d6ac5963f1f1f1ff2fd7f0e1c36dce9c39924b149aebcac58cebf9e79f770f52e2d1704214864f3ef9c49a366d6a898989b671e346f75ab1366dda585c5c9c3df3cc33ee0b780038cfbee151243c2922dc1f5229ae051ff0023f7085959f9fef9e7a57b76edd6b2357af5ebdeca9a79eb256ad5ad99021436ce6cc99f6c1071fb830b77dfb763b7af4a87d17a6cf6d16d7c2a303f1213737d7d6ae5deb849a3e7dba5bfdfbf7b7468d1a3987f83c147bf3cd37dd27886084b5264d9a58c78e1d6de8d0a14eb4cf3efb4c7f8784b073e7ceb969023e509fd30492f1ead5ab674f3ffdb42527275bd7ae5dedc30f3fb463c78eb9ef29460823523192484a4abafac5a4c951a346392bdf7bef3dfbf8e38f9dade453cc3c74e8904b9fe2ce820767f1402dceefae5dbb6ccb962d6eccf0d1471fd9c2850b9d0f63c68cb1679f7dd6a2a2a22c3a3ada121212ac5fbf7e46a0a26e0f66ba62274e9c702f646666daac59b36cdcb871f6ca2bafd88409136cfcf8f14e309e244bdaa458ebd9b3a7fb7c4646861d3e7cf8ead3bcc49d01690fa138bfafbefaaa93863aaa53a74ef6e28b2f3a1f38ff2c24c311845bbe7cb96dddbad5a5cee053dd8ab97f5e071e0547cdb572e54a975bbb75ebe6d2658f1e3ddc5fb9c40863f4e8d16e8c419e25f24d9c38d135053b76ec30a495784517ce2f9988f926018534c7794418d6c89123dd70fdb9e79e730185a9c21b6fbce17cd8b66d9b2be27f89907221c6d9b367dd0fc9cbcbb3acac2cdbb469938b704b972e756faa77efded6bc7973ab5dbbb65b34062fbffcb22d5ab4c87d2d73331eed1bec3ad579de3a38072c6a27521e8f50261874efdedd1a366c6891919156a74e1d774e918b7a9bf34c63c7b92760703ef1012fe8167f8990728502e94887c83376ec5857c431f6a7192075a6a6a6ba90c9dc8c7bc4d8564236225a4e4e8e1d3870c0e574e11f9ebfcde3944957a4b9b973e7ba734226a23e225a9191187e366edcd87de49c2e58b0c08d13f85ed25c6129b05c40d147da43b0152b56387978e3d46cafbffeba7b8374a09d3b7776910df9faf4e9e33e17cccdc22fa74e9db29d3b77ba34c6854eb3d6a0410317a5f833f5d3d4a9535dbd4494e2fcbdfffefbee9ceed9b3c79ddf5fdbb0154aae9f134c77bc11f2386993949996966629292956bf7e7d176e6906c8db53a64cb179f3e6b99696d04c34dbbd7bf7d5ab44a9b36070cc108954c771e4c25dbf7ebdebeee9f211885aeac9279fb41a356ab8f4c73480d756af5eedbe87efe7fcfdd6c7fe57cbf5bf9036f985cf9c39635f7ffdb51d3f7edcf6eeddeb44a29d2524f38b51a3454444b8a96eebd6ad5d47ba6cd932f775ccd5e85adcf3a503a19d2970b83707fcfed44b941444158e2b5d3e9983634af14d448a898971f327e6961c53d21fc795b1021730c795efe7fcdc4cddf46bf8cde50a05b30f8670ebd6ad73219842b25dbb762ebad191201c6d2d8bb44a274aedc681a1a0e4c084eb4e0151e5c89123ae6ea5f4a069a24b67718cf8778e1fc538a5081fe9f6a87729c8b9b86f05bf9b5c801c4423ba4f0a465223033a04a288e40075e9d2c59a356be652696c6cac4ba5d4041c244278383503747774db44282e4ac63f1d3a747051bf6ad5aa6e80490345a9c1054b77c7f124fa3346e2fb8852b7eaa2fc5de5ba1ee47984a3f8a4e00f6e45b14fc5a211209231634132ea35b618a8178868a4d0dfa2f8bcd5d02451fbd0ee676767bb12820e8fa938352ce98d3447b4e7a2a376e2f870ccf85a6a2d8e4370805914b8e572fd1cea0aea000e34b270d5721506a7c56c39040b53666a6cba0767321c604e0a5b53a401d22807db775d511038f1441124629cc3fb24c26cd8b0c175755c38a439d21ab513118a110fe31e2eb0cf3fffdc9516d4b2d4b51c238e59516d828a945cd783034954232d2211b544dfbe7d5d01cb56047205efa6a576e373fc9948c7d883c2b7a81c7c523a85355197df85f749edc945c28d02d499c1e938bb20fc8e4845c18e7cfc2eb7536353e4e5e26ae72a258a717019c2129d886814b85ced6c5f10d5a8d382e982ab9d4297b69cb90d93653a4fa6cb4446df2789ff06ef9b0e8fff26a99ff74c4aa746e2064d664e952a5572510ac9900be9e800b9a0a89988c0dc6540b4bb9dc482222f572838d0b4d5a4c2c58b17dba44993dcde27630d6eff208ad14d914e831d5570e7803b3b48499c301f518d361f91889cdc9e4214e57df01e790f445a3684dbb76fef9a172e04ba6486d1bc3766567702b7ad5c407420d57075b3f7c5462ce963c99225576f0f79e18517dcb60611ad66cd9a6e9be3b5d75e735fc30097a8f05b3503445922149195021c81909dc938c36436fd4979083e7ffe7c77ab131d1e5d339bc174d17cffedde9c04b9ade5ba119c20c44138522742111d881c44116a1bea1a76fc89208c40a87138f1a45bd2522818ead2d59172918488c91617f735f173e8eab86569f2e4c95717b2213e9196c844babcd3b963e502521e927122a9b7488344b955ab565d9d6a07ff1f02165b54441bda7b3a544460b646ed8310747844255217dd299bc044226abd2a55aab8c8c8d60ae3142212a31224241a05771a88b645695ce0933b5aae5070c269eb499ddc76826474994432ea34a21a5d1a45379d1c9188884704e26b18ec22155f43fd443341414e9dc76b0c346922a8bdc299b0948b0842f749da4434a213053829943a28783b4aad5ab5ac7cf9f26eaed6a2450b17d9e8ecf833e2211b3b0b443286984435e650341a748a4575fef47b119672dd08c606c88170a43e3a383a3e16f5151d20777e50809362756f5a6824d74d40cdc68c8d256e1ec925bc21b984372497f086e4129e30fb2f2514df127f7e3c020000000049454e44ae426082),
(52, 'TROQUEL 50', '3.56', 0x89504e470d0a1a0a0000000d494844520000008900000097080600000021f87822000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000097f49444154785eeddd694c95571ec7f17692cebc9864cc2433c9f8a2ed68abb61d15b515501001050587454105a2d2aa4501b5144511152a82bb22825bdd95baa00c3a05ad4b10eb32355194a52e55510482208855b488c06fce39bd8c4bedfc675e7aefef939c70739f9be7c57dbe79ce398f26f735280d0d0d282f2f476161218a8b8b51525262867ecd61fda3ed7aebeb5f545484ab57afa2a6a6068d8d8d3a0f9848f49b191919888a8a426c6c2c121212101f1f8f3973e670d8c0d0d75a5ff3a953a7223a3a1a4b972ec5b163c7505f5fff3492fcfc7c8c1f3f1e1d3b7684b3b333860c19026f6f6f0c1e3c98c30686979797b9e6767676e8d0a103060c1880f4f4745456563e8d243b3b1baeaeae68dfbe3d02020210111181f0f0704c9c3891c30686bed6fa9a3b3a3aa25dbb76e8d4a993b9b3dcb871e36924999999707373c3b469d3505656660e90edc9c9c9417070b0b993242727ff3212777777cc9e3d1bb5b5b5e600d99ebcbc3c848686c2d3d313f3e7cf7f3e923d7bf6987a6262627827b161b9b9b9080909818787c7af47a257b7d7af5f3707c8f6ecdfbf1f4141411838702023a197632424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622424622482d6d656335ef4b2f7ac1523b1686c6c447d7d3daaabab515555856b57afa2a4b818e7cf17a0a8a808a5a5a5b8ffe38fa8aca8c0f72525282e2cc4adb25b78f8f0a1e50cd68b9158d4d5d6a258c5703c3f1f470e1dc2f6ad5b91b66205962c5a84952b57624f66262e9c3f8f83b9b958939e8e7475ec6bf5e55dfbe1aae50cd68b91686aea282abc80b4d415183b66347cbdbcd0cbae073a777c071f74790fce7dfb62a89f3f42d41735487d1ff63d7ba0ef873d31c2cf07f13362909f774c7d3fa5686868b09cd0ba30128bef4e9fc6acd819e8e7e88077df7e1bef77eea242b1838b93133cdc07c0ddd50d765dbbe1c31e3dd0dfd909835c5de0edde1fc37dbc919e9a8a13df9e40ed9d3b96b359174662917fec18c2c3c2f0ce5b6fe1f7bffd1d06797860524404e266ccc0c44f3fc5407777bcfbd70ef054dfc7679322111335054143fde1d6c741bd8ec2be7f64a1a2a2dc7236ebc2482c8e1c3e8cd0d163f0973ffd196fbcfe1b154838b66dde8cbd99bbb1202909437d7c60dfab173e9ff219b2d4f7b22f2b0b713131f0e8ef82f1a1a3b17df326b5b8b5ceef8891282d6a4d929b7b0023878fc01fffd00e6fbcf63ac2278461dd9ad56a01bb054973bfc0c861c3e0ebed85556a117bf9d265fc70e50abe5cbb0681febe1831d40fab56a4a8f72f5ace685d6c3e92d6961694959521232303633ffe04ae2e6aade1e989bf0f1e8cde3d7ba1fbdfbac2d9c101035dfa614c4830bedabecd6c91f5fa637f7616c23e0985a79b2be6252498dd8f35b2f9489a1e3f568bce6fb176f56ac4aaf5c79cb83875075983583595b8a85d4dc737df44d7ce9dd58ec60ec3fc7cb1554d4135d535a8555be6dd3b77206478a089647e62a2da21155ace6a5d6c3e12fd306cdb962df8223e1e71b1b1269093274e60c397ebd434e28feeef75418f0fdec74776ddd5f6d71d2b962fc3f7c5c52688658b17c3c3d5157e6a1a5a99b25c4d37972c67b52e361fc9fdfbf791a4ee02a3434210327224e6cc9a651e9ca5a72cc3487f1f38d8758353ef8fe0ead4179eaefd103bf573ec50538e8e685c68287a75eba6a6a110b3c8bd515a6a39ab75b1f9481e3d7a844d1b3660527838bcd45aa48f7d6f3839da23d0c70b634346226e5a3456aabbc79af434448e0b4580f72078b838c3c5d1016ece4e080a0cc0ae9d3bcdd35afdd8de1ad97c244f9e3c41e1850b6a5b9b89e47973312a68845a8b38aab54600162525e29b9caf71a1a0000567cf62c1dc0404a99d4c3f87de7057818c1d3dca0474e5f265d4d5d5a1a9a9c97256eb62f39168cdcdcda8be5d857f9d3e89b5ea8e313962221213e271e8e001d4dcbe8d16b5037aa4d62e596a1a9a337326c67d1c8aa8c808ac5bbd0a67cf7c8766159a35ffa330237946fddd3a9c3f77d63c3d3d7ae4b0da1adfb41cf9d9c58b97f0cd8103d8b5e32bfc333bdb7cf6deddbb96a3d68b913ca3b5b545ed761accbf08ebff36f0e2f4f1e8a79f705745515353633ea33fab9fb3583b4642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642224642a2ff1a49666626dcdcdc101d1d8d522bfd1d7e92e948828383e1e1e1f1cb48f6eedd0b4f4f4f4c9f3efd3f07c8f6e848020303d1bf7f7fcc9b37eff948f6eddb077f7f7fcc9e3d9b91d8b0ecec6cf8f8f8c0dede1e090909b879f3e75f5e37911c3d7a1413264c406262224a4a4ad06acd3fc84fbf4acf28bebebee8d3a78fb9939497979bf74d24e7ce9dc392254bb060c102e4e5e5a1baba1a4f9e3c311f20dbd0d2d282ddbb7763d4a851f0f3f3437a7a3a6edfbe6d8e9948cacaca9093936342d9b66d1bce9c39637eab9f6cc7bd7bf7ccb58f8989c1cc9933cd12a4bebede1c3391e8bbc683070fb076ed5ab3784d4e4ec6a14387cc1d85ac9f8e41af47741cbb76edc2b56bd750575787e6e66673dc44d246d7b370e14224252561cb962d387efcb899972a2b2b51555565a2d1b7208e5777b45dc35bb76e994d8a7e2ea6aff3f2e5cbcdcde1e4c993e6a6f1ecbaf4b9488a8b8b71f0e0416cdcb811a9a9a958ba7429525252909696864d9b3661fbf6ede696b475eb568e5770e86b979191615e2f5ebc18f1f1f198356b16e2e2e2cc5fbde4d0f1bce8b9481a1a1a5053538353a74e61fdfaf5e609ecb061c3cc53b8b0b0304c99320593274f46646424c72b38f4b58b8a8a32af870c1902272727b393090808309b963b77eee0f1e3c7961a9e7a2e9236fa837a8a292828300f58f4d6a86d64656571bcc2a3ed3aea3588beb6faeea1a798b667222ff3d2489ea517b4ba301d8d5e9f54545470bcc2434f27faaf9e35da16a6123192367a1fad17347ae89373bc7a435fbba6a626f3f7fff13f4742b60af837451bac7c857585ef0000000049454e44ae426082),
(53, 'TROQUEL 51', '1.12', 0x89504e470d0a1a0a0000000d494844520000003f0000006e0806000000908dcb8d000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000071f49444154785eed9d594c545718c779f0a16f3ed8c4c4d61a1bd39a581bd3a60fd65aa4686345140465a908542da2b2c96245a950b12cb2caa2886c95cdb880209b521605c4208acae2465141d688b209aeffdeff1128d5688dc430333dffe4cb0cdc3b77bedf39df5966ce9df369f5f7f7e3dab56b080909c1962d5be0ecec8c6ddbb6c1c7c707bb76ed82bfbfbfda1afd0f0c0c849f9f1fecededb175eb56c4c7c7e3fcf9f3e8ecec84566f6faff863fdfaf5d0d3d3c3c2850b616666264e6641383939a9add1ffcd9b37c3d1d11173e6cc116c1e1e1e282c2c447b7b3bb4bababa505a5a8a356bd6c0d0d010e6e6e67071711125b67bf76e848686aaadd1ff88880804070743474707bababa822d3737172d2d2dd062f51715158910494848405959195a5b5ba169dab76f1f3c3d3d4581141414e0f6eddbffc0b37452525244136034689a58b13b77ee149140f85bb76e3d872f2e2e4640408046d77c747434bcbcbc101616f6ef9a273cc33e2e2e0ea74f9fc69d3b77f0f4e9d3c197a9bf9e3d7b86bd7bf762fbf6ed2f87bd8497f0125ec24b780d918497f0125ec24b78092fe125bc8497f0125e3324e125bc8497f0125ec24b78092fe125bc84d70c4978092fe125bc8497f0125ec24b78092fe13543125ec24b78092fe125bc8497f0125ec24b78cd908497f0125eb5e1e9ec93274fc4236db41a7378c2f4f5f5e1debd7be287cadddddde291bfdfe77b0d1de7efda6fdebc89e6e666742bc71f3d7a34ea0218737842d6d7d723372707e9478f22353919c94949389e91811bd7af0bab387b1699c732f04742024e9e3881ab57afe2fefdfba26046a331876f6b6d45417e3e1c366e8485b9390cf5f56164600047e5efaccc0c1c3f760c7bc2c3e168670f331313f8faf8205f39bfa9a949d4fe6834e6f075b5b508f0f3c587132762eae4c9d0fee61bd8dad820222c0c69470e233a2a0a4ef6f698fbf51c7c34e90358aeb440526222ae2b11313030307895b7d398c3575db8000f7777bc3f7e3ca64f9b0693e5cb111c1888fc932771b6bc1cd95959080d098199a92966cdfc1cabad7f426a4a0aea6fdc507f78023adad9e1bd71e33065d2242c9c3f1fbfb8bae2200195be803bb67007072f4f4f2cf84e5781b7c6c1d454fca51c536b785eabacb4144e8e8e98386102a64d99822f66cec4f73a3a70d8b041746c3d3d3de8e8e8408ad2119aae5801ab55abc47316cc407fffe095de4e630afff8f1639caba880bf9f1f0c972cc18a65cb307fde3ccc9a3103dfce9e2d4600fac15e9d8ead5dbd1a961616ea0dcf37edeeee119dd689dc3cc4c5c48808a8a9ae169d9989b1313ef9782a36d9dba14409793122288eadb3f959fde1798da6c626316607050460938383e8e06e289dd8f1cc4c582ba1fdd9f44fe1eee6828a336704fc9fcaf066b376adfac3338cd9617152e3eaec8c1f162c808fb737d2d3d2b0373212a64acdcffeea4bc44547a1412990fbcaec2f372757b4f71fcdcc4474b0a0d4b6e6394d2d51aef9bbf70ee86a6b2bbdbc2e36ac5b07ab952b457bd7d59e8bb3674ad175af53401e4b4b57263f86305c6a8078c59febca28c0fdbb46a331811fa95bca7c3d3e2e164b172d82c1623d2c5ba20f6b8b9508f4f71b3ce3b94e159fc2768f5fb1e3b71da209342bbea8fd0c8fb577a5ae0ef131b1d8b7670f62f6472b33bb23a83c573178c673271b1a1a505450a8444b89f880d3ab0c81a3f565cce1295eb3a3bd43e9041bd1c24f6dca27bb911f5a789c139a3ee543101f798c8e8f562a01ff3ad1c177f59e2a0fff2e25e125bc8497f0125ec24b78092fe125bc84d70c49f857c10fed75cdedcf4b4a4ac4574fff6b78be40534496a8a8a861786ef1ded8d8082d2e01737feba0a020c4c6c68a26c095514dd2c89ae75ed7ac6c366d2d2e135dbc7851ec07cf03e9e9e962f968b46be2aa26666ee046ffac7946775b5b1bb4f85d19e39ff0aeaeae229d03db046f26d024b9bbbbc3d2d212bebebea8acac14373d68f100c3823dbd919111f4f5f5454170ff774d106f83e10a30b9162f5e2c6a9e590d28014fe5e4e4889407b6b6b6888989115f1b6b8218c5dcd7dec0c040242cc9cbcb1b8eea61f89a9a1a1c3a7408fbf7ef475a5a1aaaaaaac4496c165c34e04a2bfb017530fa4bbf19bd1cc598cb82493d58c123e730c3f077efde15aba99ce41c3e7c583483a4a424646464881180e91e2e5fbe3c6c972e5d52191bf2a9baba5a18fd6505b222edecec606c6c8cd4d45431848fd4303c6b96b782d5d6d6223131513401a674618a17e682605a04fe9f76e0c0019533fac5ca4a4e4e86b7b7b7c8ce6265650537373791ae82cdf8c565af61f8213d78f00075757522442223234507c121908930687c1e1e1eaed2c6e424ccd1c1e865c4be4a2fc1b3e76709310a18262c88f2f272715b58767636b2b2b284f1b92ad9905f34365d3603f6eaaf5be17d09fe45b139f05e192e2072c8b872e58a9804f1b92a197da26f34666379f8f0e120c1abf59ff0140b8025c8685007a3bf6fa23782d74c017f037ba5360f344949610000000049454e44ae426082),
(54, 'TROQUEL 52', '0.77', 0x89504e470d0a1a0a0000000d49484452000000310000006b0806000000de896a8d000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000077649444154785eed9c7b4c54571ec7f79f66b37f34bbdd366663b26d369bed33751b6b44b1488b465ee5258333522c1d4d590a02e53182300591d70045a48b540105848ac8638095878fc5822860a3058582a2d82282828f28286ac1ef9edf29635f40e91f57ce36e7939c0c997be6dcfbe1fcceb937b9bffc7e07c69d3b7770f1e245d4d5d5213b3b1bf1f1f1484e4e467a7a3a323232f8e76cb66ddbb661ebd6ad88898941545414d2d2d2505353c3af7b7c7c1c8f24babbbbb177ef5ef8f9f9c1c1c101898989282d2d456565254a4a4ab06fdfbe596b46a311b9b9b9f0f5f5859595159c9d9db9dc83070fe8f2bf93181919c1b973e750545484e0e060b8bbbbf3bf5b5b5bd1dedece3f4f9d3a356bedf4e9d3686868406c6c2c1c1d1de1eaeaca25eedfbfffbdc4f0f030bababa505656c63b868686e2e4c993b875eb163f469fb3d96edfbe8dbebe3e141414c0c7c7075e5e5ec8cacac2e8e8e8f712d489242a2a2a909a9aca43a9b7b7977710857bf7eea1b6b6167abd9e474b5e5e1eeedebdcb8ffd4c22252505090909e8e9e9e11d448142beaaaa0ae1e1e1080a0ae26b645a09da9d2e5cb8c03b880285f5fefdfbb171e3460406064a8959434a888294100529210a524214a484284809519012a2202544414a888294100529210a524214a484284809519012a2202544414acc84870f1f626c6c8c377ac33f1d74fc97fa4c86e212f47af6e6cd9b181a1ac2b5ebd7f9bbe791e111f6fd772fcb4d8cb18ba73e4343d7303ef6eb441497b8ce2ebce3cc19341e3d8a86fa7a1c3f768cb5e3e8686fc7d0e0104f5f2051ca0c3878e0206b07d0d6da861b376ef0599c098a4b5cece941796929529292101d19894dac85e93620233d1d0d9fd7f3b15b9a9b1113bd19febeebb1fe031f44b13e857b0af9c5cd04c5255abffc121f1b0c58e5e2022b0b0bbcc5da9b164be1b56e1db63191cf0a0a9010178737162d86d9ebaf63c16bafc16cc102b8ab353877f6ecc428d3a3b8c491ba3abcbf762dfefedc7398f3d45330373343566626766665411712024b263577ce1cd859dbe0a388084446e8e1ece080f9afce83213e8e85610306af5e9d186d721497a8ada9c1bb1e1e7876ee5c3cfdc73ff18bae62272c371a11ce4eba74c9122e98101b87a6a6261e62116161b060331312f821fe535981cb7d7d13a34d8ee212656c3da8dddcf097679ec11f9ef83d5e7afe0516f35148666b24223c1c5acff7e0e6ea8a9aaa6ab673ddc6f9f3e7111b1dcdc26b11f4eca2fe7bf8d0eccec438db5df6151561ada727e6bdf20afef6d767f1f20b2f62f14233ac7476812e38185b52b6206b4726ceb0dd89b6d8638d8dd005056199a5257276eec4d9ae4e9e38361d8a498c7dfb2d06d94555949763577636f2727250c9c62866524bcc16e19f4cea1db51abbf37279d64e4b731312d91a7057b96295b32322742118e8ef9fd1cd4f31897ba3a3686b6b436a72323e49dd026349095a4f9dc417275ae0686bcb627e21bcd66a91cf24be387102999f6640ebe10eeb3797c2ddd50586cdd1ecbc9d7c764c095853a198c430fbdd81da5aacd1a8e1bd4e8b2d8906541acbd86c18e16c6703177b1b6cfe48cfee079f212f370fda351e5039be0d8d9303fef59e2722c34251b4b7902ff6ab57ae4c8c3a398a4ad45457c3c9ce16f6cbadb046ad42a09f2f4275c158f9b62dbcb59ef8776a0a5b0f3be0efe78f792fbd88159616f050ad84e76a0d3c58a885b0b551909f8ff3dddd13a34e8e6212a36c104a720c0b09821bfb0fbf656e86c50be6b39bdd1b7857b30a7a26b3f5e32444eaf5fc1ef1e7279fc4abcfff03968b17b19dc90c0be7cf8746a5427a5a1a3abffa6a62d4c9514cc2c4b5a1411caca986212e061f78bd0f3f1f1f184b8b71e4d02154b0f0da919181f8981804060420603d7bec60c77dbcbd11e0e7c78fd51f39822bb3154e266877b932d08fd36dad38dad0c01f042ff5f6e2eac000bef9fa6bfe5fa64793132d2d6866f14f0f88b4cd361d3f8eaece4ef6db013eabd3a1b8c4e3404a888294100529210a524214a484284809519012a2202544414a888294100529210a524214a484284809519012a2202544414a88c2af9230151f11ad6e0749fcb46e872995e29144676727cacbcbf94c180c06a18b8f4c39131d1d1dbc820f951fa2522ba28513a5df55575763c3860df0f7f7474e4e0eff8ef891c49e3d7b78311e2a8f74768619618f0baa2044659a020202e0ededcd2528fb93e012d48192449a9b9b7901288a392a7e333838c83b89407d7d3d743a1d962f5f8ed5ab57a3b0b070e2c88404654452c6e4e5cb97f9949108952122292a4944d346c767ab51b6275500d36ab5b0b1b1e1e591a8d296092e618266848a551d3e7c989709a3b66bd72e6e4d8dd60c55dd52ba5185afe2e2621edef9f9f9d8bd7b37929292101616c617766666264f4f35f1230982b6329a91eddbb7f3b0a2aa5b549e8b4a88a9542a68341ac51b858b5aade6e7b4b6b6869b9b1baf7b4665c31a1b1bf94e4a39b5267e26618216d1a64d9bf8a0cb962d83a5a52556ac58017b7b7bd8d9d929dae81cb6b6b6fc9ce6e6e6707272e2617ee9d2a5478bf9874c2941a145b3420bbebfbf9f0f40d5b71e67a3735254d006436b632aa694f87f424a88c26f4002f81f9c7a172552cba17f0000000049454e44ae426082),
(55, 'TROQUEL 53', '1.02', 0x89504e470d0a1a0a0000000d49484452000000480000005608060000006c31d0ac000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000079349444154785eed9c694c545714c7f1433fb61f9a34696b4c6b5bb5a996b6562d2a2a82288bd08242d5620d092e88b22f5651a905116575639755a14614148641c5801b5a51d9154471a12c312a9ba222fe7bcfed2341aabd493394c9707fc991384f1e737f9e73ee23f3ded1bb7cf932f2f3f3919595858c8c0ca4a5a5213d3d7dd8c4fefdfbf9d7c4c444242525212f2f0f376edc401f7a393939080f0f87bfbf3ffcfcfc101c1c8c1d3b7660fbf6ed080909d1d9a0f5f505adddd9d9194e4e4e080c0c447171b1a287092273eeeeee707070c0ead5ab71e4c811141616a2a0a0002a954a6743ad56f3c8cdcd45585818ecececa0afaf0f4b4b4b2427272b7a98a08484049e392469dbb66da8acac44434303eaebeb515757a7b341654471fdfa752eccd5d51513274e84b1b131626262143d4a06050505718b870e1d425b5b1bbabbbbf1e4c9133c7efc58e7a3abab8b2704addfc8c808262626d8bb77afa28709a2c6141111c11b54ffda1b4e5042505959585860eedcb9d8b3678f72441144f6a8d4a8f7bc78f14239347ce8e8e8e0bb98b9b93917f48f0c2241f1f1f13879f2247a7a7a9443c387f6f6769e2052d01b908204484102a420015290002948801424400a12200509908204484102a420015290002948801424400a12200509908204484102a420015290002948801424400a12200509908204484102a420015290002948801424400a12200509908204484102b446506f6f2f5eb078f9f2a5f2caebe965c7ffcfff28ad1044529e3e7d8af68e0efe86e8ce528aceae2e3c7bfe5cf9577ff3a8ad0d4d4d4dcadf061fad1044b7173f7cf810b76edec4a54b9750525282b367cee0c2850ba8a9a94627c9eaecc0dd3b775172fe3cd4f96adcbe7d9bdfe84d62e9fb4599f75fd10a413d2c4b1aefddc33926252a3202bf6ede8c75be3e08d8b8117b77ef465161214e14a87120351521418158e7ed8db89868a8552a945dbdc233ea4977f7a048d20a41cf58165cabae46667a3aec6d6d317be64ccc986a002b733338af588e6d81bf610313b6d27119ec7fb086d53c532cfcde0a1e6bd7229e893acfb2aab5b595bd3fcddfe8ae1582a884d4aa3cb8af71c1a80fde87c1e4c9f0705d8b74963179b9c7e0e6e2028b3926309f630cd755ab10cc84191b1a62e28409b0b59a8fb0ed21b8c0cab2b3b35339a3e6d00a41edacf11eccccc0a2850bf0ee3b6fb3ec9986804d9b58591d477979392f333f2f4f787bb8232234140971b198676282a9932661e9e2c53c8bcaae5ce13d49d36885a0b6478f9094988839b367e3ad112330e6934fb1c0c616418141389c95c51af669de830e6666222e3a1a1bd7afc737fa5fc2c4c8089bfdfd71a6b808ad2d2d783e60c7d304432e881aebfdfbf799a07db0b2b0c4a80f47e2f33163a13f7e024c8d4d58a9b9a2aab21ccdcd4dec6b25d29253b0dcd191491c0d4b3333448587b3d72b5899760ecac336432a88b6e8e6e666b6135d45f6e1c3ac74e250a05623273b1b215b03b19895dc2cd6ac3d99a434d68ffeb87811955555385e5000c7a50e98357d3a664e9b86954ecb917920836551ab7266cd31a482a8675cbb760daadc5cc4c7c62296fd70baeea9607d2735691f1c1d7ec2b7ac948c6718c265e50af65a222e975e42795919d6b066fdd5f8f118f9de7b3062a222d9fbbc77f7ae7266cd31a482e887d393d5c9fbf6e117b68d7bb05d2cf7d851a8f2f2d84e1588f9f3e661fcb871309c32090be69bc1dfd713bfef4f63428fe1c78576183b7a343e62bb9eb5d95cdea89bfed4fc15f6900aa26db9a2a2026929296c2b5f0d1b4b0b78b9bbc1d7cb0b76ac491bb05d8a7634c7258bb0d8c60a3fdbdbc06bad0bd6fbf9e2bb4993f1c5d831309d35139bd7fba1b0201f8fd8d5b8a6195241f4b8e33d76055d5c54841dc15bb164812deb2bd360686080af59f94c9f3205ab9c9c10b767377cdc5c606361ca84ccc06c56529f7d3c9af59fa9f0f5f480ea580e6ed5dfe0e7d334432aa83f8dac7f9cc857c1d3cd0dab96af80b7bb3b12626250555ec69bf955769d93c0fad43a1f1f38b3e3944507d2d350575bab9c6170d01a41f4eb460bdbca4bce9dc3e9e2625c6457c6f57575fc2a9ba027ae4906ed6474bc94fd527bbba1813f9d3c98688d206d450a12200509908204484102a420015290002948801424400a12200509908204484102a420015290002948801424e05f05d1783c1a134853e04e9d3a25050d1494929282a8a8283e4790e6284a410304d1011af81a171737ace72892073333332ee89541933419d7c7c787cf713d7af4a8f2f2f0823e51a15e6c6a6acac795eedcb95339c204eddab58b8f09b6b7b787b7b7371a1b1bf9877d6495528f823e6dd0a5a035f5dd23f9e0c10394969622323212cb962de3639369b6761f7a67cf9ec5962d5b606d6dcda3a8a808353535a8aaaae2f7ed50949595e954d09a687dd5d5d5fc5e494a928080003e4b9a866fd344e43ef4c8627676369f256d6363c3538d4a8d5e2393143425589782d644eba3484d4dc5860d1b781fa675d308e5fe3769e9d11f345f9946979341ba26a21aa4a0dd8d82d24f97a2ff9a681a7b6c6c2c1fbc4d7206dea0c505d1ec68ea3d548bd1d1d15c127d63ff93ea5a848686f2aca1e1da546a2d2d2daffddc9f0beacf9d3b77505b5bfbcad46e9a4eae4b416ba235d234725aef9b01fe022c3651c1442d70410000000049454e44ae426082),
(56, 'TROQUEL 54', '1.98', 0x89504e470d0a1a0a0000000d494844520000008a000000570806000000db27dd95000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000081149444154785eed9d7f4c545716c7fda7c9264dbb69aa9644ab5501a158addda52a518a6e618b5b7fd4b1b61589a51b6aa70d8a2020518a0ebf6c6c581104b188409189a2d222118203a2cb2f150a0888604406951944fc01830282df7de73a6d0c36e6febb6fce273990c99b9964eefde49cf3deccbb77dc93274f30343484070f1ec06c36a3a3a3034d4d4db874e9121a1a1a386c2868ce1b1b1bd1d2d282b6b636dcbc79137d7d7d181d1dc538fa430fdadbdb51595989fcfc7c1c3c7890c306233d3d5d4446460672727260301870edda3591488428bdbdbda8abab835eaf874ea74350501022232311171787d8d85844474773a838626262c43c47454561fbf6edd8b46913424242b06fdf3e9c3f7f1e0f1f3e84283d77efdec5850b17b067cf1ef8f8f8202c2c0cb9b9b9282f2fc7d9b3678559a74f9fe65069949696a2acac0ca74e9d12d964fdfaf5d068342261141414888a2344a18c72f1e245242525c1dfdf1f898989a8adadc5ad5bb770e3c60d5cbf7e9d43c561341ac53c5fbd7a15d5d5d5d8ba75ab48181b376ec489132770fffefda7a5a7a7a7478892969686f0f070e4e5e5c1643289da34383888478f1e71a838688e29060606840b292929d06ab5080c0cc4b163c770efdebda7a2dcbe7d5b8892959525ead599336760b158c0d81e54618e1c3982e0e060517aa805794e94cccc4cd1dc504f42a7cb8ced313c3c2cce78366fde2c44f9d38c42a250e74b0d0ed525c6f6a076e3f0e1c32c0af3625814460a168591824561a4605118295814460a168591824561a4605118295814460a168591824561a4605118295814460a168591824561a4605118295814460a168591824561a4605118295814460a168591824561a4605118295814460a168591824561a4605118295814460a168591824561a4605118295814460a16859182451903ad7e28c3a8f2bcc7232362113c1a44fa2ffbdaff47589431d080d0baaab42af30325fafafb31fcf8f1731290187d7dfd307777a3b3b3536c24f058799e5a6151c6d0a37ce696cb97c54acd151515a8aaaa427d7dbd58c999964efd5d181a381a1fda7dc2a08c4b89c18001cb8038a646589431343737e3707636a2743a446cdb86c8880844eddc899fb3b2d0d4d828068c1855ca8eb9eb168a8b0a11bf7b377ed8f503eedcb9238ea91116650c252525085206c363d1222c78df154bdcddb1d4cb0be1a1a1e218952562e8d143b45d6e425a4a32fc7cd7c1d7679dd82340adb028cf403d46eafefdf0f6fa2726d9d9c17eda34ac5cb60c991919a8282f87b1a3436c3d323a3a8292e2227cbf35144bdce6c369da5bf0fed0135d4a86512b2c8a15ea3da881dd1517877f782cc6944993e1e4e8882f3efb4cec0160ea32615819aca1c141749bcd888dd261e5526f38bd3515f66f4ec6ea152b70a7a7c7fa6eea8345b142d9844ac796e060a5e4ccc3c4d7c7c36ee244b8cd9f8fc48404fc565b2b2419b05850555989951f7f8c79efcd85a3228af38ce9f85ca3c17d65e0d40a8b62850682f6a5090a0c141965a683231c67d863eeec39d02c5f8ebd7bfe8366a5996dbd7205a929fbe1646f8f396f3b63ee2c17cc7571c19a4f3e115987c64d8db02856687f9ad6d6561c4c4b434a72b21894a2538538969b0bafc51ef058e8862fd7adc5b75ffbc3dbd3136f8c9f80194a6fe2ece08059331de0e9f101f27fcd47fbb576d1c7a80d16c50a7dae8a8a7224eddd8b6ce554b8b4c480eaaa6afc9af70b962c5a88d9ce33e1be601efee5e589c50b17c271fa743828317dca14cc98fa2616b8ba22eda73434d437a0bfbfdffaaeea8145b162eaeac211bd1e9bbefb163feeda85cc43e9d89798244ad11c97b731c7d94908b37ac5727caa34ae0b5cff8e779c9d3175d2244cb67b4394a8fdc929a8ffad9e4551b328373a3bf193726abcd4f343ac5fbb16fe7e5f8aeb272e4e4e8a282e58f6d14708d07e035de4f788ddb9035facd628cdecdf603761025e7bf555cc7699057d8e1e6dad6d5c7ad42c8ad964424e7636dcdddce0f6be2bde559a54bbf1afe3af2fbf8c65dede88dcb64d39fe334a4e17a3aca4443c5eb2c81dafbdf20afef2d24b7857c928e7ce9d136346df03a90d16c50a7df1d769ec44725212c24242f0f5bfbf82ff577e080f0b45a9f2b93b8d4671d9fe77687771ba381718b011df69b588dffde31f576dd5088b62852eb851c9b8d2d222367f3e77b60cff5532446d4d0d6e77778b6b28cf4217e768fbf90bca73ababaa70b9b9997f66600ba2302f864561a4605118295814460a168591824561a4605118295814460a168591824561a4605118295814460a168591824561a4605118295814460a168591424a94acac2c4447478b9bb4e9975d8ced417752eaf57a21c90b45898d8d15f7e05a2c16eb4b195be3e8d1a3080e0e16a2e4e6e6fe79e9d1e974a2f4d062328ced41a5273b3b1b818181cf67145a1886443970e000b66cd9220e9a4c4fefafa554442f1e1c1ce45069d06d2734cff4a373b3d98c8484046cd8b041c872fcf8f1a7a2d02fca7b7b7bc51255f1f1f1f0f1f1116987ac32180c282e2e464141014e9e3cc9a1d2282c2c44515111f2f2f2909a9a0a5f5f5fac5ab54a7840734ffdaac8283d3d3d620d3332c9cfcf4fc8121a1a8a989818d1dceed8b18343c541ed069ded464444882ca2d168b066cd1af1989205dd3a2b44a18c52575727ba5d7a8156ab15a747244b484808878d0465109af780800084858589ec422d099524517ae80c8796c6aca9a9112928232303e9e9e97fc4a1438738541ccfce33cd3d250c2a43b45a2679413dcc38ea74474646843574918dca101d341a8de8e8e8e0b0b1a079a715a9a8a9a52696d693a164224461981703fc0f406459edde6be7690000000049454e44ae426082),
(57, 'TROQUEL 55', '2.45', 0x89504e470d0a1a0a0000000d49484452000000880000006508060000009660ab0e000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000073149444154785eedddfb4f546702c671fe8d35a96d75b1d5daea969b0a2828e0a5e16237249ddd35b602bb5e08205314675d4161ca74915bb7a00e974934eab0a1db0a54c00e432d776c89975d416965414504840e0805419f7ddfb3b3c9ba35effe7ee6f9246f229ccc49e07cf39ef760725eafb6b636e4e5e5c16834223b3b1b959595e8e8e8c0e0e0a03606060638743ce435be7bf72efafafa50535383dcdc5c6d545757e3f6eddbf06a69694141410132333361b3d9d0dddd0d97cb05f23cbdbdbda8aaaac2891327505b5bab7dedd5dadaaa0572e4c811949696a2b3b313a3a3a3ee8f90a7989f9fc78d1b3760b7db515c5cac0572ebd6ade703b15aad686f6fc7c3870fdd1f234f313737876bd7aee1dcb9730c847e8e81901203212506424a0c84941808293110526220a4c440488981901203212506424a0c84941808293110526220a4c440488981901203212506424a0c84941808293110526220a4c440488981901203212506424a0c84941808293110526220a4c440488981901203212506e2f6f4e9532c2c2c3c37e4f7fedbff1e7ff6ec99fb887e3110415ee8274f9ee0f1d414c646c7b49f7378f821464746313939850511ca9c383e258e8f8f8f6b6f7b94c7c7c72730333df3b390f48481083290b9d95911c728ba3abbd0e870a0beae1e8eaf1c686d6945ff3ffb31323282a1a121f4f4f4a0a5b9050df50d687236a1a3ad5dfbde884e7f370cc46d5ecc100f1e3c80f59415874d26ec4f4e419ad18843070ea0d26ec7b5ab57b55fcca58606e4e51e8731653fd2528d38f8611a0af3f3452c4ef799f48581b8c95b4c7f7f3ff6edd98b90e060f8fdea6dac5fb70ea1e2df47338e88d9e42bed65c2d653a7f05e6c2cd6fafb2168ed1a04ad598bdf190cb05554b8cfa42f0c4458989fc7bdc1417c595d8d75010158f2ca2bf059bd1a3b77ec802527074e47239a2f5f86adbc5cfbde1baf2f47586828529292505850881af1b9de9e5e5d2e5a198820d71f57bbbb515c548437972f87f7d225d81014840f53f7e3f3cfaa70abb7078e4b0dda4c12b16913bc972cc5afa3a3916bb188b5481deefcf03d1e3f7ecc40f41ac8ccf4349a1a1b614a4bc3cb8b1661b118beabdec2ae1dbf4169c9a7686e72a2a2cc8af80fded76696977eb1089bd607c39894085be94974b4366378e83e03d16d2033335a2087d3d3e12b02f05db50ac1017e888ddc0663e21e7c723c17d99919f87ddc2e6c098f80ffdb3e08178118de8d4262c20728f8730e2e3b1deeb3e90b0311e48e06f7eeddc395ae2e381b9dda13c9c52f6b612d29c6de8478c4c6c4e063f34770345cc277df7e07b9974ef5179fc37c3403ef46be83c82d11301fcb749f4d5f3c3e101987fcc397dc0fa7a1be1e7fbf711ddff7f5691114ffe553ed8925502c5c93f6258af5c8676231da83c18101d45dbc88f40369d810b84ecc3601301d3ce83ea3be78742072cd302d1697723f940af18472e8603afe56f557318b38c49aa30c0971f158ebe78f37bc9761e3fa0d484d4981fdec59347fdd84ec63c710111686a58b17638d8f0f8e8adf931e797c20539393e8eaec84392b0b91dbde41f2be3d387c281d3b0c0604880bbf7ae54a840605638daf2f368584e00ff1f1387af88f080f0dc1ab228e5f8a4762f944535e5aea3eabbe787c203f8905aadc62cb7af2247efb9e01214181da6de3cdd75fc3cad7962172eb16fcc964c2ae9d3bb159cc18612292f0900df07e7931562cf346d4b66db098cd68696e769f555fb848751b1b1bd3661293b8cdec4e481033c95e7c92771c5f3b1be19a74a1ffce1dd4d6d4e0638b05498989e289e700ced82ac4c2b653fbec531d3ee24a0cc44d2e5627c6c7c505bf82e66fbe41bbf8f97b6efe432c6047b4e3b3b3b318ba7f1fd7af5f479b38d6fded1511cd0f70fdf823ff37d71302a1176320a4c440488981901203212506424a0c84941808293110526220a4c440488981901203212506424a0c84941808293110526220a4c440488981901203212506424a0c84941808293110526220a4c440488981901203212506424a0c84941808293110526220a4c44048898190120321a5ff1b48464606cacacab4cd74e42babc9b3c88d96e49b1ded763b4a4a4a5e1c48797939bababa1888079281c857955756563e1f887c997d6161214c26138a8a8ae0743a313c3cecfe18791219889c24640f3290bebe3e78c935477e7e3e929393b5486c369b769b91f724f95259b9c392dc2694439f435e63397bc8dd3eebeaea90959505b3d98c0b172efc3b103983e4e4e4c0603060fbf6ed888b8bd36e37e7cf9fd7162c67ce9cc1e9d3a739743ae43596eb0ef98062341a111d1d8d949414edfacb77db7bc9d9c262b120262606fefefef0f1f1416060a0f6b51c5151511c3a1ef21acb8961ebd6adf0f3f3c38a152bb07bf76e2d9e9b376fc24b6e162c6789d4d454c4c6c662f3e6cdd8b87123222222383c688485852144ee70111eaedd62e41a446e1feb25f7a6ffcf5ac3e572695b923f7af448dbd980c3b386bcee131313989e9ed6d6a0b20d2ff70296e805807f01ca6bb11e02592f270000000049454e44ae426082),
(58, 'TROQUEL 56', '1.18', 0x89504e470d0a1a0a0000000d4948445200000042000000750806000000fa2b37fd000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000077e49444154785eed9d6b50945518c7fb52338d1ffa52963536597999b2d44c8354440561b9c896a244019a82d40882028a80211436e4a544011105944534c7ac091411426e2e289aa9a010205e40c5fb0defffdee7f4604e68d36567b6dd797e33cff0cebecbee7b7efb9c73de9d39679fc720281e29e2debd7b56177f851271e7ce1d5cbe7c19a74e9dc2f1e3c771ecd831b4b4b4e0e8d1a3686e6eb69aa0369d3c7952b5f5e6cd9bb87bf7ae924028111d1d1d686c6c44595919f2f2f2505050806ddbb661ebd6ad5611f9f9f9f783da565f5f8ff3e7cfab04e844892043959595484d4d456c6c2c162d5a8465cb96212525453d4641c7961874ed696969484e4e466262a26a1fc9a1ccef22e2cc993330180c9832650a9c9c9c101919a944ac5bb70e1b366cc0faf5ebd5794b8cdcdc5c6cdebc19d9d9d9080d0d858d8d0de6cf9f8fbaba3a25a01325a2adad0de9e9e9f0f6f686bbbb3bb2b2b2b063c70e188d46d4d4d460f7eedda8aaaab2c8d8b3670ff6efdf8feaea6a95117676769833670e0e1d3aa40474a244b4b6b6aaf4f1f1f1515971e0c0019525172e5cc0c58b1755d0b125065dfba54b97d4f1c68d1b3171e244c4c4c4a0b6b65609e8e4be88952b572a09c1c1c1ea1fad91e2e2624c9f3e1d7171710fef1a9d19412282828270f6ec5975d2da282c2c84bfbfffdf133163c60cd52dac91eddbb763dab46922424430228211118c8860440423221811c18808464430228211118c8860440423221811c18808464430228211118c8860440423221811c18808464430228211118c8860440423221811c188084644302282b11811b76eddc2f5eb1db876ed9a5a167debf66d3e631acc2ee2f7065e574b9d2f6971f9ca15f5d8dd3fad983f77ee1c1a1b9b505b5b87865f7f558be41f5c38fe5f31bb085aae486f6cdcb50b151515d8a5fdddb76f1f9a1a1bd59acece2d04479b9bf1537111366ec8c5a64ddfa2b4b454ada23715661741ab5cb3d765236ec10244474521362606f1b1b1589b9989fd3fffacb2833852570b435606a2e78423746630962c5eacb2c854985d44715191d6b0108c1c3e1c36438660b49d1d5cc68ec5dcf0706c2f28c0d5ab57d5f38c156548fc7c013e18ef81712e3acc0e0951db094c85594550daaf4e4f879bce193d7bf4c02b2ff582879b1bd66665a1baaa4a6d17387dfa140efef20b823e0984a3fd48e8dd5c91f8e542ecaeaeb68eae411268f4a714d78d7544af9e3dd1af771f4c9ae0a98d05c59a80d3e8b87103274f1c47417e1e86bf3314fd5eed0dfdb871c8d2ba8da933d36c2268c43fdbde8e98e868ad5b0c438feeddb57816b643dfc1524d8e7197511b48cfa1591b340d599978f1b967d1e3e96730c6de1e890b17625f4d0dbf9269309b88dbda7dc0b19616444546c2d9d111aff7eb87beda273ee8cd01707376c617f1f12a332acbcaf0cda2aff0f20bcfa3b7d67546d8dae2635f5fa4242dc3156db034d5146a361137b4b46fa8af47c69a35484d4ec67a830185dac57cbf658b1a30870c1c08bdab2bfc27fb61f207931030c50f612133f169803f3c3ddce03d418f126d3a6d6d6d33c958613611748f50595e8e6f962c41e69ad5282cd8a606c8bc1ff3e0307224faf7ed0ddbb7df82f3e85170711885286dda4c4e4ac2c2f838f87a79e27d57276cd5c60e8b17417786b9393998aebdf9e7b19f212d650592befe1ae1b36663e8a041183a70009cc78c82bbd358d80fb355d3e59a55e9485aba041f7fe405bd8b134a7796a8bbd10737a2fd5bcc26e2c48913484b4dc5e81123e0a9f7c087933c3146cb84d7faf455ddc27bc2784486cdc2ece020b8393961bcfe3d7c16158d7911e19830ce55eb363a1c3c78a0cbadf8bfc56c22687a346467c366f0600c7aa33ffabcdc0b4f75eb86271f7f02ee3a1d121312f0c396ef6058bb561b170230e0f5fed06983aaced101efbe3d181eae2e6a33aea9309b08ba75a6596385d6ef23c2c230557b7d3f1f1fed2e7326f2f3f254c610f46dd358598919818198367932fca74e4558e82cac4c49515fd64c85d944d00d1535e4f0e1c36abb61e9ce52ec2c294195d18836ed3d1f1c00cf6bdf3c2bb481b5449b4e3b9f73e4c811938c0d9d984dc4ff0d11c18808464430228211118c8860440423221811c18808464430228211118c8860440423221811c18808464430228211118c8860440423221811c18808464430228211118c8860440423221811c18808464430228211118c8860440423221811c1880846443022821111cc3f16d1dedeae4e5a1bff48041523a20a46d648515111020202101f1f2f2248c42333820a96ad5ab54ad5e9f2f2f2424949099a9a9a54172129b4519d7efac01283ae9fb64ad16f53e4e4e440afd763debc790fafd3459bd0323333e1e7e7a72ab7510d3c2a0048bff3600d95dba8d1b4958a6a143a3838202a2aeae122e893a79a7794363a9d4ed5bc4b4848c0f2e5cb5521332a0c4845012d31e8fae943a6639a08eceded55db4844973297943e54f1904abbf9fafa22303010212121888888c0dcb9735550fd3b4b0cba76ca006a0bcd189e9e9ec8c8c840434343d7ea8eb4999db28276d5edddbb571533a4b297e5e5e5561154c794fe529ba89bd3e4403fded1252308da9a4827c81289a1a07d9bd614d4266a1fb595e20f80df003b4dc887be8eb0130000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_user` int(11) NOT NULL,
  `Nombre_user` varchar(255) NOT NULL,
  `Contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_user`, `Nombre_user`, `Contrasena`) VALUES
(1, 'BTENDER', '$2y$10$0kMbMCz5tVp9iXnYp3Zif.lF69ydV.PR9afqO0Nto4OFrd1FCpKAu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bordado`
--
ALTER TABLE `bordado`
  ADD PRIMARY KEY (`Id_bordado`);

--
-- Indices de la tabla `confeccion`
--
ALTER TABLE `confeccion`
  ADD PRIMARY KEY (`Id_confeccion`);

--
-- Indices de la tabla `cortedigital`
--
ALTER TABLE `cortedigital`
  ADD PRIMARY KEY (`Id_cortedigital`);

--
-- Indices de la tabla `cortemanual`
--
ALTER TABLE `cortemanual`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indices de la tabla `costos`
--
ALTER TABLE `costos`
  ADD PRIMARY KEY (`Id_costos`);

--
-- Indices de la tabla `cueros`
--
ALTER TABLE `cueros`
  ADD PRIMARY KEY (`Id_cuero`);

--
-- Indices de la tabla `detallesbordado`
--
ALTER TABLE `detallesbordado`
  ADD PRIMARY KEY (`Id_detabordado`),
  ADD KEY `detallestela_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detallesconfeccion`
--
ALTER TABLE `detallesconfeccion`
  ADD PRIMARY KEY (`Id_detaconfeccion`),
  ADD KEY `detallestela_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detallescortedigital`
--
ALTER TABLE `detallescortedigital`
  ADD PRIMARY KEY (`Id_detacortedigital`),
  ADD KEY `detallestela_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detallescortemanual`
--
ALTER TABLE `detallescortemanual`
  ADD PRIMARY KEY (`Id_detacortemanual`),
  ADD KEY `ID_FACTURA` (`ID_COSTOS`);

--
-- Indices de la tabla `detallescuero`
--
ALTER TABLE `detallescuero`
  ADD PRIMARY KEY (`Id_detacuero`),
  ADD KEY `detallescuero_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detallesentretelado`
--
ALTER TABLE `detallesentretelado`
  ADD PRIMARY KEY (`Id_detaentretelado`),
  ADD KEY `detallestela_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detallesinsumos`
--
ALTER TABLE `detallesinsumos`
  ADD PRIMARY KEY (`Id_detainsumos`),
  ADD KEY `detallestela_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detalleslaser`
--
ALTER TABLE `detalleslaser`
  ADD PRIMARY KEY (`Id_detalaser`),
  ADD KEY `detallestela_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detallessublimacion`
--
ALTER TABLE `detallessublimacion`
  ADD PRIMARY KEY (`Id_detatela`),
  ADD KEY `detallestela_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detallestela`
--
ALTER TABLE `detallestela`
  ADD PRIMARY KEY (`Id_detatela`),
  ADD KEY `detallestela_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detallesterminacion`
--
ALTER TABLE `detallesterminacion`
  ADD PRIMARY KEY (`Id_detaterminacion`),
  ADD KEY `detallestela_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `detatempbordado`
--
ALTER TABLE `detatempbordado`
  ADD PRIMARY KEY (`Id_tempbordado`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatempconfeccion`
--
ALTER TABLE `detatempconfeccion`
  ADD PRIMARY KEY (`Id_tempconfeccion`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatempcortedigital`
--
ALTER TABLE `detatempcortedigital`
  ADD PRIMARY KEY (`Id_tempcortedigital`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatempcortemanual`
--
ALTER TABLE `detatempcortemanual`
  ADD PRIMARY KEY (`Id_tempcortemanual`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatempcuero`
--
ALTER TABLE `detatempcuero`
  ADD PRIMARY KEY (`Id_tempcuero`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatempentretelado`
--
ALTER TABLE `detatempentretelado`
  ADD PRIMARY KEY (`Id_tempentretelado`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatempinsumos`
--
ALTER TABLE `detatempinsumos`
  ADD PRIMARY KEY (`Id_tempinsumo`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatemplaser`
--
ALTER TABLE `detatemplaser`
  ADD PRIMARY KEY (`Id_templaser`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatempsublimacion`
--
ALTER TABLE `detatempsublimacion`
  ADD PRIMARY KEY (`Id_tempsublimacion`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatemptelas`
--
ALTER TABLE `detatemptelas`
  ADD PRIMARY KEY (`Id_temptela`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indices de la tabla `detatempterminacion`
--
ALTER TABLE `detatempterminacion`
  ADD PRIMARY KEY (`Id_tempterminacion`),
  ADD KEY `detatempterminacion_ibfk_1` (`ID_USER`);

--
-- Indices de la tabla `entretelado`
--
ALTER TABLE `entretelado`
  ADD PRIMARY KEY (`Id_entretelado`);

--
-- Indices de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  ADD PRIMARY KEY (`Id_impuesto`);

--
-- Indices de la tabla `impuestoscostos`
--
ALTER TABLE `impuestoscostos`
  ADD PRIMARY KEY (`Id_detaimpuestos`),
  ADD KEY `impuestoscostos_ibfk_2` (`Valor_impuesto`),
  ADD KEY `impuestoscostos_ibfk_1` (`ID_COSTOS`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`Id_insumo`);

--
-- Indices de la tabla `laser`
--
ALTER TABLE `laser`
  ADD PRIMARY KEY (`Id_laser`);

--
-- Indices de la tabla `procesos`
--
ALTER TABLE `procesos`
  ADD PRIMARY KEY (`Id_proceso`);

--
-- Indices de la tabla `sublimacion`
--
ALTER TABLE `sublimacion`
  ADD PRIMARY KEY (`Id_sublimacion`);

--
-- Indices de la tabla `telas`
--
ALTER TABLE `telas`
  ADD PRIMARY KEY (`Id_tela`);

--
-- Indices de la tabla `terminacion`
--
ALTER TABLE `terminacion`
  ADD PRIMARY KEY (`Id_terminacion`);

--
-- Indices de la tabla `troquel`
--
ALTER TABLE `troquel`
  ADD PRIMARY KEY (`Id_troquel`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_user`),
  ADD KEY `Nombre_user` (`Nombre_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bordado`
--
ALTER TABLE `bordado`
  MODIFY `Id_bordado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `confeccion`
--
ALTER TABLE `confeccion`
  MODIFY `Id_confeccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cortedigital`
--
ALTER TABLE `cortedigital`
  MODIFY `Id_cortedigital` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `costos`
--
ALTER TABLE `costos`
  MODIFY `Id_costos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cueros`
--
ALTER TABLE `cueros`
  MODIFY `Id_cuero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `detallesbordado`
--
ALTER TABLE `detallesbordado`
  MODIFY `Id_detabordado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallesconfeccion`
--
ALTER TABLE `detallesconfeccion`
  MODIFY `Id_detaconfeccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallescortedigital`
--
ALTER TABLE `detallescortedigital`
  MODIFY `Id_detacortedigital` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallescortemanual`
--
ALTER TABLE `detallescortemanual`
  MODIFY `Id_detacortemanual` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallescuero`
--
ALTER TABLE `detallescuero`
  MODIFY `Id_detacuero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallesentretelado`
--
ALTER TABLE `detallesentretelado`
  MODIFY `Id_detaentretelado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallesinsumos`
--
ALTER TABLE `detallesinsumos`
  MODIFY `Id_detainsumos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalleslaser`
--
ALTER TABLE `detalleslaser`
  MODIFY `Id_detalaser` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallessublimacion`
--
ALTER TABLE `detallessublimacion`
  MODIFY `Id_detatela` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallestela`
--
ALTER TABLE `detallestela`
  MODIFY `Id_detatela` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallesterminacion`
--
ALTER TABLE `detallesterminacion`
  MODIFY `Id_detaterminacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatempbordado`
--
ALTER TABLE `detatempbordado`
  MODIFY `Id_tempbordado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatempconfeccion`
--
ALTER TABLE `detatempconfeccion`
  MODIFY `Id_tempconfeccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatempcortedigital`
--
ALTER TABLE `detatempcortedigital`
  MODIFY `Id_tempcortedigital` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatempcortemanual`
--
ALTER TABLE `detatempcortemanual`
  MODIFY `Id_tempcortemanual` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatempcuero`
--
ALTER TABLE `detatempcuero`
  MODIFY `Id_tempcuero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatempentretelado`
--
ALTER TABLE `detatempentretelado`
  MODIFY `Id_tempentretelado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatempinsumos`
--
ALTER TABLE `detatempinsumos`
  MODIFY `Id_tempinsumo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatemplaser`
--
ALTER TABLE `detatemplaser`
  MODIFY `Id_templaser` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatempsublimacion`
--
ALTER TABLE `detatempsublimacion`
  MODIFY `Id_tempsublimacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatemptelas`
--
ALTER TABLE `detatemptelas`
  MODIFY `Id_temptela` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detatempterminacion`
--
ALTER TABLE `detatempterminacion`
  MODIFY `Id_tempterminacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entretelado`
--
ALTER TABLE `entretelado`
  MODIFY `Id_entretelado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  MODIFY `Id_impuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `impuestoscostos`
--
ALTER TABLE `impuestoscostos`
  MODIFY `Id_detaimpuestos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `Id_insumo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `laser`
--
ALTER TABLE `laser`
  MODIFY `Id_laser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT de la tabla `procesos`
--
ALTER TABLE `procesos`
  MODIFY `Id_proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `sublimacion`
--
ALTER TABLE `sublimacion`
  MODIFY `Id_sublimacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `telas`
--
ALTER TABLE `telas`
  MODIFY `Id_tela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `terminacion`
--
ALTER TABLE `terminacion`
  MODIFY `Id_terminacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `troquel`
--
ALTER TABLE `troquel`
  MODIFY `Id_troquel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallesbordado`
--
ALTER TABLE `detallesbordado`
  ADD CONSTRAINT `detallesbordado_ibfk_1` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallesconfeccion`
--
ALTER TABLE `detallesconfeccion`
  ADD CONSTRAINT `detallesconfeccion_ibfk_1` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallescortedigital`
--
ALTER TABLE `detallescortedigital`
  ADD CONSTRAINT `detallescortedigital_ibfk_1` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallescortemanual`
--
ALTER TABLE `detallescortemanual`
  ADD CONSTRAINT `detallescortemanual_ibfk_2` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallescuero`
--
ALTER TABLE `detallescuero`
  ADD CONSTRAINT `detallescuero_ibfk_1` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallesentretelado`
--
ALTER TABLE `detallesentretelado`
  ADD CONSTRAINT `detallesentretelado_ibfk_2` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallesinsumos`
--
ALTER TABLE `detallesinsumos`
  ADD CONSTRAINT `detallesinsumos_ibfk_1` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalleslaser`
--
ALTER TABLE `detalleslaser`
  ADD CONSTRAINT `detalleslaser_ibfk_2` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallessublimacion`
--
ALTER TABLE `detallessublimacion`
  ADD CONSTRAINT `detallessublimacion_ibfk_1` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallestela`
--
ALTER TABLE `detallestela`
  ADD CONSTRAINT `detallestela_ibfk_1` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detallesterminacion`
--
ALTER TABLE `detallesterminacion`
  ADD CONSTRAINT `detallesterminacion_ibfk_2` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatempbordado`
--
ALTER TABLE `detatempbordado`
  ADD CONSTRAINT `detatempbordado_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatempconfeccion`
--
ALTER TABLE `detatempconfeccion`
  ADD CONSTRAINT `detatempconfeccion_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatempcortedigital`
--
ALTER TABLE `detatempcortedigital`
  ADD CONSTRAINT `detatempcortedigital_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatempcortemanual`
--
ALTER TABLE `detatempcortemanual`
  ADD CONSTRAINT `detatempcortemanual_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatempcuero`
--
ALTER TABLE `detatempcuero`
  ADD CONSTRAINT `detatempcuero_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatempentretelado`
--
ALTER TABLE `detatempentretelado`
  ADD CONSTRAINT `detatempentretelado_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatempinsumos`
--
ALTER TABLE `detatempinsumos`
  ADD CONSTRAINT `detatempinsumos_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatemplaser`
--
ALTER TABLE `detatemplaser`
  ADD CONSTRAINT `detatemplaser_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatempsublimacion`
--
ALTER TABLE `detatempsublimacion`
  ADD CONSTRAINT `detatempsublimacion_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatemptelas`
--
ALTER TABLE `detatemptelas`
  ADD CONSTRAINT `detatemptelas_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `detatempterminacion`
--
ALTER TABLE `detatempterminacion`
  ADD CONSTRAINT `detatempterminacion_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `usuarios` (`Id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `impuestoscostos`
--
ALTER TABLE `impuestoscostos`
  ADD CONSTRAINT `impuestoscostos_ibfk_1` FOREIGN KEY (`ID_COSTOS`) REFERENCES `costos` (`Id_costos`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
