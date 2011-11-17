-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-11-2011 a las 20:22:02
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Base de datos: `rendimiento_progreso`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `basetotalcluster`
--

CREATE TABLE IF NOT EXISTS `basetotalcluster` (
  `barriosbasehomicidiosYDirectorio` varchar(35) COLLATE latin1_spanish_ci DEFAULT NULL,
  `barriosbasebarrios` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codigodane` bigint(12) DEFAULT NULL,
  `zona` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ie` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  `homicidioszona` int(2) DEFAULT NULL,
  `codigo_bar` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `serv_pub` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `salud_contributivo_jh` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `pob_total` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ingreso` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `densidad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `nombre` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  `barrio` varchar(35) COLLATE latin1_spanish_ci DEFAULT NULL,
  `NumeroAlumnos` int(4) DEFAULT NULL,
  `NumeroProfesores` int(3) DEFAULT NULL,
  `NombresColegios` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL,
  `econ_sn_telefonia` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_celular` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_internet` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_servicio_tv` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_computador` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_dvd` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_lavadora` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_microondas` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_nevera` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_automovil` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `econ_sn_horno` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `fami_ing_fmiliar_mensual` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `tema_lenguaje` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_matematica` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_ciencias_sociales` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_filosofia` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_biologia` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_qumica` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_fisica` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `tema_idioma_p` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `ProporcionSisben1` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `ProporcionSisben2` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `ProporcionSisben3` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `ProporcionSisben4` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `ProporcionSisben5` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `IcfesPromedio` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `estrato` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `ProporcionEstrato0` decimal(9,7) DEFAULT NULL,
  `ProporcionEstrato1` decimal(9,7) DEFAULT NULL,
  `ProporcionEstrato2` decimal(9,7) DEFAULT NULL,
  `ProporcionEstrato3` decimal(9,7) DEFAULT NULL,
  `ProporcionEstrato4` decimal(9,7) DEFAULT NULL,
  `ProporcionEstrato5` decimal(9,7) DEFAULT NULL,
  `ProporcionEstrato6` decimal(9,7) DEFAULT NULL,
  `RazonHomicidios` varchar(8) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigosdane209_5_9`
--

CREATE TABLE IF NOT EXISTS `codigosdane209_5_9` (
  `dane` bigint(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eficiencia_interna_oficial c600`
--

CREATE TABLE IF NOT EXISTS `eficiencia_interna_oficial c600` (
  `dane` bigint(12) DEFAULT NULL,
  `cons_sede` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `nombre_ie` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL,
  `comuna_ie` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `nucleo` int(3) DEFAULT NULL,
  `aprobacion` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion0` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion01` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion1` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion2` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion3` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion4` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion5` decimal(9,7) DEFAULT NULL,
  `aprobacion6` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion7` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion8` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion9` decimal(9,7) DEFAULT NULL,
  `aprobacion10a` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion11a` decimal(9,7) DEFAULT NULL,
  `aprobacion10t` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion11t` decimal(9,7) DEFAULT NULL,
  `aprobacion10` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion110` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion12` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion21` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion220` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion23` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion24` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion25` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacion26` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobaciontotal_ed_escolar` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionpreesc_ed_escolar` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `aprobaciontrasicion_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionprimaria_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionsecundaria_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionmedia_ac_ed_escolar` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionmedia_tec_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionmedia_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobaciontotal_ed_escolar0` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionprimaria_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionsecun_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionmedia_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobaciontotal_adult` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionpresc_total` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `aprobaciontransicion_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionprimar_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionsecunda_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobacionmedia_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `aprobaciontotal_general` decimal(8,7) DEFAULT NULL,
  `repro` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `repro0` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `repro01` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro1` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro2` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro3` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro4` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro5` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro6` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro7` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro8` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro9` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro10a` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `repro11a` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro10t` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro11t` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro10` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro110` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro12` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `repro21` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro220` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro23` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro24` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro25` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repro26` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `reprototal_ed_escolar` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `repropreesc_ed_escolar` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `reprotrasicion_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `reproprimaria_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `reprosecundaria_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repromedia_ac_ed_escolar` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `repromedia_tec_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repromedia_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `reprototal_ed_escolar0` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `reproprimaria_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `reprosecun_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repromedia_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `reprototal_adult` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repropresc_total` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `reprotransicion_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `reproprimar_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `reprosecunda_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `repromedia_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `reprototal_general` decimal(8,7) DEFAULT NULL,
  `desert` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert0` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert01` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert1` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert2` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert3` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert4` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert5` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert6` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `desert7` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert8` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert9` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `desert10a` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `desert11a` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert10t` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert11t` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert10` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `desert110` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert12` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `desert13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `desert21` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert220` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert23` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert24` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert25` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desert26` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `deserttotal_ed_escolar` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `desertpreesc_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `deserttrasicion_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertprimaria_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertsecundaria_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertmedia_ac_ed_escolar` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `desertmedia_tec_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertmedia_ed_escolar` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `deserttotal_ed_escolar0` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `desertprimaria_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertsecun_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertmedia_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `deserttotal_adult` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertpresc_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `deserttransicion_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertprimar_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertsecunda_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `desertmedia_total` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `deserttotal_general` decimal(8,7) DEFAULT NULL,
  `trans` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans0` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans01` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans1` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans2` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans3` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans4` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans5` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans6` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `trans7` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans8` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans9` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans10a` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `trans11a` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans10t` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans11t` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans10` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans110` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans12` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `trans21` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans220` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans23` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans24` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans25` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `trans26` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transtotal_ed_escolar` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `transpreesc_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transtrasicion_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transprimaria_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transsecundaria_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transmedia_ac_ed_escolar` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `transmedia_tec_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transmedia_ed_escolar` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transtotal_ed_escolar0` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `transprimaria_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transsecun_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transmedia_ad` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transtotal_adult` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transpresc_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transtransicion_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transprimar_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transsecunda_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transmedia_total` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `transtotal_general` decimal(8,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escala5_9_09`
--

CREATE TABLE IF NOT EXISTS `escala5_9_09` (
  `dane` bigint(12) DEFAULT NULL,
  `institucion_nombre` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  `l5` int(3) DEFAULT NULL,
  `m5` int(3) DEFAULT NULL,
  `cn5` int(3) DEFAULT NULL,
  `l9` int(3) DEFAULT NULL,
  `m9` int(3) DEFAULT NULL,
  `cn9` int(3) DEFAULT NULL,
  `l5r` decimal(8,5) DEFAULT NULL,
  `m5r` decimal(8,5) DEFAULT NULL,
  `cn5r` decimal(8,5) DEFAULT NULL,
  `l9r` decimal(8,5) DEFAULT NULL,
  `m9r` decimal(8,5) DEFAULT NULL,
  `cn9r` decimal(8,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicadores_5_9`
--

CREATE TABLE IF NOT EXISTS `indicadores_5_9` (
  `dane` bigint(12) DEFAULT NULL,
  `aprobacion5` decimal(9,7) DEFAULT NULL,
  `aprobacion9` decimal(9,7) DEFAULT NULL,
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
-- Estructura de tabla para la tabla `informeestudiantegrado10y11`
--

CREATE TABLE IF NOT EXISTS `informeestudiantegrado10y11` (
  `nucleo` int(3) DEFAULT NULL,
  `ie` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL,
  `dane` bigint(12) DEFAULT NULL,
  `codigo` int(4) DEFAULT NULL,
  `total_aciertos` int(2) DEFAULT NULL,
  `__` decimal(6,4) DEFAULT NULL,
  `total_matematicas` int(3) DEFAULT NULL,
  `__0` decimal(6,4) DEFAULT NULL,
  `total_lenguaje` int(3) DEFAULT NULL,
  `__1` decimal(6,4) DEFAULT NULL,
  `aleatorio` int(1) DEFAULT NULL,
  `__2` decimal(3,1) DEFAULT NULL,
  `geometrico_metrico` int(2) DEFAULT NULL,
  `__3` int(3) DEFAULT NULL,
  `numerico_variacional` int(1) DEFAULT NULL,
  `__4` decimal(7,4) DEFAULT NULL,
  `csgt` int(2) DEFAULT NULL,
  `__5` decimal(6,4) DEFAULT NULL,
  `fsel` int(1) DEFAULT NULL,
  `__6` decimal(6,4) DEFAULT NULL,
  `sthot` int(1) DEFAULT NULL,
  `__7` decimal(7,4) DEFAULT NULL,
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
  `ie` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL,
  `dane` bigint(12) DEFAULT NULL,
  `codigo` int(4) DEFAULT NULL,
  `grado` int(1) DEFAULT NULL,
  `total_aciertos` int(2) DEFAULT NULL,
  `__` decimal(6,4) DEFAULT NULL,
  `total_matematicas` int(3) DEFAULT NULL,
  `__0` decimal(6,4) DEFAULT NULL,
  `total_lenguaje` int(3) DEFAULT NULL,
  `__1` decimal(6,4) DEFAULT NULL,
  `aleatorio` int(1) DEFAULT NULL,
  `__2` decimal(7,4) DEFAULT NULL,
  `geometrico_metrico` int(1) DEFAULT NULL,
  `__3` int(2) DEFAULT NULL,
  `numerico_variacional` int(1) DEFAULT NULL,
  `__4` int(2) DEFAULT NULL,
  `pragmatica` int(1) DEFAULT NULL,
  `__5` int(2) DEFAULT NULL,
  `semantica` int(1) DEFAULT NULL,
  `__6` decimal(7,4) DEFAULT NULL,
  `sintactica` int(1) DEFAULT NULL,
  `__7` decimal(4,1) DEFAULT NULL,
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
  `cole_inst_nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tema_matematica` decimal(8,5) DEFAULT NULL,
  `tema_lenguaje` decimal(8,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediana11_10`
--

CREATE TABLE IF NOT EXISTS `mediana11_10` (
  `cole_inst_nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tema_lenguaje_d` decimal(6,4) DEFAULT NULL,
  `tema_matematica_d` decimal(6,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombrescolegiosicfes_11`
--

CREATE TABLE IF NOT EXISTS `nombrescolegiosicfes_11` (
  `cole_inst_nombre` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL,
  `dane` bigint(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permedianocr`
--

CREATE TABLE IF NOT EXISTS `permedianocr` (
  `dane` bigint(12) DEFAULT NULL,
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
-- Estructura de tabla para la tabla `permed_5_9_03`
--

CREATE TABLE IF NOT EXISTS `permed_5_9_03` (
  `dane` bigint(12) DEFAULT NULL,
  `nombre` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  `com` int(2) DEFAULT NULL,
  `nuc` int(3) DEFAULT NULL,
  `l5_03` decimal(8,5) DEFAULT NULL,
  `m5_03` decimal(8,5) DEFAULT NULL,
  `cn5_03` decimal(8,5) DEFAULT NULL,
  `l9_03` decimal(8,5) DEFAULT NULL,
  `m9_03` decimal(8,5) DEFAULT NULL,
  `cn9_03` decimal(8,5) DEFAULT NULL,
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
-- Estructura de tabla para la tabla `pr_estudiantes_10`
--

CREATE TABLE IF NOT EXISTS `pr_estudiantes_10` (
  `cole_inst_nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `prmat_bajo_10` decimal(10,7) DEFAULT NULL,
  `prmat_medio_10` decimal(10,7) DEFAULT NULL,
  `prmat_alto_10` decimal(10,7) DEFAULT NULL,
  `prlen_bajo_10` decimal(10,7) DEFAULT NULL,
  `prlen_medio_10` decimal(10,7) DEFAULT NULL,
  `prlen_alto_10` decimal(10,7) DEFAULT NULL,
  `prmat_bajo_10_p` decimal(10,7) DEFAULT NULL,
  `prmat_medio_10_p` decimal(10,7) DEFAULT NULL,
  `prmat_alto_10_p` decimal(10,7) DEFAULT NULL,
  `prlen_bajo_10_p` decimal(10,7) DEFAULT NULL,
  `prlen_medio_10_p` decimal(10,7) DEFAULT NULL,
  `prlen_alto_10_p` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ran_ie07`
--

CREATE TABLE IF NOT EXISTS `ran_ie07` (
  `cole_inst_nombre` varchar(75) COLLATE latin1_spanish_ci DEFAULT NULL,
  `categoria_07` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ran_ie10`
--

CREATE TABLE IF NOT EXISTS `ran_ie10` (
  `cole_inst_nombre` varchar(75) COLLATE latin1_spanish_ci DEFAULT NULL,
  `categoria_10` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res111`
--

CREATE TABLE IF NOT EXISTS `res111` (
  `cole_inst_nombre` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL,
  `dane` bigint(12) DEFAULT NULL,
  `aprobacion5` decimal(9,7) DEFAULT NULL,
  `aprobacion9` decimal(9,7) DEFAULT NULL,
  `aprobacion11a` decimal(9,7) DEFAULT NULL,
  `aprobacion11t` decimal(9,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `res_5_9`
--

CREATE TABLE IF NOT EXISTS `res_5_9` (
  `dane` bigint(12) DEFAULT NULL,
  `aprobacion5` decimal(9,7) DEFAULT NULL,
  `aprobacion9` decimal(9,7) DEFAULT NULL,
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
-- Estructura de tabla para la tabla `saber_5y9_03`
--

CREATE TABLE IF NOT EXISTS `saber_5y9_03` (
  `dane` bigint(12) DEFAULT NULL,
  `nombre` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  `com` int(2) DEFAULT NULL,
  `nuc` int(3) DEFAULT NULL,
  `l5_03` decimal(8,5) DEFAULT NULL,
  `m5_03` decimal(8,5) DEFAULT NULL,
  `cn5_03` decimal(8,5) DEFAULT NULL,
  `l9_03` decimal(8,5) DEFAULT NULL,
  `m9_03` decimal(8,5) DEFAULT NULL,
  `cn9_03` decimal(8,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saber_5y9_09`
--

CREATE TABLE IF NOT EXISTS `saber_5y9_09` (
  `dane` bigint(12) DEFAULT NULL,
  `institucion_nombre` varchar(70) COLLATE latin1_spanish_ci DEFAULT NULL,
  `l5` int(3) DEFAULT NULL,
  `m5` int(3) DEFAULT NULL,
  `cn5` int(3) DEFAULT NULL,
  `l9` int(3) DEFAULT NULL,
  `m9` int(3) DEFAULT NULL,
  `cn9` int(3) DEFAULT NULL
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
  `tema_lenguaje` decimal(5,2) DEFAULT NULL,
  `tema_matematica` decimal(5,2) DEFAULT NULL,
  `tema_ciencias_sociales` decimal(5,2) DEFAULT NULL,
  `tema_filosofia` decimal(5,2) DEFAULT NULL,
  `tema_biologia` decimal(5,2) DEFAULT NULL,
  `tema_quimica` decimal(5,2) DEFAULT NULL,
  `tema_fisica` decimal(5,2) DEFAULT NULL,
  `tema2_profundizacion_cod` int(3) DEFAULT NULL,
  `tema2_profundizacion_p` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `tema2_profundizacion_d` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `tema3_idioma_cod` int(2) DEFAULT NULL,
  `tema3_idioma_p` decimal(5,2) DEFAULT NULL,
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
-- Estructura de tabla para la tabla `taprob`
--

CREATE TABLE IF NOT EXISTS `taprob` (
  `dane` bigint(12) DEFAULT NULL,
  `aprobacion5` decimal(9,7) DEFAULT NULL,
  `aprobacion9` decimal(9,7) DEFAULT NULL,
  `aprobacion11a` decimal(9,7) DEFAULT NULL,
  `aprobacion11t` decimal(9,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textra`
--

CREATE TABLE IF NOT EXISTS `textra` (
  `cole_inst_nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Extraedad` int(4) DEFAULT NULL,
  `cole_codigo_mcpio_d` int(5) DEFAULT NULL,
  `textra` decimal(9,7) DEFAULT NULL,
  `rtextra` decimal(9,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `varcolegios11`
--

CREATE TABLE IF NOT EXISTS `varcolegios11` (
  `cole_inst_nombre` varchar(80) COLLATE latin1_spanish_ci DEFAULT NULL,
  `categoria_10` int(2) DEFAULT NULL,
  `categoria_07` int(2) DEFAULT NULL,
  `varcolegios11` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
