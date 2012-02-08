-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-02-2012 a las 21:24:32
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Base de datos: `rendimiento_progreso3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonus`
--

CREATE TABLE IF NOT EXISTS `bonus` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `bonus_matematica11` int(4) DEFAULT NULL,
  `bonus_lenguaje11` int(4) DEFAULT NULL,
  `bonus_total11` int(4) DEFAULT NULL,
  `bonus_matematica5` int(4) DEFAULT NULL,
  `bonus_lenguaje5` int(4) DEFAULT NULL,
  `bonus_total5` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonus5`
--

CREATE TABLE IF NOT EXISTS `bonus5` (
  `ie` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `total_matematicas_5` decimal(12,7) DEFAULT NULL,
  `total_lenguaje_5` decimal(12,7) DEFAULT NULL,
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `bonus_matematica5` int(2) DEFAULT NULL,
  `bonus_lenguaje5` int(2) DEFAULT NULL,
  `bonus_total5` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bonus11`
--

CREATE TABLE IF NOT EXISTS `bonus11` (
  `ie` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `total_matematicas` decimal(12,7) DEFAULT NULL,
  `total_lenguaje` decimal(12,7) DEFAULT NULL,
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `bonus_matematica11` int(4) DEFAULT NULL,
  `bonus_lenguaje11` int(4) DEFAULT NULL,
  `bonus_total11` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eficiencia_interna_oficial c600`
--

CREATE TABLE IF NOT EXISTS `eficiencia_interna_oficial c600` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cons_sede` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_ie` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `comuna_ie` int(11) DEFAULT NULL,
  `nucleo` int(11) DEFAULT NULL,
  `aprobacion` decimal(12,7) DEFAULT NULL,
  `aprobacion0` decimal(12,7) DEFAULT NULL,
  `aprobacion01` decimal(12,7) DEFAULT NULL,
  `aprobacion1` decimal(12,7) DEFAULT NULL,
  `aprobacion2` decimal(12,7) DEFAULT NULL,
  `aprobacion3` decimal(12,7) DEFAULT NULL,
  `aprobacion4` decimal(12,7) DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion6` decimal(12,7) DEFAULT NULL,
  `aprobacion7` decimal(12,7) DEFAULT NULL,
  `aprobacion8` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `aprobacion10a` decimal(12,7) DEFAULT NULL,
  `aprobacion11a` decimal(12,7) DEFAULT NULL,
  `aprobacion10t` decimal(12,7) DEFAULT NULL,
  `aprobacion11t` decimal(12,7) DEFAULT NULL,
  `aprobacion10` decimal(12,7) DEFAULT NULL,
  `aprobacion110` decimal(12,7) DEFAULT NULL,
  `aprobacion12` decimal(12,7) DEFAULT NULL,
  `aprobacion13` decimal(12,7) DEFAULT NULL,
  `aprobacion21` decimal(12,7) DEFAULT NULL,
  `aprobacion220` decimal(12,7) DEFAULT NULL,
  `aprobacion23` decimal(12,7) DEFAULT NULL,
  `aprobacion24` decimal(12,7) DEFAULT NULL,
  `aprobacion25` decimal(12,7) DEFAULT NULL,
  `aprobacion26` decimal(12,7) DEFAULT NULL,
  `aprobaciontotal_ed_escolar` decimal(12,7) DEFAULT NULL,
  `aprobacionpreesc_ed_escolar` decimal(12,7) DEFAULT NULL,
  `aprobaciontrasicion_ed_escolar` decimal(12,7) DEFAULT NULL,
  `aprobacionprimaria_ed_escolar` decimal(12,7) DEFAULT NULL,
  `aprobacionsecundaria_ed_escolar` decimal(12,7) DEFAULT NULL,
  `aprobacionmedia_ac_ed_escolar` decimal(12,7) DEFAULT NULL,
  `aprobacionmedia_tec_ed_escolar` decimal(12,7) DEFAULT NULL,
  `aprobacionmedia_ed_escolar` decimal(12,7) DEFAULT NULL,
  `aprobaciontotal_ed_escolar0` decimal(12,7) DEFAULT NULL,
  `aprobacionprimaria_ad` decimal(12,7) DEFAULT NULL,
  `aprobacionsecun_ad` decimal(12,7) DEFAULT NULL,
  `aprobacionmedia_ad` decimal(12,7) DEFAULT NULL,
  `aprobaciontotal_adult` decimal(12,7) DEFAULT NULL,
  `aprobacionpresc_total` decimal(12,7) DEFAULT NULL,
  `aprobaciontransicion_total` decimal(12,7) DEFAULT NULL,
  `aprobacionprimar_total` decimal(12,7) DEFAULT NULL,
  `aprobacionsecunda_total` decimal(12,7) DEFAULT NULL,
  `aprobacionmedia_total` decimal(12,7) DEFAULT NULL,
  `aprobaciontotal_general` decimal(12,7) DEFAULT NULL,
  `repro` decimal(12,7) DEFAULT NULL,
  `repro0` decimal(12,7) DEFAULT NULL,
  `repro01` decimal(12,7) DEFAULT NULL,
  `repro1` decimal(12,7) DEFAULT NULL,
  `repro2` decimal(12,7) DEFAULT NULL,
  `repro3` decimal(12,7) DEFAULT NULL,
  `repro4` decimal(12,7) DEFAULT NULL,
  `repro5` decimal(12,7) DEFAULT NULL,
  `repro6` decimal(12,7) DEFAULT NULL,
  `repro7` decimal(12,7) DEFAULT NULL,
  `repro8` decimal(12,7) DEFAULT NULL,
  `repro9` decimal(12,7) DEFAULT NULL,
  `repro10a` decimal(12,7) DEFAULT NULL,
  `repro11a` decimal(12,7) DEFAULT NULL,
  `repro10t` decimal(12,7) DEFAULT NULL,
  `repro11t` decimal(12,7) DEFAULT NULL,
  `repro10` decimal(12,7) DEFAULT NULL,
  `repro110` decimal(12,7) DEFAULT NULL,
  `repro12` decimal(12,7) DEFAULT NULL,
  `repro13` decimal(12,7) DEFAULT NULL,
  `repro21` decimal(12,7) DEFAULT NULL,
  `repro220` decimal(12,7) DEFAULT NULL,
  `repro23` decimal(12,7) DEFAULT NULL,
  `repro24` decimal(12,7) DEFAULT NULL,
  `repro25` decimal(12,7) DEFAULT NULL,
  `repro26` decimal(12,7) DEFAULT NULL,
  `reprototal_ed_escolar` decimal(12,7) DEFAULT NULL,
  `repropreesc_ed_escolar` decimal(12,7) DEFAULT NULL,
  `reprotrasicion_ed_escolar` decimal(12,7) DEFAULT NULL,
  `reproprimaria_ed_escolar` decimal(12,7) DEFAULT NULL,
  `reprosecundaria_ed_escolar` decimal(12,7) DEFAULT NULL,
  `repromedia_ac_ed_escolar` decimal(12,7) DEFAULT NULL,
  `repromedia_tec_ed_escolar` decimal(12,7) DEFAULT NULL,
  `repromedia_ed_escolar` decimal(12,7) DEFAULT NULL,
  `reprototal_ed_escolar0` decimal(12,7) DEFAULT NULL,
  `reproprimaria_ad` decimal(12,7) DEFAULT NULL,
  `reprosecun_ad` decimal(12,7) DEFAULT NULL,
  `repromedia_ad` decimal(12,7) DEFAULT NULL,
  `reprototal_adult` decimal(12,7) DEFAULT NULL,
  `repropresc_total` decimal(12,7) DEFAULT NULL,
  `reprotransicion_total` decimal(12,7) DEFAULT NULL,
  `reproprimar_total` decimal(12,7) DEFAULT NULL,
  `reprosecunda_total` decimal(12,7) DEFAULT NULL,
  `repromedia_total` decimal(12,7) DEFAULT NULL,
  `reprototal_general` decimal(12,7) DEFAULT NULL,
  `desert` decimal(12,7) DEFAULT NULL,
  `desert0` decimal(12,7) DEFAULT NULL,
  `desert01` decimal(12,7) DEFAULT NULL,
  `desert1` decimal(12,7) DEFAULT NULL,
  `desert2` decimal(12,7) DEFAULT NULL,
  `desert3` decimal(12,7) DEFAULT NULL,
  `desert4` decimal(12,7) DEFAULT NULL,
  `desert5` decimal(12,7) DEFAULT NULL,
  `desert6` decimal(12,7) DEFAULT NULL,
  `desert7` decimal(12,7) DEFAULT NULL,
  `desert8` decimal(12,7) DEFAULT NULL,
  `desert9` decimal(12,7) DEFAULT NULL,
  `desert10a` decimal(12,7) DEFAULT NULL,
  `desert11a` decimal(12,7) DEFAULT NULL,
  `desert10t` decimal(12,7) DEFAULT NULL,
  `desert11t` decimal(12,7) DEFAULT NULL,
  `desert10` decimal(12,7) DEFAULT NULL,
  `desert110` decimal(12,7) DEFAULT NULL,
  `desert12` decimal(12,7) DEFAULT NULL,
  `desert13` decimal(12,7) DEFAULT NULL,
  `desert21` decimal(12,7) DEFAULT NULL,
  `desert220` decimal(12,7) DEFAULT NULL,
  `desert23` decimal(12,7) DEFAULT NULL,
  `desert24` decimal(12,7) DEFAULT NULL,
  `desert25` decimal(12,7) DEFAULT NULL,
  `desert26` decimal(12,7) DEFAULT NULL,
  `deserttotal_ed_escolar` decimal(12,7) DEFAULT NULL,
  `desertpreesc_ed_escolar` decimal(12,7) DEFAULT NULL,
  `deserttrasicion_ed_escolar` decimal(12,7) DEFAULT NULL,
  `desertprimaria_ed_escolar` decimal(12,7) DEFAULT NULL,
  `desertsecundaria_ed_escolar` decimal(12,7) DEFAULT NULL,
  `desertmedia_ac_ed_escolar` decimal(12,7) DEFAULT NULL,
  `desertmedia_tec_ed_escolar` decimal(12,7) DEFAULT NULL,
  `desertmedia_ed_escolar` decimal(12,7) DEFAULT NULL,
  `deserttotal_ed_escolar0` decimal(12,7) DEFAULT NULL,
  `desertprimaria_ad` decimal(12,7) DEFAULT NULL,
  `desertsecun_ad` decimal(12,7) DEFAULT NULL,
  `desertmedia_ad` decimal(12,7) DEFAULT NULL,
  `deserttotal_adult` decimal(12,7) DEFAULT NULL,
  `desertpresc_total` decimal(12,7) DEFAULT NULL,
  `deserttransicion_total` decimal(12,7) DEFAULT NULL,
  `desertprimar_total` decimal(12,7) DEFAULT NULL,
  `desertsecunda_total` decimal(12,7) DEFAULT NULL,
  `desertmedia_total` decimal(12,7) DEFAULT NULL,
  `deserttotal_general` decimal(12,7) DEFAULT NULL,
  `trans` decimal(12,7) DEFAULT NULL,
  `trans0` decimal(12,7) DEFAULT NULL,
  `trans01` decimal(12,7) DEFAULT NULL,
  `trans1` decimal(12,7) DEFAULT NULL,
  `trans2` decimal(12,7) DEFAULT NULL,
  `trans3` decimal(12,7) DEFAULT NULL,
  `trans4` decimal(12,7) DEFAULT NULL,
  `trans5` decimal(12,7) DEFAULT NULL,
  `trans6` decimal(12,7) DEFAULT NULL,
  `trans7` decimal(12,7) DEFAULT NULL,
  `trans8` decimal(12,7) DEFAULT NULL,
  `trans9` decimal(12,7) DEFAULT NULL,
  `trans10a` decimal(12,7) DEFAULT NULL,
  `trans11a` decimal(12,7) DEFAULT NULL,
  `trans10t` decimal(12,7) DEFAULT NULL,
  `trans11t` decimal(12,7) DEFAULT NULL,
  `trans10` decimal(12,7) DEFAULT NULL,
  `trans110` decimal(12,7) DEFAULT NULL,
  `trans12` decimal(12,7) DEFAULT NULL,
  `trans13` decimal(12,7) DEFAULT NULL,
  `trans21` decimal(12,7) DEFAULT NULL,
  `trans220` decimal(12,7) DEFAULT NULL,
  `trans23` decimal(12,7) DEFAULT NULL,
  `trans24` decimal(12,7) DEFAULT NULL,
  `trans25` decimal(12,7) DEFAULT NULL,
  `trans26` decimal(12,7) DEFAULT NULL,
  `transtotal_ed_escolar` decimal(12,7) DEFAULT NULL,
  `transpreesc_ed_escolar` decimal(12,7) DEFAULT NULL,
  `transtrasicion_ed_escolar` decimal(12,7) DEFAULT NULL,
  `transprimaria_ed_escolar` decimal(12,7) DEFAULT NULL,
  `transsecundaria_ed_escolar` decimal(12,7) DEFAULT NULL,
  `transmedia_ac_ed_escolar` decimal(12,7) DEFAULT NULL,
  `transmedia_tec_ed_escolar` decimal(12,7) DEFAULT NULL,
  `transmedia_ed_escolar` decimal(12,7) DEFAULT NULL,
  `transtotal_ed_escolar0` decimal(12,7) DEFAULT NULL,
  `transprimaria_ad` decimal(12,7) DEFAULT NULL,
  `transsecun_ad` decimal(12,7) DEFAULT NULL,
  `transmedia_ad` decimal(12,7) DEFAULT NULL,
  `transtotal_adult` decimal(12,7) DEFAULT NULL,
  `transpresc_total` decimal(12,7) DEFAULT NULL,
  `transtransicion_total` decimal(12,7) DEFAULT NULL,
  `transprimar_total` decimal(12,7) DEFAULT NULL,
  `transsecunda_total` decimal(12,7) DEFAULT NULL,
  `transmedia_total` decimal(12,7) DEFAULT NULL,
  `transtotal_general` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escala5_9_09`
--

CREATE TABLE IF NOT EXISTS `escala5_9_09` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `l5r` decimal(12,7) DEFAULT NULL,
  `m5r` decimal(12,7) DEFAULT NULL,
  `cn5r` decimal(12,7) DEFAULT NULL,
  `l9r` decimal(12,7) DEFAULT NULL,
  `m9r` decimal(12,7) DEFAULT NULL,
  `cn9r` decimal(12,7) DEFAULT NULL,
  `rango1_l5r` decimal(12,7) DEFAULT NULL,
  `rango2_l5r` decimal(12,7) DEFAULT NULL,
  `rango3_l5r` decimal(12,7) DEFAULT NULL,
  `rango4_l5r` decimal(12,7) DEFAULT NULL,
  `rango5_l5r` decimal(12,7) DEFAULT NULL,
  `rango6_l5r` decimal(12,7) DEFAULT NULL,
  `rango1_m5r` decimal(12,7) DEFAULT NULL,
  `rango2_m5r` decimal(12,7) DEFAULT NULL,
  `rango3_m5r` decimal(12,7) DEFAULT NULL,
  `rango4_m5r` decimal(12,7) DEFAULT NULL,
  `rango5_m5r` decimal(12,7) DEFAULT NULL,
  `rango6_m5r` decimal(12,7) DEFAULT NULL,
  `rango1_l9r` decimal(12,7) DEFAULT NULL,
  `rango2_l9r` decimal(12,7) DEFAULT NULL,
  `rango3_l9r` decimal(12,7) DEFAULT NULL,
  `rango4_l9r` decimal(12,7) DEFAULT NULL,
  `rango5_l9r` decimal(12,7) DEFAULT NULL,
  `rango6_l9r` decimal(12,7) DEFAULT NULL,
  `rango1_m9r` decimal(12,7) DEFAULT NULL,
  `rango2_m9r` decimal(12,7) DEFAULT NULL,
  `rango3_m9r` decimal(12,7) DEFAULT NULL,
  `rango4_m9r` decimal(12,7) DEFAULT NULL,
  `rango5_m9r` decimal(12,7) DEFAULT NULL,
  `rango6_m9r` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadores`
--

CREATE TABLE IF NOT EXISTS `indicadores` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07_p` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje_d` decimal(12,7) DEFAULT NULL,
  `tema_matematica_d` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(12,7) DEFAULT NULL,
  `permed50len` int(11) DEFAULT NULL,
  `permed33len` int(11) DEFAULT NULL,
  `permed50mat` int(11) DEFAULT NULL,
  `permedmat33` int(11) DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `aprobacion11a` decimal(12,7) DEFAULT NULL,
  `aprobacion11t` decimal(12,7) DEFAULT NULL,
  `Extraedad` int(11) DEFAULT NULL,
  `cole_codigo_mcpio_d` int(11) DEFAULT NULL,
  `textra` decimal(12,7) DEFAULT NULL,
  `rtextra` decimal(12,7) DEFAULT NULL,
  `categoria_10` int(11) DEFAULT NULL,
  `categoria_07` int(11) DEFAULT NULL,
  `varcolegios11` int(11) DEFAULT NULL,
  `permed50len_5` int(11) DEFAULT NULL,
  `permedlen33_5` int(11) DEFAULT NULL,
  `permed50len_9` int(11) DEFAULT NULL,
  `permedlen33_9` int(11) DEFAULT NULL,
  `permed50mat_5` int(11) DEFAULT NULL,
  `permedmat33_5` int(11) DEFAULT NULL,
  `permed50mat_9` int(11) DEFAULT NULL,
  `permedmat33_9` int(11) DEFAULT NULL,
  `rango1_l5r` int(11) DEFAULT NULL,
  `rango2_l5r` int(11) DEFAULT NULL,
  `rango3_l5r` int(11) DEFAULT NULL,
  `rango4_l5r` int(11) DEFAULT NULL,
  `rango5_l5r` int(11) DEFAULT NULL,
  `rango6_l5r` int(11) DEFAULT NULL,
  `rango1_m5r` int(11) DEFAULT NULL,
  `rango2_m5r` int(11) DEFAULT NULL,
  `rango3_m5r` int(11) DEFAULT NULL,
  `rango4_m5r` int(11) DEFAULT NULL,
  `rango5_m5r` int(11) DEFAULT NULL,
  `rango6_m5r` int(11) DEFAULT NULL,
  `rango1_l9r` int(11) DEFAULT NULL,
  `rango2_l9r` int(11) DEFAULT NULL,
  `rango3_l9r` int(11) DEFAULT NULL,
  `rango4_l9r` int(11) DEFAULT NULL,
  `rango5_l9r` int(11) DEFAULT NULL,
  `rango6_l9r` int(11) DEFAULT NULL,
  `rango1_m9r` int(11) DEFAULT NULL,
  `rango2_m9r` int(11) DEFAULT NULL,
  `rango3_m9r` int(11) DEFAULT NULL,
  `rango4_m9r` int(11) DEFAULT NULL,
  `rango5_m9r` int(11) DEFAULT NULL,
  `rango6_m9r` int(11) DEFAULT NULL,
  `insuficiente_m9` int(11) DEFAULT NULL,
  `minimo_m9` int(11) DEFAULT NULL,
  `satisfactorio_m9` int(11) DEFAULT NULL,
  `avanzado_m9` int(11) DEFAULT NULL,
  `insuficiente_m5` int(11) DEFAULT NULL,
  `minimo_m5` int(11) DEFAULT NULL,
  `satisfactorio_m5` int(11) DEFAULT NULL,
  `avanzado_m5` int(11) DEFAULT NULL,
  `insuficiente_l9` int(11) DEFAULT NULL,
  `minimo_l9` int(11) DEFAULT NULL,
  `satisfactorio_l9` int(11) DEFAULT NULL,
  `avanzado_l9` int(11) DEFAULT NULL,
  `insuficiente_l5` int(11) DEFAULT NULL,
  `minimo_l5` int(11) DEFAULT NULL,
  `satisfactorio_l5` int(11) DEFAULT NULL,
  `avanzado_l5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadores_5_9`
--

CREATE TABLE IF NOT EXISTS `indicadores_5_9` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `permed50len_5` int(11) DEFAULT NULL,
  `permedlen33_5` int(11) DEFAULT NULL,
  `permed50len_9` int(11) DEFAULT NULL,
  `permedlen33_9` int(11) DEFAULT NULL,
  `permed50mat_5` int(11) DEFAULT NULL,
  `permedmat33_5` int(11) DEFAULT NULL,
  `permed50mat_9` int(11) DEFAULT NULL,
  `permedmat33_9` int(11) DEFAULT NULL,
  `rango1_l5r` int(11) DEFAULT NULL,
  `rango2_l5r` int(11) DEFAULT NULL,
  `rango3_l5r` int(11) DEFAULT NULL,
  `rango4_l5r` int(11) DEFAULT NULL,
  `rango5_l5r` int(11) DEFAULT NULL,
  `rango6_l5r` int(11) DEFAULT NULL,
  `rango1_m5r` int(11) DEFAULT NULL,
  `rango2_m5r` int(11) DEFAULT NULL,
  `rango3_m5r` int(11) DEFAULT NULL,
  `rango4_m5r` int(11) DEFAULT NULL,
  `rango5_m5r` int(11) DEFAULT NULL,
  `rango6_m5r` int(11) DEFAULT NULL,
  `rango1_l9r` int(11) DEFAULT NULL,
  `rango2_l9r` int(11) DEFAULT NULL,
  `rango3_l9r` int(11) DEFAULT NULL,
  `rango4_l9r` int(11) DEFAULT NULL,
  `rango5_l9r` int(11) DEFAULT NULL,
  `rango6_l9r` int(11) DEFAULT NULL,
  `rango1_m9r` int(11) DEFAULT NULL,
  `rango2_m9r` int(11) DEFAULT NULL,
  `rango3_m9r` int(11) DEFAULT NULL,
  `rango4_m9r` int(11) DEFAULT NULL,
  `rango5_m9r` int(11) DEFAULT NULL,
  `rango6_m9r` int(11) DEFAULT NULL,
  `insuficiente_m9` int(11) DEFAULT NULL,
  `minimo_m9` int(11) DEFAULT NULL,
  `satisfactorio_m9` int(11) DEFAULT NULL,
  `avanzado_m9` int(11) DEFAULT NULL,
  `insuficiente_m5` int(11) DEFAULT NULL,
  `minimo_m5` int(11) DEFAULT NULL,
  `satisfactorio_m5` int(11) DEFAULT NULL,
  `avanzado_m5` int(11) DEFAULT NULL,
  `insuficiente_l9` int(11) DEFAULT NULL,
  `minimo_l9` int(11) DEFAULT NULL,
  `satisfactorio_l9` int(11) DEFAULT NULL,
  `avanzado_l9` int(11) DEFAULT NULL,
  `insuficiente_l5` int(11) DEFAULT NULL,
  `minimo_l5` int(11) DEFAULT NULL,
  `satisfactorio_l5` int(11) DEFAULT NULL,
  `avanzado_l5` int(11) DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadores_11`
--

CREATE TABLE IF NOT EXISTS `indicadores_11` (
  `dane` varchar(12) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `ProporcionEstrato0` decimal(12,7) NOT NULL,
  `ProporcionEstrato1` decimal(12,7) NOT NULL,
  `ProporcionEstrato2` decimal(12,7) NOT NULL,
  `ProporcionEstrato3` decimal(12,7) NOT NULL,
  `ProporcionEstrato4` decimal(12,7) NOT NULL,
  `ProporcionEstrato5` decimal(12,7) NOT NULL,
  `ProporcionEstrato6` decimal(12,7) NOT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07_p` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje_d` decimal(12,7) DEFAULT NULL,
  `tema_matematica_d` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(12,7) DEFAULT NULL,
  `permed50len` int(5) DEFAULT NULL,
  `permed33len` int(5) DEFAULT NULL,
  `permed50mat` int(5) DEFAULT NULL,
  `permedmat33` int(5) DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `aprobacion11a` decimal(12,7) DEFAULT NULL,
  `aprobacion11t` decimal(12,7) DEFAULT NULL,
  `Extraedad` int(5) DEFAULT NULL,
  `cole_codigo_mcpio_d` int(5) DEFAULT NULL,
  `textra` decimal(12,7) DEFAULT NULL,
  `rtextra` decimal(12,7) DEFAULT NULL,
  `categoria_10` int(5) DEFAULT NULL,
  `categoria_07` int(5) DEFAULT NULL,
  `varcolegios11` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadores_y_bonus`
--

CREATE TABLE IF NOT EXISTS `indicadores_y_bonus` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07_p` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje_d` decimal(12,7) DEFAULT NULL,
  `tema_matematica_d` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(12,7) DEFAULT NULL,
  `permed50len` int(10) DEFAULT NULL,
  `permed33len` int(10) DEFAULT NULL,
  `permed50mat` int(10) DEFAULT NULL,
  `permedmat33` int(10) DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `aprobacion11a` decimal(12,7) DEFAULT NULL,
  `aprobacion11t` decimal(12,7) DEFAULT NULL,
  `Extraedad` int(10) DEFAULT NULL,
  `textra` decimal(12,7) DEFAULT NULL,
  `rtextra` decimal(12,7) DEFAULT NULL,
  `categoria_10` int(10) DEFAULT NULL,
  `categoria_07` int(10) DEFAULT NULL,
  `varcolegios11` int(10) DEFAULT NULL,
  `permed50len_5` int(10) DEFAULT NULL,
  `permedlen33_5` int(10) DEFAULT NULL,
  `permed50len_9` int(10) DEFAULT NULL,
  `permedlen33_9` int(10) DEFAULT NULL,
  `permed50mat_5` int(10) DEFAULT NULL,
  `permedmat33_5` int(10) DEFAULT NULL,
  `permed50mat_9` int(10) DEFAULT NULL,
  `permedmat33_9` int(10) DEFAULT NULL,
  `rango1_l5r` int(10) DEFAULT NULL,
  `rango2_l5r` int(10) DEFAULT NULL,
  `rango3_l5r` int(10) DEFAULT NULL,
  `rango4_l5r` int(10) DEFAULT NULL,
  `rango5_l5r` int(10) DEFAULT NULL,
  `rango6_l5r` int(10) DEFAULT NULL,
  `rango1_m5r` int(10) DEFAULT NULL,
  `rango2_m5r` int(10) DEFAULT NULL,
  `rango3_m5r` int(10) DEFAULT NULL,
  `rango4_m5r` int(10) DEFAULT NULL,
  `rango5_m5r` int(10) DEFAULT NULL,
  `rango6_m5r` int(10) DEFAULT NULL,
  `rango1_l9r` int(10) DEFAULT NULL,
  `rango2_l9r` int(10) DEFAULT NULL,
  `rango3_l9r` int(10) DEFAULT NULL,
  `rango4_l9r` int(10) DEFAULT NULL,
  `rango5_l9r` int(10) DEFAULT NULL,
  `rango6_l9r` int(10) DEFAULT NULL,
  `rango1_m9r` int(10) DEFAULT NULL,
  `rango2_m9r` int(10) DEFAULT NULL,
  `rango3_m9r` int(10) DEFAULT NULL,
  `rango4_m9r` int(10) DEFAULT NULL,
  `rango5_m9r` int(10) DEFAULT NULL,
  `rango6_m9r` int(10) DEFAULT NULL,
  `insuficiente_m9` int(10) DEFAULT NULL,
  `minimo_m9` int(10) DEFAULT NULL,
  `satisfactorio_m9` int(10) DEFAULT NULL,
  `avanzado_m9` int(10) DEFAULT NULL,
  `insuficiente_m5` int(10) DEFAULT NULL,
  `minimo_m5` int(10) DEFAULT NULL,
  `satisfactorio_m5` int(10) DEFAULT NULL,
  `avanzado_m5` int(10) DEFAULT NULL,
  `insuficiente_l9` int(10) DEFAULT NULL,
  `minimo_l9` int(10) DEFAULT NULL,
  `satisfactorio_l9` int(10) DEFAULT NULL,
  `avanzado_l9` int(10) DEFAULT NULL,
  `insuficiente_l5` int(10) DEFAULT NULL,
  `minimo_l5` int(10) DEFAULT NULL,
  `satisfactorio_l5` int(10) DEFAULT NULL,
  `avanzado_l5` int(10) DEFAULT NULL,
  `bonus_matematica11` int(10) DEFAULT NULL,
  `bonus_lenguaje11` int(10) DEFAULT NULL,
  `bonus_total11` int(10) DEFAULT NULL,
  `bonus_matematica5` int(10) DEFAULT NULL,
  `bonus_lenguaje5` int(10) DEFAULT NULL,
  `bonus_total5` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informeestudiantegrado10y11`
--

CREATE TABLE IF NOT EXISTS `informeestudiantegrado10y11` (
  `nucleo` int(3) DEFAULT NULL,
  `ie` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codigo` int(4) DEFAULT NULL,
  `total_aciertos` int(2) DEFAULT NULL,
  `__` decimal(12,9) DEFAULT NULL,
  `total_matematicas` decimal(12,7) DEFAULT NULL,
  `__0` decimal(12,7) DEFAULT NULL,
  `total_lenguaje` decimal(12,7) DEFAULT NULL,
  `__1` decimal(12,7) DEFAULT NULL,
  `aleatorio` int(1) DEFAULT NULL,
  `__2` decimal(12,7) DEFAULT NULL,
  `geometrico_metrico` int(2) DEFAULT NULL,
  `__3` int(3) DEFAULT NULL,
  `numerico_variacional` int(1) DEFAULT NULL,
  `__4` decimal(12,7) DEFAULT NULL,
  `csgt` int(2) DEFAULT NULL,
  `__5` decimal(12,7) DEFAULT NULL,
  `fsel` int(1) DEFAULT NULL,
  `__6` decimal(12,7) DEFAULT NULL,
  `sthot` int(1) DEFAULT NULL,
  `__7` decimal(12,7) DEFAULT NULL,
  `p1` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p2` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p3` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p4` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p5` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p6` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p7` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p8` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p9` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p10` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p11` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p12` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p14` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p15` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p16` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p17` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p18` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p19` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p20` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p21` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p22` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p23` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p24` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p25` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p26` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p27` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p28` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p29` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p30` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p31` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p32` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p33` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p34` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p35` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p36` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p37` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p38` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p39` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p40` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p41` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p42` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p43` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p44` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p45` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p46` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p47` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p48` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estrato` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `trabaja` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `comuna1` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `padreesco` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `madreesco` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `padreedad` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `madreedad` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `padreocupa` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `madreocupa` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `computador` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `celular` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `sexo` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ingresosfamily` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `edusup` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `grado` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informe_estudiante_grado_5`
--

CREATE TABLE IF NOT EXISTS `informe_estudiante_grado_5` (
  `nucleo` int(3) DEFAULT NULL,
  `ie` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codigo` int(4) DEFAULT NULL,
  `grado` int(1) DEFAULT NULL,
  `total_aciertos` int(2) DEFAULT NULL,
  `__` decimal(9,6) DEFAULT NULL,
  `total_matematicas` int(3) DEFAULT NULL,
  `__0` decimal(12,7) DEFAULT NULL,
  `total_lenguaje` int(3) DEFAULT NULL,
  `__1` decimal(12,7) DEFAULT NULL,
  `aleatorio` int(1) DEFAULT NULL,
  `__2` decimal(12,7) DEFAULT NULL,
  `geometrico_metrico` int(1) DEFAULT NULL,
  `__3` int(2) DEFAULT NULL,
  `numerico_variacional` int(1) DEFAULT NULL,
  `__4` int(2) DEFAULT NULL,
  `pragmatica` int(1) DEFAULT NULL,
  `__5` int(2) DEFAULT NULL,
  `semantica` int(1) DEFAULT NULL,
  `__6` decimal(12,7) DEFAULT NULL,
  `sintactica` int(1) DEFAULT NULL,
  `__7` decimal(12,7) DEFAULT NULL,
  `p1` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p2` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p3` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p4` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p5` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p6` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p7` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p8` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p9` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p10` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p11` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p12` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p14` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p15` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p16` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p17` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p18` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p19` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p20` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p21` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p22` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p23` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p24` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p25` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p26` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p27` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p28` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p29` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p30` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p31` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p32` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p33` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p34` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p35` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p36` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p37` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p38` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p39` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p40` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p41` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p42` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p43` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p44` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p45` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p46` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p47` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `p48` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estrato` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `trabaja` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `comuna1` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `padreesco` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `madreesco` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `padreedad` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `madreedad` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `padreocupa` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `madreocupa` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `computador` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `celular` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `sexo` varchar(1) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediana11_07`
--

CREATE TABLE IF NOT EXISTS `mediana11_07` (
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediana11_10`
--

CREATE TABLE IF NOT EXISTS `mediana11_10` (
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tema_lenguaje_d` decimal(12,7) DEFAULT NULL,
  `tema_matematica_d` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permed11_07`
--

CREATE TABLE IF NOT EXISTS `permed11_07` (
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `p50_l11` int(5) DEFAULT NULL,
  `p33_l11` int(5) DEFAULT NULL,
  `p50_m11` int(5) DEFAULT NULL,
  `p33_m11` int(5) DEFAULT NULL,
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permedianocr`
--

CREATE TABLE IF NOT EXISTS `permedianocr` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `permed50len_5` int(3) DEFAULT NULL,
  `permedlen33_5` int(3) DEFAULT NULL,
  `permed50len_9` int(3) DEFAULT NULL,
  `permedlen33_9` int(3) DEFAULT NULL,
  `permed50mat_5` int(3) DEFAULT NULL,
  `permedmat33_5` int(3) DEFAULT NULL,
  `permed50mat_9` int(3) DEFAULT NULL,
  `permedmat33_9` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permedianocr11`
--

CREATE TABLE IF NOT EXISTS `permedianocr11` (
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `permed50len` int(5) DEFAULT NULL,
  `permed33len` int(5) DEFAULT NULL,
  `permed50mat` int(5) DEFAULT NULL,
  `permedmat33` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permed_5_9_03`
--

CREATE TABLE IF NOT EXISTS `permed_5_9_03` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `l5_03` decimal(12,7) DEFAULT NULL,
  `m5_03` decimal(12,7) DEFAULT NULL,
  `l9_03` decimal(12,7) DEFAULT NULL,
  `m9_03` decimal(12,7) DEFAULT NULL,
  `p50_len_5` int(1) DEFAULT NULL,
  `p33_len_5` int(1) DEFAULT NULL,
  `p50_len_9` int(1) DEFAULT NULL,
  `p33_len_9` int(1) DEFAULT NULL,
  `p50_mat_5` int(1) DEFAULT NULL,
  `p33_mat_5` int(1) DEFAULT NULL,
  `p50_mat_9` int(1) DEFAULT NULL,
  `p33_mat_9` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_estudiantes_07`
--

CREATE TABLE IF NOT EXISTS `pr_estudiantes_07` (
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `prmat_bajo_07` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07_p` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_estudiantes_10`
--

CREATE TABLE IF NOT EXISTS `pr_estudiantes_10` (
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `prmat_bajo_10` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango5_9`
--

CREATE TABLE IF NOT EXISTS `rango5_9` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rango1_l5r` decimal(12,7) DEFAULT NULL,
  `rango2_l5r` decimal(12,7) DEFAULT NULL,
  `rango3_l5r` decimal(12,7) DEFAULT NULL,
  `rango4_l5r` decimal(12,7) DEFAULT NULL,
  `rango5_l5r` decimal(12,7) DEFAULT NULL,
  `rango6_l5r` decimal(12,7) DEFAULT NULL,
  `rango1_m5r` decimal(12,7) DEFAULT NULL,
  `rango2_m5r` decimal(12,7) DEFAULT NULL,
  `rango3_m5r` decimal(12,7) DEFAULT NULL,
  `rango4_m5r` decimal(12,7) DEFAULT NULL,
  `rango5_m5r` decimal(12,7) DEFAULT NULL,
  `rango6_m5r` decimal(12,7) DEFAULT NULL,
  `rango1_l9r` decimal(12,7) DEFAULT NULL,
  `rango2_l9r` decimal(12,7) DEFAULT NULL,
  `rango3_l9r` decimal(12,7) DEFAULT NULL,
  `rango4_l9r` decimal(12,7) DEFAULT NULL,
  `rango5_l9r` decimal(12,7) DEFAULT NULL,
  `rango6_l9r` decimal(12,7) DEFAULT NULL,
  `rango1_m9r` decimal(12,7) DEFAULT NULL,
  `rango2_m9r` decimal(12,7) DEFAULT NULL,
  `rango3_m9r` decimal(12,7) DEFAULT NULL,
  `rango4_m9r` decimal(12,7) DEFAULT NULL,
  `rango5_m9r` decimal(12,7) DEFAULT NULL,
  `rango6_m9r` decimal(12,7) DEFAULT NULL,
  `insuficiente_m9` decimal(12,7) DEFAULT NULL,
  `minimo_m9` decimal(12,7) DEFAULT NULL,
  `satisfactorio_m9` decimal(12,7) DEFAULT NULL,
  `avanzado_m9` decimal(12,7) DEFAULT NULL,
  `insuficiente_m5` decimal(12,7) DEFAULT NULL,
  `minimo_m5` decimal(12,7) DEFAULT NULL,
  `satisfactorio_m5` decimal(12,7) DEFAULT NULL,
  `avanzado_m5` decimal(12,7) DEFAULT NULL,
  `insuficiente_l9` decimal(12,7) DEFAULT NULL,
  `minimo_l9` decimal(12,7) DEFAULT NULL,
  `satisfactorio_l9` decimal(12,7) DEFAULT NULL,
  `avanzado_l9` decimal(12,7) DEFAULT NULL,
  `insuficiente_l5` decimal(12,7) DEFAULT NULL,
  `minimo_l5` decimal(12,7) DEFAULT NULL,
  `satisfactorio_l5` decimal(12,7) DEFAULT NULL,
  `avanzado_l5` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ran_ie07`
--

CREATE TABLE IF NOT EXISTS `ran_ie07` (
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `categoria_07` int(5) DEFAULT NULL,
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ran_ie10`
--

CREATE TABLE IF NOT EXISTS `ran_ie10` (
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `categoria_10` int(5) DEFAULT NULL,
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res11`
--

CREATE TABLE IF NOT EXISTS `res11` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `permed50len` int(5) DEFAULT NULL,
  `permed33len` int(5) DEFAULT NULL,
  `permed50mat` int(5) DEFAULT NULL,
  `permedmat33` int(5) DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `aprobacion11a` decimal(12,7) DEFAULT NULL,
  `aprobacion11t` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res11i`
--

CREATE TABLE IF NOT EXISTS `res11i` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07_p` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje_d` decimal(12,7) DEFAULT NULL,
  `tema_matematica_d` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(12,7) DEFAULT NULL,
  `permed50len` int(5) DEFAULT NULL,
  `permed33len` int(5) DEFAULT NULL,
  `permed50mat` int(5) DEFAULT NULL,
  `permedmat33` int(5) DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `aprobacion11a` decimal(12,7) DEFAULT NULL,
  `aprobacion11t` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res11ii`
--

CREATE TABLE IF NOT EXISTS `res11ii` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07_p` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje_d` decimal(12,7) DEFAULT NULL,
  `tema_matematica_d` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(12,7) DEFAULT NULL,
  `permed50len` int(5) DEFAULT NULL,
  `permed33len` int(5) DEFAULT NULL,
  `permed50mat` int(5) DEFAULT NULL,
  `permedmat33` int(5) DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `aprobacion11a` decimal(12,7) DEFAULT NULL,
  `aprobacion11t` decimal(12,7) DEFAULT NULL,
  `Extraedad` int(5) DEFAULT NULL,
  `cole_codigo_mcpio_d` int(5) DEFAULT NULL,
  `textra` decimal(12,7) DEFAULT NULL,
  `rtextra` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res11_07`
--

CREATE TABLE IF NOT EXISTS `res11_07` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07_p` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res11_10`
--

CREATE TABLE IF NOT EXISTS `res11_10` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje_d` decimal(12,7) DEFAULT NULL,
  `tema_matematica_d` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res11_11`
--

CREATE TABLE IF NOT EXISTS `res11_11` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07_p` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje_d` decimal(12,7) DEFAULT NULL,
  `tema_matematica_d` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res111`
--

CREATE TABLE IF NOT EXISTS `res111` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `aprobacion11a` decimal(12,7) DEFAULT NULL,
  `aprobacion11t` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res211`
--

CREATE TABLE IF NOT EXISTS `res211` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `permed50len` int(5) DEFAULT NULL,
  `permed33len` int(5) DEFAULT NULL,
  `permed50mat` int(5) DEFAULT NULL,
  `permedmat33` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res211_07`
--

CREATE TABLE IF NOT EXISTS `res211_07` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res211_10`
--

CREATE TABLE IF NOT EXISTS `res211_10` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `tema_lenguaje_d` decimal(12,7) DEFAULT NULL,
  `tema_matematica_d` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res311_07`
--

CREATE TABLE IF NOT EXISTS `res311_07` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_07_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_07_p` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res311_10`
--

CREATE TABLE IF NOT EXISTS `res311_10` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10` decimal(12,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(12,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultad`
--

CREATE TABLE IF NOT EXISTS `resultad` (
  `id` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `id_institucion` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `grado` int(11) DEFAULT NULL,
  `peso` decimal(12,7) DEFAULT NULL,
  `promedio` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `desviacion` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rango1` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rango2` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rango3` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rango4` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rango5` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `rango6` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultadosgrupales_plant(`
--

CREATE TABLE IF NOT EXISTS `resultadosgrupales_plant(` (
  `aplicacion` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `grado` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codprueba` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `prueba` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codplantel` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `coddpto` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codciudad` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nommunicipio` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nomdpto` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `consecutivoplantel` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombreintegrado` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `direccion` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombredirector` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codcalendario` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codnaturaleza` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `naturaleza` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codzona` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `zona` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codjornada` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `jornada` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codpropiedadjuridica` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codopcioneducativa` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `opcioneducativa` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `coddane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sede` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `promedio` decimal(12,7) DEFAULT NULL,
  `desviacion` decimal(12,7) DEFAULT NULL,
  `n` int(11) DEFAULT NULL,
  `promediomunicipio` decimal(12,7) DEFAULT NULL,
  `desviacionmunicipio` decimal(12,7) DEFAULT NULL,
  `nmunicipio` int(11) DEFAULT NULL,
  `promediodepartamento` decimal(12,7) DEFAULT NULL,
  `desviaciondepartamento` decimal(12,7) DEFAULT NULL,
  `ndepartamento` int(11) DEFAULT NULL,
  `promediopais` decimal(12,7) DEFAULT NULL,
  `desviacionpais` decimal(12,7) DEFAULT NULL,
  `npais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_5_9_1`
--

CREATE TABLE IF NOT EXISTS `res_5_9_1` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `permed50len_5` decimal(12,7) DEFAULT NULL,
  `permedlen33_5` decimal(12,7) DEFAULT NULL,
  `permed50len_9` decimal(12,7) DEFAULT NULL,
  `permedlen33_9` decimal(12,7) DEFAULT NULL,
  `permed50mat_5` decimal(12,7) DEFAULT NULL,
  `permedmat33_5` decimal(12,7) DEFAULT NULL,
  `permed50mat_9` decimal(12,7) DEFAULT NULL,
  `permedmat33_9` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_5_9_2`
--

CREATE TABLE IF NOT EXISTS `res_5_9_2` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `permed50len_5` decimal(12,7) DEFAULT NULL,
  `permedlen33_5` decimal(12,7) DEFAULT NULL,
  `permed50len_9` decimal(12,7) DEFAULT NULL,
  `permedlen33_9` decimal(12,7) DEFAULT NULL,
  `permed50mat_5` decimal(12,7) DEFAULT NULL,
  `permedmat33_5` decimal(12,7) DEFAULT NULL,
  `permed50mat_9` decimal(12,7) DEFAULT NULL,
  `permedmat33_9` decimal(12,7) DEFAULT NULL,
  `rango1_l5r` decimal(12,7) DEFAULT NULL,
  `rango2_l5r` decimal(12,7) DEFAULT NULL,
  `rango3_l5r` decimal(12,7) DEFAULT NULL,
  `rango4_l5r` decimal(12,7) DEFAULT NULL,
  `rango5_l5r` decimal(12,7) DEFAULT NULL,
  `rango6_l5r` decimal(12,7) DEFAULT NULL,
  `rango1_m5r` decimal(12,7) DEFAULT NULL,
  `rango2_m5r` decimal(12,7) DEFAULT NULL,
  `rango3_m5r` decimal(12,7) DEFAULT NULL,
  `rango4_m5r` decimal(12,7) DEFAULT NULL,
  `rango5_m5r` decimal(12,7) DEFAULT NULL,
  `rango6_m5r` decimal(12,7) DEFAULT NULL,
  `rango1_l9r` decimal(12,7) DEFAULT NULL,
  `rango2_l9r` decimal(12,7) DEFAULT NULL,
  `rango3_l9r` decimal(12,7) DEFAULT NULL,
  `rango4_l9r` decimal(12,7) DEFAULT NULL,
  `rango5_l9r` decimal(12,7) DEFAULT NULL,
  `rango6_l9r` decimal(12,7) DEFAULT NULL,
  `rango1_m9r` decimal(12,7) DEFAULT NULL,
  `rango2_m9r` decimal(12,7) DEFAULT NULL,
  `rango3_m9r` decimal(12,7) DEFAULT NULL,
  `rango4_m9r` decimal(12,7) DEFAULT NULL,
  `rango5_m9r` decimal(12,7) DEFAULT NULL,
  `rango6_m9r` decimal(12,7) DEFAULT NULL,
  `insuficiente_m9` decimal(12,7) DEFAULT NULL,
  `minimo_m9` decimal(12,7) DEFAULT NULL,
  `satisfactorio_m9` decimal(12,7) DEFAULT NULL,
  `avanzado_m9` decimal(12,7) DEFAULT NULL,
  `insuficiente_m5` decimal(12,7) DEFAULT NULL,
  `minimo_m5` decimal(12,7) DEFAULT NULL,
  `satisfactorio_m5` decimal(12,7) DEFAULT NULL,
  `avanzado_m5` decimal(12,7) DEFAULT NULL,
  `insuficiente_l9` decimal(12,7) DEFAULT NULL,
  `minimo_l9` decimal(12,7) DEFAULT NULL,
  `satisfactorio_l9` decimal(12,7) DEFAULT NULL,
  `avanzado_l9` decimal(12,7) DEFAULT NULL,
  `insuficiente_l5` decimal(12,7) DEFAULT NULL,
  `minimo_l5` decimal(12,7) DEFAULT NULL,
  `satisfactorio_l5` decimal(12,7) DEFAULT NULL,
  `avanzado_l5` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saber_5y9_03`
--

CREATE TABLE IF NOT EXISTS `saber_5y9_03` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `l5_03` decimal(12,7) DEFAULT NULL,
  `m5_03` decimal(12,7) DEFAULT NULL,
  `l9_03` decimal(12,7) DEFAULT NULL,
  `m9_03` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sb11-2007-2-rgstro-clfccn-v-1-0`
--

CREATE TABLE IF NOT EXISTS `sb11-2007-2-rgstro-clfccn-v-1-0` (
  `estu_consecutivo` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `estu_genero` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_nacimiento_dia` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `estu_nacimiento_mes` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `estu_nacimiento_anno` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `estu_disc_invidente` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_disc_sordo_con_interprete` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `estu_disc_sordo_sin_interprete` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `estu_disc_motriz` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_etnia` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `econ_zona` int(2) DEFAULT NULL,
  `estu_reside_depto` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `estu_anno_egreso` int(4) DEFAULT NULL,
  `cole_codigo_colegio` int(8) DEFAULT NULL,
  `cole_inst_nombre` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cole_inst_jornada` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cole_mpio_colegio` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cole_depto_colegio` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cole_inst_vlr_pension` int(1) DEFAULT NULL,
  `estu_ies_cod_deseada` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `estu_ies_razon_deseada` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_carr_cod_deseada` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `estu_carr_razon_desea` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_exam_dpto_presentacion` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `tema_lenguaje` decimal(12,7) DEFAULT NULL,
  `tema_matematica` decimal(12,7) DEFAULT NULL,
  `tema_ciencias_sociales` decimal(12,7) DEFAULT NULL,
  `tema_filosofia` decimal(12,7) DEFAULT NULL,
  `tema_biologia` decimal(12,7) DEFAULT NULL,
  `tema_quimica` decimal(12,7) DEFAULT NULL,
  `tema_fisica` decimal(12,7) DEFAULT NULL,
  `tema2_profundizacion_cod` int(3) DEFAULT NULL,
  `tema2_profundizacion_p` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `tema2_profundizacion_d` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `tema3_idioma_cod` int(2) DEFAULT NULL,
  `tema3_idioma_p` decimal(12,7) DEFAULT NULL,
  `tema3_idioma_d` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `tema4_interdisciplinar_cod` int(5) DEFAULT NULL,
  `tema4_interdisciplinar` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `tema_puesto` varchar(5) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sb11-2010-2-rgstro-clfccn-v1,`
--

CREATE TABLE IF NOT EXISTS `sb11-2010-2-rgstro-clfccn-v1,` (
  `estu_consecutivo` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `estu_genero` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_nacimiento_dia` int(2) DEFAULT NULL,
  `estu_nacimiento_mes` int(2) DEFAULT NULL,
  `estu_nacimiento_anno` int(5) DEFAULT NULL,
  `estu_disc_invidente` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `estu_disc_sordo_con_interprete` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_disc_sordo_sin_interprete` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_disc_motriz` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_disc_sordoceguera` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `estu_disc_cognitiva` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_etnia` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `estu_codigo_reside_mcpio` int(5) DEFAULT NULL,
  `estu_reside_depto` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `econ_area_vive` int(1) DEFAULT NULL,
  `fami_cod_educa_padre` int(2) DEFAULT NULL,
  `fami_cod_educa_madre` int(2) DEFAULT NULL,
  `fami_cod_ocup_padre` int(2) DEFAULT NULL,
  `fami_cod_ocup_madre` int(2) DEFAULT NULL,
  `estu_estrato` int(1) DEFAULT NULL,
  `fami_nivel_sisben` int(1) DEFAULT NULL,
  `fami_num_pers_grup_fam` int(2) DEFAULT NULL,
  `econ_dormitorios` int(2) DEFAULT NULL,
  `econ_material_pisos` int(1) DEFAULT NULL,
  `econ_sn_telefonia` int(1) DEFAULT NULL,
  `econ_sn_celular` int(1) DEFAULT NULL,
  `econ_sn_internet` int(1) DEFAULT NULL,
  `econ_sn_servicio_tv` int(1) DEFAULT NULL,
  `econ_sn_computador` int(1) DEFAULT NULL,
  `econ_sn_dvd` int(1) DEFAULT NULL,
  `econ_sn_lavadora` int(1) DEFAULT NULL,
  `econ_sn_microondas` int(1) DEFAULT NULL,
  `econ_sn_nevera` int(1) DEFAULT NULL,
  `econ_sn_automovil` int(1) DEFAULT NULL,
  `econ_sn_horno` int(1) DEFAULT NULL,
  `fami_ing_fmiliar_mensual` int(1) DEFAULT NULL,
  `estu_trabaja` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cole_inst_vlr_pension` int(2) DEFAULT NULL,
  `cole_codigo_mcpio` int(7) DEFAULT NULL,
  `cole_codigo_inst` int(7) DEFAULT NULL,
  `cole_inst_nombre` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `estu_veces_estdo` int(1) DEFAULT NULL,
  `cole_inst_jornada` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `estu_exam_depto_presentacion` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `tema5_compflexible_cod` int(3) DEFAULT NULL,
  `tema5_compflexible_d` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `tema5_compflexible_p` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tema_lenguaje` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tema_matematica` varchar(7) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tema_ciencias_sociales` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_filosofia` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_biologia` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_quimica` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_fisica` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema3_idioma_cod` int(3) DEFAULT NULL,
  `tema_idioma_p` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_idioma_d` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_puesto` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sb11-clasifi-planteles-2007-v-1-0`
--

CREATE TABLE IF NOT EXISTS `sb11-clasifi-planteles-2007-v-1-0` (
  `cole_codigo_colegio` int(6) DEFAULT NULL,
  `cole_inst_nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cole_codmpio_colegio` int(5) DEFAULT NULL,
  `cole_mpio_colegio` varchar(27) CHARACTER SET utf8 DEFAULT NULL,
  `cole_depto_colegio` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `cole_inst_jornada` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cole_calendario_colegio` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cole_generopoblacion` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `cole_naturaleza` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cole_ciencias_sociales` int(2) DEFAULT NULL,
  `cole_quimica` int(2) DEFAULT NULL,
  `cole_fisica` int(2) DEFAULT NULL,
  `cole_biologia` int(2) DEFAULT NULL,
  `cole_filosofia` int(2) DEFAULT NULL,
  `cole_matematicas` int(2) DEFAULT NULL,
  `cole_lenguaje` int(2) DEFAULT NULL,
  `cole_ingles` int(2) DEFAULT NULL,
  `cole_geografia` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cole_historia` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cole_categoria` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `cole_estudiantes_presentes` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sb11-clasifi-planteles-2010-v-1-0`
--

CREATE TABLE IF NOT EXISTS `sb11-clasifi-planteles-2010-v-1-0` (
  `cole_codigo_colegio` int(6) DEFAULT NULL,
  `cole_inst_nombre` varchar(81) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cole_codmpio_colegio` int(5) DEFAULT NULL,
  `cole_mpio_colegio` varchar(27) CHARACTER SET utf8 DEFAULT NULL,
  `cole_depto_colegio` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `cole_inst_jornada` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cole_calendario_colegio` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cole_generopoblacion` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `cole_naturaleza` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `cole_ciencias_sociales` int(2) DEFAULT NULL,
  `cole_quimica` int(2) DEFAULT NULL,
  `cole_fisica` int(2) DEFAULT NULL,
  `cole_biologia` int(2) DEFAULT NULL,
  `cole_filosofia` int(2) DEFAULT NULL,
  `cole_matematicas` int(2) DEFAULT NULL,
  `cole_lenguaje` int(2) DEFAULT NULL,
  `cole_ingles` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `cole_geografia` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cole_historia` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cole_categoria` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `cole_estudiantes_presentes` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla identificadores`
--

CREATE TABLE IF NOT EXISTS `tabla identificadores` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taprob`
--

CREATE TABLE IF NOT EXISTS `taprob` (
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `aprobacion5` decimal(12,7) DEFAULT NULL,
  `aprobacion9` decimal(12,7) DEFAULT NULL,
  `aprobacion11a` decimal(12,7) DEFAULT NULL,
  `aprobacion11t` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textra`
--

CREATE TABLE IF NOT EXISTS `textra` (
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Extraedad` int(4) DEFAULT NULL,
  `cole_codigo_mcpio_d` int(5) DEFAULT NULL,
  `textra` decimal(12,7) DEFAULT NULL,
  `rtextra` decimal(12,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `varcolegios11`
--

CREATE TABLE IF NOT EXISTS `varcolegios11` (
  `nombre_sb11_10` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `categoria_10` int(5) DEFAULT NULL,
  `dane` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nombre_sb11_07` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ProporcionEstrato0` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(12,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(12,7) DEFAULT NULL,
  `categoria_07` int(5) DEFAULT NULL,
  `varcolegios11` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
