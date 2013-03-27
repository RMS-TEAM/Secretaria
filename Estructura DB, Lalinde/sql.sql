-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2013 at 03:59 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Secretaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `aedocentes`
--

CREATE TABLE IF NOT EXISTS `aedocentes` (
  `Ano` date NOT NULL,
  `DANE` int(20) NOT NULL,
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `ii_2` varchar(32) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ii_4` int(11) DEFAULT NULL,
  `ii_40` int(11) DEFAULT NULL,
  `ii_41` int(11) DEFAULT NULL,
  `ii_42` int(11) DEFAULT NULL,
  `ii_43` int(11) DEFAULT NULL,
  `ii_44` int(11) DEFAULT NULL,
  `ii_45` int(11) DEFAULT NULL,
  `ii_46` int(11) DEFAULT NULL,
  `ii_47` int(11) DEFAULT NULL,
  `ii_48` int(11) DEFAULT NULL,
  `ii_60` int(11) DEFAULT NULL,
  `ii_61` int(11) DEFAULT NULL,
  `ii_62` int(11) DEFAULT NULL,
  `ii_63` int(11) DEFAULT NULL,
  `ii_64` int(11) DEFAULT NULL,
  `ii_65` int(11) DEFAULT NULL,
  `ii_66` int(11) DEFAULT NULL,
  `ii_67` int(11) DEFAULT NULL,
  `ii_68` int(11) DEFAULT NULL,
  `ii_69` int(11) DEFAULT NULL,
  `ii_600` int(11) DEFAULT NULL,
  `ii_70` int(11) DEFAULT NULL,
  `ii_71` int(11) DEFAULT NULL,
  `ii_72` int(11) DEFAULT NULL,
  `ii_73` int(11) DEFAULT NULL,
  `ii_74` int(11) DEFAULT NULL,
  `ii_75` int(11) DEFAULT NULL,
  `ii_76` int(11) DEFAULT NULL,
  `ii_77` int(11) DEFAULT NULL,
  `ii_78` int(11) DEFAULT NULL,
  `ii_79` int(11) DEFAULT NULL,
  `ii_700` int(11) DEFAULT NULL,
  `ii_701` int(11) DEFAULT NULL,
  `ii_702` int(11) DEFAULT NULL,
  `ii_703` int(11) DEFAULT NULL,
  `ii_704` int(11) DEFAULT NULL,
  `ii_705` int(11) DEFAULT NULL,
  `ii_706` int(11) DEFAULT NULL,
  `ii_707` int(11) DEFAULT NULL,
  `iii_1` int(11) DEFAULT NULL,
  `iii_2` int(11) DEFAULT NULL,
  `iii_3` int(11) DEFAULT NULL,
  `iii_4` int(11) DEFAULT NULL,
  `iii_5` int(11) DEFAULT NULL,
  `iii_6` int(11) DEFAULT NULL,
  `iii_7` int(11) DEFAULT NULL,
  `iii_8` int(11) DEFAULT NULL,
  `iii_9` int(11) DEFAULT NULL,
  `iii_10` int(11) DEFAULT NULL,
  `iii_11` int(11) DEFAULT NULL,
  `iii_12` int(11) DEFAULT NULL,
  `iii_13` int(11) DEFAULT NULL,
  `iii_14` int(11) DEFAULT NULL,
  `iii_15` int(11) DEFAULT NULL,
  `iii_16` int(11) DEFAULT NULL,
  `iii_17` int(11) DEFAULT NULL,
  `iii_18` int(11) DEFAULT NULL,
  `iii_19` int(11) DEFAULT NULL,
  `iii_20` int(11) DEFAULT NULL,
  `iii_21` int(11) DEFAULT NULL,
  `iii_22` int(11) DEFAULT NULL,
  `iii_23` int(11) DEFAULT NULL,
  `iv_1` int(11) DEFAULT NULL,
  `iv_2` int(11) DEFAULT NULL,
  `iv_3` int(11) DEFAULT NULL,
  `iv_4` int(11) DEFAULT NULL,
  `iv_5` int(11) DEFAULT NULL,
  `iv_6` int(11) DEFAULT NULL,
  `iv_7` int(11) DEFAULT NULL,
  `iv_8` int(11) DEFAULT NULL,
  `iv_9` int(11) DEFAULT NULL,
  `iv_10` int(11) DEFAULT NULL,
  `iv_11` int(11) DEFAULT NULL,
  `iv_12` int(11) DEFAULT NULL,
  `iv_13` int(11) DEFAULT NULL,
  `iv_14` int(11) DEFAULT NULL,
  `v_1` int(11) DEFAULT NULL,
  `v_2` int(11) DEFAULT NULL,
  `v_3` int(11) DEFAULT NULL,
  `v_4` int(11) DEFAULT NULL,
  `v_5` int(11) DEFAULT NULL,
  `v_6` int(11) DEFAULT NULL,
  `v_7` int(11) DEFAULT NULL,
  `v_8` int(11) DEFAULT NULL,
  `v_9` int(11) DEFAULT NULL,
  `v_10` int(11) DEFAULT NULL,
  `v_11` int(11) DEFAULT NULL,
  `v_12` int(11) DEFAULT NULL,
  `v_13` int(11) DEFAULT NULL,
  `v_14` int(11) DEFAULT NULL,
  `v_15` int(11) DEFAULT NULL,
  `vi_1` int(11) DEFAULT NULL,
  `vi_2` int(11) DEFAULT NULL,
  `vi_3` int(11) DEFAULT NULL,
  `vi_4` int(11) DEFAULT NULL,
  `vi_5` int(11) DEFAULT NULL,
  `vi_6` int(11) DEFAULT NULL,
  `vi_7` int(11) DEFAULT NULL,
  `vi_8` int(11) DEFAULT NULL,
  `vi_9` int(11) DEFAULT NULL,
  `vi_10` int(11) DEFAULT NULL,
  `vi_11` int(11) DEFAULT NULL,
  `vi_12` int(11) DEFAULT NULL,
  `vi_13` int(11) DEFAULT NULL,
  `vii_1` int(11) DEFAULT NULL,
  `vii_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Ano`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aedocentes1`
--

CREATE TABLE IF NOT EXISTS `aedocentes1` (
  `DANE` int(20) NOT NULL,
  `Ano` date NOT NULL,
  `ComunicacionDocentes` double DEFAULT NULL,
  `ParticipacionDocentes` double DEFAULT NULL,
  `SeguridadResDocentes` double DEFAULT NULL,
  `EAcademicasDocentes` double DEFAULT NULL,
  `VII_d` double DEFAULT NULL,
  `AEscolarDocentes` double DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Ano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aeestudiantes`
--

CREATE TABLE IF NOT EXISTS `aeestudiantes` (
  `Ano` date NOT NULL,
  `DANE` int(20) NOT NULL,
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `ii_1` date DEFAULT NULL,
  `ii_2` int(11) DEFAULT NULL,
  `iii_1` int(11) DEFAULT NULL,
  `iii_2` int(11) DEFAULT NULL,
  `iii_3` int(11) DEFAULT NULL,
  `iii_4` int(11) DEFAULT NULL,
  `iii_5` int(11) DEFAULT NULL,
  `iii_6` int(11) DEFAULT NULL,
  `iii_7` int(11) DEFAULT NULL,
  `iii_8` int(11) DEFAULT NULL,
  `iii_9` int(11) DEFAULT NULL,
  `iv_1` int(11) DEFAULT NULL,
  `iv_2` int(11) DEFAULT NULL,
  `iv_3` int(11) DEFAULT NULL,
  `iv_4` int(11) DEFAULT NULL,
  `iv_5` int(11) DEFAULT NULL,
  `iv_6` int(11) DEFAULT NULL,
  `iv_7` int(11) DEFAULT NULL,
  `iv_8` int(11) DEFAULT NULL,
  `iv_9` int(11) DEFAULT NULL,
  `v_1` int(11) DEFAULT NULL,
  `v_2` int(11) DEFAULT NULL,
  `v_3` int(11) DEFAULT NULL,
  `v_4` int(11) DEFAULT NULL,
  `v_5` int(11) DEFAULT NULL,
  `v_6` int(11) DEFAULT NULL,
  `v_7` int(11) DEFAULT NULL,
  `v_8` int(11) DEFAULT NULL,
  `v_9` int(11) DEFAULT NULL,
  `v_10` int(11) DEFAULT NULL,
  `v_11_a` int(11) DEFAULT NULL,
  `v_11_b` int(11) DEFAULT NULL,
  `v_11_c` int(11) DEFAULT NULL,
  `v_11_d` int(11) DEFAULT NULL,
  `v_12` int(11) DEFAULT NULL,
  `v_13` int(11) DEFAULT NULL,
  `v_14` int(11) DEFAULT NULL,
  `v_15` int(11) DEFAULT NULL,
  `vi_1` int(11) DEFAULT NULL,
  `vi_2` int(11) DEFAULT NULL,
  `vi_3` int(11) DEFAULT NULL,
  `vi_4` int(11) DEFAULT NULL,
  `vi_5` int(11) DEFAULT NULL,
  `vi_6` int(11) DEFAULT NULL,
  `vi_7` int(11) DEFAULT NULL,
  `vi_9` int(11) DEFAULT NULL,
  `vi_10` int(11) DEFAULT NULL,
  `vi_11` int(11) DEFAULT NULL,
  `vi_12` int(11) DEFAULT NULL,
  `vi_13` int(11) DEFAULT NULL,
  `vi_14` int(11) DEFAULT NULL,
  `vi_15` int(11) DEFAULT NULL,
  `vi_16` int(11) DEFAULT NULL,
  `vi_17` int(11) DEFAULT NULL,
  `vi_18` int(11) DEFAULT NULL,
  `vii_1` int(11) DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Ano`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aeestudiantes1`
--

CREATE TABLE IF NOT EXISTS `aeestudiantes1` (
  `DANE` int(20) NOT NULL,
  `Ano` date NOT NULL,
  `ComunicacionEstudiantes` double DEFAULT NULL,
  `ParticipacionEstudiantes` double DEFAULT NULL,
  `SeguridadResEstudiantes` double DEFAULT NULL,
  `EAcademicasEstudiantes` double DEFAULT NULL,
  `VII_e` double DEFAULT NULL,
  `AEscolarEstudiantes` double DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Ano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aepadres`
--

CREATE TABLE IF NOT EXISTS `aepadres` (
  `Ano` date NOT NULL,
  `DANE` int(20) NOT NULL,
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `ii1` int(11) DEFAULT NULL,
  `ii2_hijo_a___1_grado_escolar` int(11) DEFAULT NULL,
  `hijo_a___1_jornada` int(11) DEFAULT NULL,
  `hijo_a___2_grado_escolar` int(11) DEFAULT NULL,
  `hijo_a___2_jornada` int(11) DEFAULT NULL,
  `hijo_a___3_grado_escolar` int(11) DEFAULT NULL,
  `hijo_a___3_jornada` int(11) DEFAULT NULL,
  `hijo_a___4_grado_escolar` int(11) DEFAULT NULL,
  `hijo_a___4_jornada` int(11) DEFAULT NULL,
  `hijo_a___5_grado_escolar` int(11) DEFAULT NULL,
  `hijo_a___5_jornada` int(11) DEFAULT NULL,
  `hijo_a___6_grado_escolar` int(11) DEFAULT NULL,
  `hijo_a___6_jornada` int(11) DEFAULT NULL,
  `hijo_a___7_grado_escolar` int(11) DEFAULT NULL,
  `hijo_a___7_jornada` int(11) DEFAULT NULL,
  `hijo_a___8_grado_escolar` int(11) DEFAULT NULL,
  `hijo_a___8_jornada` int(11) DEFAULT NULL,
  `iii_1` int(11) DEFAULT NULL,
  `iii_2` int(11) DEFAULT NULL,
  `iii_3` int(11) DEFAULT NULL,
  `iii_4` int(11) DEFAULT NULL,
  `iii_5` int(11) DEFAULT NULL,
  `iii_6` int(11) DEFAULT NULL,
  `iii_7` int(11) DEFAULT NULL,
  `iii_8` int(11) DEFAULT NULL,
  `iii_9` int(11) DEFAULT NULL,
  `iv_1` int(11) DEFAULT NULL,
  `iv_2` int(11) DEFAULT NULL,
  `iv_3` int(11) DEFAULT NULL,
  `iv_4` int(11) DEFAULT NULL,
  `iv_5` int(11) DEFAULT NULL,
  `iv_6` int(11) DEFAULT NULL,
  `iv_7` int(11) DEFAULT NULL,
  `iv_8` int(11) DEFAULT NULL,
  `iv_9` int(11) DEFAULT NULL,
  `iv_10` int(30) DEFAULT NULL,
  `iv_11` int(11) DEFAULT NULL,
  `iv_12` int(11) DEFAULT NULL,
  `v_1` int(11) DEFAULT NULL,
  `v_2` int(11) DEFAULT NULL,
  `v_3` int(11) DEFAULT NULL,
  `v_4` int(11) DEFAULT NULL,
  `v_5` int(11) DEFAULT NULL,
  `v_6` int(11) DEFAULT NULL,
  `v_7` int(11) DEFAULT NULL,
  `v_8` int(11) DEFAULT NULL,
  `v_9` int(11) DEFAULT NULL,
  `vi_1` int(11) DEFAULT NULL,
  `vi_2` int(11) DEFAULT NULL,
  `vi_3` int(11) DEFAULT NULL,
  `vi_4` int(11) DEFAULT NULL,
  `vi_5` int(11) DEFAULT NULL,
  `vi_6` int(11) DEFAULT NULL,
  `vi_7` int(11) DEFAULT NULL,
  `vi_8` int(11) DEFAULT NULL,
  `vi_9` int(11) DEFAULT NULL,
  `vi_10` int(11) DEFAULT NULL,
  `vi_11` int(11) DEFAULT NULL,
  `vii_1` int(11) DEFAULT NULL,
  `vii_2` int(11) DEFAULT NULL,
  `vii_20` int(11) DEFAULT NULL,
  `vii_21` int(11) DEFAULT NULL,
  `vii_22` int(11) DEFAULT NULL,
  `vii_23` int(11) DEFAULT NULL,
  `vii_24` int(11) DEFAULT NULL,
  `vii_25` int(11) DEFAULT NULL,
  `vii_26` int(11) DEFAULT NULL,
  `vii_27` int(11) DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Ano`,`ID`),
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aepadres1`
--

CREATE TABLE IF NOT EXISTS `aepadres1` (
  `DANE` int(20) NOT NULL,
  `Ano` date NOT NULL,
  `ComunicacionPadres` double DEFAULT NULL,
  `ParticipacionPadres` double DEFAULT NULL,
  `SeguridadResPadres` double DEFAULT NULL,
  `EAcademicasPadres` double DEFAULT NULL,
  `VII_p` double DEFAULT NULL,
  `AEscolarPadres` double DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Ano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ambienteescolar`
--

CREATE TABLE IF NOT EXISTS `ambienteescolar` (
  `DANE` int(20) NOT NULL,
  `Ano` date NOT NULL,
  `EAcademicas` double DEFAULT NULL,
  `Comunicacion` double DEFAULT NULL,
  `Participacion` double DEFAULT NULL,
  `SeguridadRespeto` double DEFAULT NULL,
  `AmbienteEscolar` double DEFAULT NULL,
  `VII_Total` double DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Ano`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aprobación`
--

CREATE TABLE IF NOT EXISTS `aprobación` (
  `Año` date NOT NULL,
  `Porcentaje Aprobación` double DEFAULT NULL,
  `Grado` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Código Sede` char(5) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`DANE`,`Código Sede`,`Año`,`Grado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clusters`
--

CREATE TABLE IF NOT EXISTS `clusters` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Cluster` int(11) DEFAULT NULL,
  PRIMARY KEY (`DANE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dane-icfes`
--

CREATE TABLE IF NOT EXISTS `dane-icfes` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Código ICFES` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Año` date NOT NULL,
  PRIMARY KEY (`Código ICFES`,`Año`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `Código Departamento` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Nombre` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Código Departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edad saber censal`
--

CREATE TABLE IF NOT EXISTS `edad saber censal` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `cod_prueba` int(11) NOT NULL,
  `Año` date NOT NULL,
  `ID` int(11) NOT NULL,
  `Grado` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Semestre` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`DANE`,`cod_prueba`,`Año`,`ID`,`Grado`,`Semestre`),
  KEY `Edad Saber Censal_Pruebas_FK` (`cod_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extraedad oficial`
--

CREATE TABLE IF NOT EXISTS `extraedad oficial` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Año` date NOT NULL,
  `Extraedad` int(11) DEFAULT NULL,
  `Número de Estudiantes` int(11) DEFAULT NULL,
  `rtextra` double DEFAULT NULL,
  `Grado` char(5) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`DANE`,`Año`,`Grado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extraedad saber`
--

CREATE TABLE IF NOT EXISTS `extraedad saber` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Año` date NOT NULL,
  `Extraedad` int(11) DEFAULT NULL,
  `Número de Estudiantes` int(11) DEFAULT NULL,
  `rtextra` double DEFAULT NULL,
  `Grado` char(5) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`DANE`,`Año`,`Grado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indicadores imputados`
--

CREATE TABLE IF NOT EXISTS `indicadores imputados` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Año` date NOT NULL,
  `l5r` double DEFAULT NULL,
  `m5r` double DEFAULT NULL,
  `cn5r` double DEFAULT NULL,
  `l9r` double DEFAULT NULL,
  `m9r` double DEFAULT NULL,
  `cn9r` double DEFAULT NULL,
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
  `l5_03` double DEFAULT NULL,
  `m5_03` double DEFAULT NULL,
  `l9_03` double DEFAULT NULL,
  `m9_03` double DEFAULT NULL,
  `tema_matematica_07` double DEFAULT NULL,
  `tema_lenguaje_07` double DEFAULT NULL,
  `mat11_bajo_2007` int(11) DEFAULT NULL,
  `mat11_medio_2007` int(11) DEFAULT NULL,
  `mat11_alto_2007` int(11) DEFAULT NULL,
  `len11_bajo_2007` int(11) DEFAULT NULL,
  `len11_medio_2007` int(11) DEFAULT NULL,
  `len11_alto_2007` int(11) DEFAULT NULL,
  `estu_consecnum` int(11) DEFAULT NULL,
  `prmat_bajo_07_p` double DEFAULT NULL,
  `prmat_medio_07_p` double DEFAULT NULL,
  `prmat_alto_07_p` double DEFAULT NULL,
  `prlen_bajo_07_p` double DEFAULT NULL,
  `prlen_medio_07_p` double DEFAULT NULL,
  `prlen_alto_07_p` double DEFAULT NULL,
  `tema_lenguaje_10` double DEFAULT NULL,
  `tema_matematica_10` double DEFAULT NULL,
  `mat11_bajo_2010` int(11) DEFAULT NULL,
  `mat11_medio_2010` int(11) DEFAULT NULL,
  `mat11_alto_2010` int(11) DEFAULT NULL,
  `len11_bajo_2010` int(11) DEFAULT NULL,
  `len11_medio_2010` int(11) DEFAULT NULL,
  `len11_alto_2010` int(11) DEFAULT NULL,
  `prmat_bajo_10_p` double DEFAULT NULL,
  `prmat_medio_10_p` double DEFAULT NULL,
  `prmat_alto_10_p` double DEFAULT NULL,
  `prlen_bajo_10_p` double DEFAULT NULL,
  `prlen_medio_10_p` double DEFAULT NULL,
  `prlen_alto_10_p` double DEFAULT NULL,
  `aprobación5` double DEFAULT NULL,
  `aprobación9` double DEFAULT NULL,
  `aprobación11a` double DEFAULT NULL,
  `aprobación11t` double DEFAULT NULL,
  `Extraedad` int(11) DEFAULT NULL,
  `n` int(11) DEFAULT NULL,
  `rtextra` double DEFAULT NULL,
  `orden_lenguaje5_09` int(11) DEFAULT NULL,
  `orden_matematica5_09` int(11) DEFAULT NULL,
  `orden_lenguaje9_09` int(11) DEFAULT NULL,
  `orden_matematica9_09` int(11) DEFAULT NULL,
  `orden_lenguaje11_07` int(11) DEFAULT NULL,
  `orden_matematica11_07` int(11) DEFAULT NULL,
  `orden_lenguaje11_10` int(11) DEFAULT NULL,
  `orden_matematica11_10` int(11) DEFAULT NULL,
  `orden_lenguaje5_03` int(11) DEFAULT NULL,
  `orden_matematica5_03` int(11) DEFAULT NULL,
  `orden_lenguaje9_03` int(11) DEFAULT NULL,
  `orden_matematica9_03` int(11) DEFAULT NULL,
  `diferencia_lenguaje_5` int(11) DEFAULT NULL,
  `diferencia_matematica_5` int(11) DEFAULT NULL,
  `diferencia_lenguaje_9` int(11) DEFAULT NULL,
  `diferencia_matematica_9` int(11) DEFAULT NULL,
  `diferencia_lenguaje_11` int(11) DEFAULT NULL,
  `diferencia_matematica_11` int(11) DEFAULT NULL,
  `Progresolen5` double DEFAULT NULL,
  `Progresolen9` double DEFAULT NULL,
  `Progresolen11` double DEFAULT NULL,
  `Progresomat5` double DEFAULT NULL,
  `Progresomat9` double DEFAULT NULL,
  `Progresomat11` double DEFAULT NULL,
  `indicadorsin5ni9` double DEFAULT NULL,
  `totalmedianas11` double DEFAULT NULL,
  `avanzado_m9a` int(11) DEFAULT NULL,
  `avanzado_m5a` int(11) DEFAULT NULL,
  `avanzado_l9a` int(11) DEFAULT NULL,
  `avanzado_l5a` int(11) DEFAULT NULL,
  `avanzado_m9b` int(11) DEFAULT NULL,
  `avanzado_m5b` int(11) DEFAULT NULL,
  `avanzado_l9b` int(11) DEFAULT NULL,
  `avanzado_l5b` int(11) DEFAULT NULL,
  `apro11mean` double DEFAULT NULL,
  `totalavanzados` int(11) DEFAULT NULL,
  `tema_matematicaa` double DEFAULT NULL,
  `tema_matematica_da` double DEFAULT NULL,
  `tema_lenguajea` double DEFAULT NULL,
  `tema_lenguaje_da` double DEFAULT NULL,
  `prlen_alto_07a` double DEFAULT NULL,
  `prmat_alto_07a` double DEFAULT NULL,
  `prlen_alto_10a` double DEFAULT NULL,
  `prmat_alto_10a` double DEFAULT NULL,
  `tema_matematicab` double DEFAULT NULL,
  `tema_matematica_db` double DEFAULT NULL,
  `tema_lenguajeb` double DEFAULT NULL,
  `tema_lenguaje_db` double DEFAULT NULL,
  `prlen_alto_07b` double DEFAULT NULL,
  `prmat_alto_07b` double DEFAULT NULL,
  `prlen_alto_10b` double DEFAULT NULL,
  `prmat_alto_10b` double DEFAULT NULL,
  `TemaMatematica07` double DEFAULT NULL,
  `TemaLenguaje07` double DEFAULT NULL,
  `prmatalto07` double DEFAULT NULL,
  `prlenalto07` double DEFAULT NULL,
  `TemaLenguaje10` double DEFAULT NULL,
  `TemaMatematica10` double DEFAULT NULL,
  `prmatalto10` double DEFAULT NULL,
  `prlenalto10` double DEFAULT NULL,
  `Avanzadom9` int(11) DEFAULT NULL,
  `Avanzadom5` int(11) DEFAULT NULL,
  `Avanzadol9` int(11) DEFAULT NULL,
  `Avanzadol5` int(11) DEFAULT NULL,
  `Aprobacion5` double DEFAULT NULL,
  `Aprobacion9` double DEFAULT NULL,
  `Rextraedad` double DEFAULT NULL,
  `ProgresoLen5-final` double DEFAULT NULL,
  `ProgresoLen9-final` double DEFAULT NULL,
  `ProgresoMat5-final` double DEFAULT NULL,
  `ProgresoMat9-final` double DEFAULT NULL,
  `ProgresoLen11-final` double DEFAULT NULL,
  `ProgresoMat11-final` double DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Año`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indice aprendizaje eficiencia`
--

CREATE TABLE IF NOT EXISTS `indice aprendizaje eficiencia` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Año` date NOT NULL,
  `l5r` double DEFAULT NULL,
  `m5r` double DEFAULT NULL,
  `cn5r` double DEFAULT NULL,
  `l9r` double DEFAULT NULL,
  `m9r` double DEFAULT NULL,
  `cn9r` double DEFAULT NULL,
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
  `l5_03` double DEFAULT NULL,
  `m5_03` double DEFAULT NULL,
  `l9_03` double DEFAULT NULL,
  `m9_03` double DEFAULT NULL,
  `tema_matematica_07` double DEFAULT NULL,
  `tema_lenguaje_07` double DEFAULT NULL,
  `mat11_bajo_2007` int(11) DEFAULT NULL,
  `mat11_medio_2007` int(11) DEFAULT NULL,
  `mat11_alto_2007` int(11) DEFAULT NULL,
  `len11_bajo_2007` int(11) DEFAULT NULL,
  `len11_medio_2007` int(11) DEFAULT NULL,
  `len11_alto_2007` int(11) DEFAULT NULL,
  `estu_consecnum` int(11) DEFAULT NULL,
  `prmat_bajo_07_p` double DEFAULT NULL,
  `prmat_medio_07_p` double DEFAULT NULL,
  `prmat_alto_07_p` double DEFAULT NULL,
  `prlen_bajo_07_p` double DEFAULT NULL,
  `prlen_medio_07_p` double DEFAULT NULL,
  `prlen_alto_07_p` double DEFAULT NULL,
  `tema_lenguaje_10` double DEFAULT NULL,
  `tema_matematica_10` double DEFAULT NULL,
  `mat11_bajo_2010` int(11) DEFAULT NULL,
  `mat11_medio_2010` int(11) DEFAULT NULL,
  `mat11_alto_2010` int(11) DEFAULT NULL,
  `len11_bajo_2010` int(11) DEFAULT NULL,
  `len11_medio_2010` int(11) DEFAULT NULL,
  `len11_alto_2010` int(11) DEFAULT NULL,
  `prmat_bajo_10_p` double DEFAULT NULL,
  `prmat_medio_10_p` double DEFAULT NULL,
  `prmat_alto_10_p` double DEFAULT NULL,
  `prlen_bajo_10_p` double DEFAULT NULL,
  `prlen_medio_10_p` double DEFAULT NULL,
  `prlen_alto_10_p` double DEFAULT NULL,
  `aprobación5` double DEFAULT NULL,
  `aprobación9` double DEFAULT NULL,
  `aprobación11a` double DEFAULT NULL,
  `aprobación11t` double DEFAULT NULL,
  `Extraedad` int(11) DEFAULT NULL,
  `n` int(11) DEFAULT NULL,
  `rtextra` double DEFAULT NULL,
  `orden_lenguaje5_09` int(11) DEFAULT NULL,
  `orden_matematica5_09` int(11) DEFAULT NULL,
  `orden_lenguaje9_09` int(11) DEFAULT NULL,
  `orden_matematica9_09` int(11) DEFAULT NULL,
  `orden_lenguaje11_07` int(11) DEFAULT NULL,
  `orden_matematica11_07` int(11) DEFAULT NULL,
  `orden_lenguaje11_10` int(11) DEFAULT NULL,
  `orden_matematica11_10` int(11) DEFAULT NULL,
  `orden_lenguaje5_03` int(11) DEFAULT NULL,
  `orden_matematica5_03` int(11) DEFAULT NULL,
  `orden_lenguaje9_03` int(11) DEFAULT NULL,
  `orden_matematica9_03` int(11) DEFAULT NULL,
  `diferencia_lenguaje_5` int(11) DEFAULT NULL,
  `diferencia_matematica_5` int(11) DEFAULT NULL,
  `diferencia_lenguaje_9` int(11) DEFAULT NULL,
  `diferencia_matematica_9` int(11) DEFAULT NULL,
  `diferencia_lenguaje_11` int(11) DEFAULT NULL,
  `diferencia_matematica_11` int(11) DEFAULT NULL,
  `Progresolen5` double DEFAULT NULL,
  `Progresolen9` double DEFAULT NULL,
  `Progresolen11` double DEFAULT NULL,
  `Progresomat5` double DEFAULT NULL,
  `Progresomat9` double DEFAULT NULL,
  `Progresomat11` double DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Año`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institucioneducativa`
--

CREATE TABLE IF NOT EXISTS `institucioneducativa` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Nombre corto` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Nombre` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Comuna_ie` int(11) DEFAULT NULL,
  `Núcleo` int(11) DEFAULT NULL,
  `Direccion` double DEFAULT NULL,
  `Telefono` double DEFAULT NULL,
  `Fax` double DEFAULT NULL,
  `Nombre Director` double DEFAULT NULL,
  `Calendario` double DEFAULT NULL,
  `Genero Población` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Código Naturaleza` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Código Zona` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Código Departamento` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Código Municipio` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Código Jornada` char(5) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`DANE`),
  KEY `Institución Educativa_Departamentos_FK` (`Código Departamento`),
  KEY `Institución Educativa_Jornadas_FK` (`Código Jornada`),
  KEY `Institución Educativa_Municipios_FK` (`Código Municipio`),
  KEY `Institución Educativa_Naturalezas_FK` (`Código Naturaleza`),
  KEY `Institución Educativa_Zonas_FK` (`Código Zona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jornadas`
--

CREATE TABLE IF NOT EXISTS `jornadas` (
  `Código Jornada` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Jornada` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Código Jornada`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `municipios`
--

CREATE TABLE IF NOT EXISTS `municipios` (
  `Código Municipio` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Nombre` varchar(40) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Código Municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `naturalezas`
--

CREATE TABLE IF NOT EXISTS `naturalezas` (
  `Código Naturaleza` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Naturaleza` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Código Naturaleza`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notas`
--

CREATE TABLE IF NOT EXISTS `notas` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Año` date NOT NULL,
  `Nota` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`DANE`,`Año`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `olimpiadas`
--

CREATE TABLE IF NOT EXISTS `olimpiadas` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Año` date NOT NULL,
  `Total Matemáticas` int(11) DEFAULT NULL,
  `Total Lenguaje` int(11) DEFAULT NULL,
  `Grado` int(11) NOT NULL,
  PRIMARY KEY (`DANE`,`Año`,`Grado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opciones educativas`
--

CREATE TABLE IF NOT EXISTS `opciones educativas` (
  `Código Opción Educativa` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Opción Educativa` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Código Opción Educativa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesos`
--

CREATE TABLE IF NOT EXISTS `pesos` (
  `ID` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `ExpectativasAcademicas` double DEFAULT NULL,
  `Comunicacion` double DEFAULT NULL,
  `Participacion` double DEFAULT NULL,
  `SeguridadRespeto` double DEFAULT NULL,
  `TemaMatematica07` double DEFAULT NULL,
  `TemaLenguaje07` double DEFAULT NULL,
  `prmatalto07` double DEFAULT NULL,
  `prlenalto07` double DEFAULT NULL,
  `TemaLenguaje10` double DEFAULT NULL,
  `TemaMatematica10` double DEFAULT NULL,
  `prmatalto10` double DEFAULT NULL,
  `prlenalto10` double DEFAULT NULL,
  `Avanzadom9` double DEFAULT NULL,
  `Avanzadom5` double DEFAULT NULL,
  `Avanzadol9` double DEFAULT NULL,
  `Avanzadol5` double DEFAULT NULL,
  `Aprobacion5` double DEFAULT NULL,
  `Aprobacion9` double DEFAULT NULL,
  `Rextraedad` double DEFAULT NULL,
  `ProgresoLen5` double DEFAULT NULL,
  `ProgresoLen9` double DEFAULT NULL,
  `ProgresoMat5` double DEFAULT NULL,
  `ProgresoMat9` double DEFAULT NULL,
  `ProgresoLen11` double DEFAULT NULL,
  `ProgresoMat11` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proporción estrato`
--

CREATE TABLE IF NOT EXISTS `proporción estrato` (
  `Proporción estrato 1` double DEFAULT NULL,
  `Proporción estrato 6` double DEFAULT NULL,
  `Proposción estrato 2` double DEFAULT NULL,
  `Proporción estrato 3` double DEFAULT NULL,
  `Proporción estrato 4` double DEFAULT NULL,
  `Proporción estrato 5` double DEFAULT NULL,
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Año` char(5) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`DANE`,`Año`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pruebas`
--

CREATE TABLE IF NOT EXISTS `pruebas` (
  `cod_prueba` int(11) NOT NULL,
  `Prueba` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Usada` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saber`
--

CREATE TABLE IF NOT EXISTS `saber` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Año` date NOT NULL,
  `Grado` int(11) NOT NULL,
  `Jornada` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Mediana` double DEFAULT NULL,
  `Porcentaje Bajo` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Porcentaje Medio` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `Porcentaje Alto` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `cod_prueba` int(11) NOT NULL,
  PRIMARY KEY (`DANE`,`cod_prueba`,`Año`,`Grado`),
  KEY `Saber_Pruebas_FK` (`cod_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saber censal`
--

CREATE TABLE IF NOT EXISTS `saber censal` (
  `Año` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Valor` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `ID` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Grado` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Semestre` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `cod_prueba` int(11) NOT NULL,
  PRIMARY KEY (`DANE`,`cod_prueba`,`Año`,`ID`,`Grado`,`Semestre`),
  KEY `Saber Censal_Pruebas_FK` (`cod_prueba`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sede`
--

CREATE TABLE IF NOT EXISTS `sede` (
  `DANE` char(12) COLLATE latin1_spanish_ci NOT NULL,
  `Código Sede` char(5) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`DANE`,`Código Sede`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zonas`
--

CREATE TABLE IF NOT EXISTS `zonas` (
  `Código Zona` char(5) COLLATE latin1_spanish_ci NOT NULL,
  `Zona` char(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`Código Zona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aprobación`
--
ALTER TABLE `aprobación`
  ADD CONSTRAINT `Aprobación_Sede_FK` FOREIGN KEY (`DANE`, `Código Sede`) REFERENCES `sede` (`DANE`, `Código Sede`) ON DELETE CASCADE;

--
-- Constraints for table `clusters`
--
ALTER TABLE `clusters`
  ADD CONSTRAINT `Clulsters_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE;

--
-- Constraints for table `dane-icfes`
--
ALTER TABLE `dane-icfes`
  ADD CONSTRAINT `DANE-ICFES_Institución Educativa_FK` FOREIGN KEY (`Código ICFES`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE;

--
-- Constraints for table `edad saber censal`
--
ALTER TABLE `edad saber censal`
  ADD CONSTRAINT `Edad Saber Censal_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE,
  ADD CONSTRAINT `Edad Saber Censal_Pruebas_FK` FOREIGN KEY (`cod_prueba`) REFERENCES `pruebas` (`cod_prueba`) ON DELETE CASCADE;

--
-- Constraints for table `extraedad oficial`
--
ALTER TABLE `extraedad oficial`
  ADD CONSTRAINT `Extraedad Oficial_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE,
  ADD CONSTRAINT `Extraedad_Oficial_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE;

--
-- Constraints for table `extraedad saber`
--
ALTER TABLE `extraedad saber`
  ADD CONSTRAINT `Extraedad_Saber_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE;

--
-- Constraints for table `indicadores imputados`
--
ALTER TABLE `indicadores imputados`
  ADD CONSTRAINT `Indicadores Imputados_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE;

--
-- Constraints for table `indice aprendizaje eficiencia`
--
ALTER TABLE `indice aprendizaje eficiencia`
  ADD CONSTRAINT `Indice Aprendizaje Eficiencia_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE;

--
-- Constraints for table `institucioneducativa`
--
ALTER TABLE `institucioneducativa`
  ADD CONSTRAINT `Institución Educativa_Departamentos_FK` FOREIGN KEY (`Código Departamento`) REFERENCES `departamentos` (`Código Departamento`),
  ADD CONSTRAINT `Institución Educativa_Jornadas_FK` FOREIGN KEY (`Código Jornada`) REFERENCES `jornadas` (`Código Jornada`),
  ADD CONSTRAINT `Institución Educativa_Municipios_FK` FOREIGN KEY (`Código Municipio`) REFERENCES `municipios` (`Código Municipio`),
  ADD CONSTRAINT `Institución Educativa_Naturalezas_FK` FOREIGN KEY (`Código Naturaleza`) REFERENCES `naturalezas` (`Código Naturaleza`),
  ADD CONSTRAINT `Institución Educativa_Zonas_FK` FOREIGN KEY (`Código Zona`) REFERENCES `zonas` (`Código Zona`);

--
-- Constraints for table `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `Notas_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE;

--
-- Constraints for table `olimpiadas`
--
ALTER TABLE `olimpiadas`
  ADD CONSTRAINT `Olimpiadas_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE;

--
-- Constraints for table `proporción estrato`
--
ALTER TABLE `proporción estrato`
  ADD CONSTRAINT `Proporción Estrato_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE;

--
-- Constraints for table `saber`
--
ALTER TABLE `saber`
  ADD CONSTRAINT `Saber 5 y 9_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE,
  ADD CONSTRAINT `Saber_Pruebas_FK` FOREIGN KEY (`cod_prueba`) REFERENCES `pruebas` (`cod_prueba`) ON DELETE CASCADE;

--
-- Constraints for table `saber censal`
--
ALTER TABLE `saber censal`
  ADD CONSTRAINT `Saber Censal_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`) ON DELETE CASCADE,
  ADD CONSTRAINT `Saber Censal_Pruebas_FK` FOREIGN KEY (`cod_prueba`) REFERENCES `pruebas` (`cod_prueba`) ON DELETE CASCADE;

--
-- Constraints for table `sede`
--
ALTER TABLE `sede`
  ADD CONSTRAINT `Sede_Institución Educativa_FK` FOREIGN KEY (`DANE`) REFERENCES `institucioneducativa` (`DANE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
