--<ScriptOptions statementTerminator=";"/>

CREATE SCHEMA Schema;

CREATE TABLE AEDocentes (
		Ano DATE NOT NULL, 
		DANE CHAR(12) NOT NULL, 
		ID INTEGER NOT NULL, 
		ii_1 INTEGER, 
		ii_2 VARCHAR(32), 
		ii_4 INTEGER, 
		ii_40 INTEGER, 
		ii_41 INTEGER, 
		ii_42 INTEGER, 
		ii_43 INTEGER, 
		ii_44 INTEGER, 
		ii_45 INTEGER, 
		ii_46 INTEGER, 
		ii_47 INTEGER, 
		ii_48 INTEGER, 
		ii_5 INTEGER, 
		ii_50 INTEGER, 
		ii_6 INTEGER, 
		ii_60 INTEGER, 
		ii_61 INTEGER, 
		ii_62 INTEGER, 
		ii_63 INTEGER, 
		ii_64 INTEGER, 
		ii_65 INTEGER, 
		ii_66 INTEGER, 
		ii_67 INTEGER, 
		ii_68 INTEGER, 
		ii_69 INTEGER, 
		ii_600 INTEGER, 
		ii_7 INTEGER, 
		ii_70 INTEGER, 
		ii_71 INTEGER, 
		ii_72 INTEGER, 
		ii_73 INTEGER, 
		ii_74 INTEGER, 
		ii_75 INTEGER, 
		ii_76 INTEGER, 
		ii_77 INTEGER, 
		ii_78 INTEGER, 
		ii_79 INTEGER, 
		ii_700 INTEGER, 
		ii_701 INTEGER, 
		ii_702 INTEGER, 
		ii_703 INTEGER, 
		ii_704 INTEGER, 
		ii_705 INTEGER, 
		ii_706 INTEGER, 
		ii_707 INTEGER, 
		ii_8 INTEGER, 
		ii_9 INTEGER, 
		iii_1 INTEGER, 
		iii_2 INTEGER, 
		iii_3 INTEGER, 
		iii_4 INTEGER, 
		iii_5 INTEGER, 
		iii_6 INTEGER, 
		iii_7 INTEGER, 
		iii_8 INTEGER, 
		iii_9 INTEGER, 
		iii_10 INTEGER, 
		iii_11 INTEGER, 
		iii_12 INTEGER, 
		iii_13 INTEGER, 
		iii_14 INTEGER, 
		iii_15 INTEGER, 
		iii_16 INTEGER, 
		iii_17 INTEGER, 
		iii_18 INTEGER, 
		iii_19 INTEGER, 
		iii_20 INTEGER, 
		iii_21 INTEGER, 
		iii_22 INTEGER, 
		iii_23 INTEGER, 
		iv_1 INTEGER, 
		iv_2 INTEGER, 
		iv_3 INTEGER, 
		iv_4 INTEGER, 
		iv_5 INTEGER, 
		iv_6 INTEGER, 
		iv_7 INTEGER, 
		iv_8 INTEGER, 
		iv_9 INTEGER, 
		iv_10 INTEGER, 
		iv_11 INTEGER, 
		iv_12 INTEGER, 
		iv_13 INTEGER, 
		iv_14 INTEGER, 
		v_1 INTEGER, 
		v_2 INTEGER, 
		v_3 INTEGER, 
		v_4 INTEGER, 
		v_5 INTEGER, 
		v_6 INTEGER, 
		v_7 INTEGER, 
		v_8 INTEGER, 
		v_9 INTEGER, 
		v_10 INTEGER, 
		v_11 INTEGER, 
		v_12 INTEGER, 
		v_13 INTEGER, 
		v_14 INTEGER, 
		v_15 INTEGER, 
		vi_1 INTEGER, 
		vi_2 INTEGER, 
		vi_3 INTEGER, 
		vi_4 INTEGER, 
		vi_5 INTEGER, 
		vi_6 INTEGER, 
		vi_7 INTEGER, 
		vi_8 INTEGER, 
		vi_9 INTEGER, 
		vi_10 INTEGER, 
		vi_11 INTEGER, 
		vi_12 INTEGER, 
		vi_13 INTEGER, 
		vii_1 INTEGER, 
		vii_2 INTEGER
	)
	
	;

CREATE TABLE AEDocentes1 (
		Ano DATE NOT NULL, 
		Comunicacion DOUBLE, 
		Participacion DOUBLE, 
		SeguridadRes DOUBLE, 
		DANE CHAR(12) NOT NULL, 
		EAcademicas DOUBLE, 
		VII_d DOUBLE, 
		AEscolar DOUBLE
	)
	
	;

CREATE TABLE AEEstudiantes (
		Ano DATE NOT NULL, 
		DANE CHAR(12) NOT NULL, 
		ID INTEGER NOT NULL, 
		ii_1 DATE, 
		ii_2 INTEGER, 
		iii_1 INTEGER, 
		iii_2 INTEGER, 
		iii_3 INTEGER, 
		iii_4 INTEGER, 
		iii_5 INTEGER, 
		iii_6 INTEGER, 
		iii_7 INTEGER, 
		iii_8 INTEGER, 
		iii_9 INTEGER, 
		iv_1 INTEGER, 
		iv_2 INTEGER, 
		iv_3 INTEGER, 
		iv_4 INTEGER, 
		iv_5 INTEGER, 
		iv_6 INTEGER, 
		iv_7 INTEGER, 
		iv_8 INTEGER, 
		iv_9 INTEGER, 
		v_1 INTEGER, 
		v_2 INTEGER, 
		v_3 INTEGER, 
		v_4 INTEGER, 
		v_5 INTEGER, 
		v_6 INTEGER, 
		v_7 INTEGER, 
		v_8 INTEGER, 
		v_9 INTEGER, 
		v_10 INTEGER, 
		v_11_a INTEGER, 
		v_11_b INTEGER, 
		v_11_c INTEGER, 
		v_11_d INTEGER, 
		v_12 INTEGER, 
		v_13 INTEGER, 
		v_14 INTEGER, 
		v_15 INTEGER, 
		vi_1 INTEGER, 
		vi_2 INTEGER, 
		vi_3 INTEGER, 
		vi_4 INTEGER, 
		vi_5 INTEGER, 
		vi_6 INTEGER, 
		vi_7 INTEGER, 
		vi_9 INTEGER, 
		vi_10 INTEGER, 
		vi_11 INTEGER, 
		vi_12 INTEGER, 
		vi_13 INTEGER, 
		vi_14 INTEGER, 
		vi_15 INTEGER, 
		vi_16 INTEGER, 
		vi_17 INTEGER, 
		vi_18 INTEGER, 
		vii_1 INTEGER
	)
	
	;

CREATE TABLE AEEstudiantes1 (
		Ano DATE NOT NULL, 
		Comunicacion DOUBLE, 
		Participacion DOUBLE, 
		SeguridadRes DOUBLE, 
		DANE CHAR(12) NOT NULL, 
		EAcademicas DOUBLE, 
		VII_e DOUBLE, 
		AEscolar DOUBLE
	)
	
	;

CREATE TABLE AEPadres (
		Ano DATE NOT NULL, 
		ID INTEGER NOT NULL, 
		ii1 INTEGER, 
		ii2_hijo_a___1_grado_escolar INTEGER, 
		hijo_a___1_jornada INTEGER, 
		hijo_a___2_grado_escolar INTEGER, 
		hijo_a___2_jornada INTEGER, 
		hijo_a___3_grado_escolar INTEGER, 
		hijo_a___3_jornada INTEGER, 
		hijo_a___4_grado_escolar INTEGER, 
		hijo_a___4_jornada INTEGER, 
		hijo_a___5_grado_escolar INTEGER, 
		hijo_a___5_jornada INTEGER, 
		hijo_a___6_grado_escolar INTEGER, 
		hijo_a___6_jornada INTEGER, 
		hijo_a___7_grado_escolar INTEGER, 
		hijo_a___7_jornada INTEGER, 
		hijo_a___8_grado_escolar INTEGER, 
		hijo_a___8_jornada INTEGER, 
		iii_1 INTEGER, 
		iii_2 INTEGER, 
		iii_3 INTEGER, 
		iii_4 INTEGER, 
		iii_5 INTEGER, 
		iii_6 INTEGER, 
		iii_7 INTEGER, 
		iii_8 INTEGER, 
		iii_9 INTEGER, 
		iv_1 INTEGER, 
		iv_2 INTEGER, 
		iv_3 INTEGER, 
		iv_4 INTEGER, 
		iv_5 INTEGER, 
		iv_6 INTEGER, 
		iv_7 INTEGER, 
		iv_8 INTEGER, 
		iv_9 INTEGER, 
		iv_10 CHAR(30), 
		iv_11 INTEGER, 
		iv_12 INTEGER, 
		v_1 INTEGER, 
		v_2 INTEGER, 
		v_3 INTEGER, 
		v_4 INTEGER, 
		v_5 INTEGER, 
		v_6 INTEGER, 
		v_7 INTEGER, 
		v_8 INTEGER, 
		v_9 INTEGER, 
		vi_1 INTEGER, 
		vi_2 INTEGER, 
		vi_3 INTEGER, 
		vi_4 INTEGER, 
		vi_5 INTEGER, 
		vi_6 INTEGER, 
		vi_7 INTEGER, 
		vi_8 INTEGER, 
		vi_9 INTEGER, 
		vi_10 INTEGER, 
		vi_11 INTEGER, 
		vii_1 INTEGER, 
		vii_2 INTEGER, 
		vii_20 INTEGER, 
		vii_21 INTEGER, 
		vii_22 INTEGER, 
		vii_23 INTEGER, 
		vii_24 INTEGER, 
		vii_25 INTEGER, 
		vii_26 INTEGER, 
		vii_27 INTEGER, 
		DANE CHAR(12) NOT NULL
	)
	
	;

CREATE TABLE AEPadres1 (
		Ano DATE NOT NULL, 
		Comunicación DOUBLE, 
		Participación DOUBLE, 
		SeguridadRes DOUBLE, 
		DANE CHAR(12) NOT NULL, 
		EAcademicas DOUBLE, 
		VII_p DOUBLE, 
		AEscolar DOUBLE
	)
	
	;

CREATE TABLE AmbienteEscolar (
		Ano DATE NOT NULL, 
		EAcademicas DOUBLE, 
		Comunicacion DOUBLE, 
		Participacion DOUBLE, 
		SeguridadRespeto DOUBLE, 
		DANE CHAR(12) NOT NULL, 
		AmbienteEscolar DOUBLE, 
		VII_Total DOUBLE
	)
	
	;

CREATE TABLE Aprobación (
		Año DATE NOT NULL, 
		Porcentaje Aprobación DOUBLE, 
		Grado CHAR(5) NOT NULL, 
		Código DANE CHAR(12) NOT NULL, 
		Código Sede CHAR(5) NOT NULL
	)
	
	;

CREATE TABLE Clusters (
		Código DANE CHAR(12) NOT NULL, 
		Cluster INTEGER
	)
	
	;

CREATE TABLE DANE-ICFES (
		Código DANE CHAR(12) NOT NULL, 
		Código ICFES CHAR(12) NOT NULL, 
		Año DATE NOT NULL
	)
	
	;

CREATE TABLE Departamentos (
		Código Departamento CHAR(5) NOT NULL, 
		Nombre CHAR(5)
	)
	
	;

CREATE TABLE Edad Saber Censal (
		Código DANE CHAR(12) NOT NULL, 
		cod_prueba INTEGER NOT NULL, 
		Año DATE NOT NULL, 
		ID INTEGER NOT NULL, 
		Grado CHAR(5) NOT NULL, 
		Semestre CHAR(5) NOT NULL, 
		Edad INTEGER
	)
	
	;

CREATE TABLE Extraedad Oficial (
		Código DANE CHAR(12) NOT NULL, 
		Año DATE NOT NULL, 
		Extraedad INTEGER, 
		Número de Estudiantes INTEGER, 
		rtextra DOUBLE, 
		Grado CHAR(5) NOT NULL
	)
	
	;

CREATE TABLE Extraedad Saber (
		Código DANE CHAR(12) NOT NULL, 
		Año DATE NOT NULL, 
		Extraedad INTEGER, 
		Número de Estudiantes INTEGER, 
		rtextra DOUBLE, 
		Grado CHAR(5) NOT NULL
	)
	
	;

CREATE TABLE Indicadores Imputados (
		Código DANE CHAR(12) NOT NULL, 
		Año DATE NOT NULL, 
		l5r DOUBLE, 
		m5r DOUBLE, 
		cn5r DOUBLE, 
		l9r DOUBLE, 
		m9r DOUBLE, 
		cn9r DOUBLE, 
		rango1_l5r INTEGER, 
		rango2_l5r INTEGER, 
		rango3_l5r INTEGER, 
		rango4_l5r INTEGER, 
		rango5_l5r INTEGER, 
		rango6_l5r INTEGER, 
		rango1_m5r INTEGER, 
		rango2_m5r INTEGER, 
		rango3_m5r INTEGER, 
		rango4_m5r INTEGER, 
		rango5_m5r INTEGER, 
		rango6_m5r INTEGER, 
		rango1_l9r INTEGER, 
		rango2_l9r INTEGER, 
		rango3_l9r INTEGER, 
		rango4_l9r INTEGER, 
		rango5_l9r INTEGER, 
		rango6_l9r INTEGER, 
		rango1_m9r INTEGER, 
		rango2_m9r INTEGER, 
		rango3_m9r INTEGER, 
		rango4_m9r INTEGER, 
		rango5_m9r INTEGER, 
		rango6_m9r INTEGER, 
		insuficiente_m9 INTEGER, 
		minimo_m9 INTEGER, 
		satisfactorio_m9 INTEGER, 
		avanzado_m9 INTEGER, 
		insuficiente_m5 INTEGER, 
		minimo_m5 INTEGER, 
		satisfactorio_m5 INTEGER, 
		avanzado_m5 INTEGER, 
		insuficiente_l9 INTEGER, 
		minimo_l9 INTEGER, 
		satisfactorio_l9 INTEGER, 
		avanzado_l9 INTEGER, 
		insuficiente_l5 INTEGER, 
		minimo_l5 INTEGER, 
		satisfactorio_l5 INTEGER, 
		avanzado_l5 INTEGER, 
		l5_03 DOUBLE, 
		m5_03 DOUBLE, 
		l9_03 DOUBLE, 
		m9_03 DOUBLE, 
		tema_matematica_07 DOUBLE, 
		tema_lenguaje_07 DOUBLE, 
		mat11_bajo_2007 INTEGER, 
		mat11_medio_2007 INTEGER, 
		mat11_alto_2007 INTEGER, 
		len11_bajo_2007 INTEGER, 
		len11_medio_2007 INTEGER, 
		len11_alto_2007 INTEGER, 
		estu_consecnum INTEGER, 
		prmat_bajo_07_p DOUBLE, 
		prmat_medio_07_p DOUBLE, 
		prmat_alto_07_p DOUBLE, 
		prlen_bajo_07_p DOUBLE, 
		prlen_medio_07_p DOUBLE, 
		prlen_alto_07_p DOUBLE, 
		tema_lenguaje_10 DOUBLE, 
		tema_matematica_10 DOUBLE, 
		mat11_bajo_2010 INTEGER, 
		mat11_medio_2010 INTEGER, 
		mat11_alto_2010 INTEGER, 
		len11_bajo_2010 INTEGER, 
		len11_medio_2010 INTEGER, 
		len11_alto_2010 INTEGER, 
		prmat_bajo_10_p DOUBLE, 
		prmat_medio_10_p DOUBLE, 
		prmat_alto_10_p DOUBLE, 
		prlen_bajo_10_p DOUBLE, 
		prlen_medio_10_p DOUBLE, 
		prlen_alto_10_p DOUBLE, 
		aprobación5 DOUBLE, 
		aprobación9 DOUBLE, 
		aprobación11a DOUBLE, 
		aprobación11t DOUBLE, 
		Extraedad INTEGER, 
		n INTEGER, 
		rtextra DOUBLE, 
		orden_lenguaje5_09 INTEGER, 
		orden_matematica5_09 INTEGER, 
		orden_lenguaje9_09 INTEGER, 
		orden_matematica9_09 INTEGER, 
		orden_lenguaje11_07 INTEGER, 
		orden_matematica11_07 INTEGER, 
		orden_lenguaje11_10 INTEGER, 
		orden_matematica11_10 INTEGER, 
		orden_lenguaje5_03 INTEGER, 
		orden_matematica5_03 INTEGER, 
		orden_lenguaje9_03 INTEGER, 
		orden_matematica9_03 INTEGER, 
		diferencia_lenguaje_5 INTEGER, 
		diferencia_matematica_5 INTEGER, 
		diferencia_lenguaje_9 INTEGER, 
		diferencia_matematica_9 INTEGER, 
		diferencia_lenguaje_11 INTEGER, 
		diferencia_matematica_11 INTEGER, 
		Progresolen5 DOUBLE, 
		Progresolen9 DOUBLE, 
		Progresolen11 DOUBLE, 
		Progresomat5 DOUBLE, 
		Progresomat9 DOUBLE, 
		Progresomat11 DOUBLE, 
		indicadorsin5ni9 DOUBLE, 
		totalmedianas11 DOUBLE, 
		avanzado_m9a INTEGER, 
		avanzado_m5a INTEGER, 
		avanzado_l9a INTEGER, 
		avanzado_l5a INTEGER, 
		avanzado_m9b INTEGER, 
		avanzado_m5b INTEGER, 
		avanzado_l9b INTEGER, 
		avanzado_l5b INTEGER, 
		apro11mean DOUBLE, 
		totalavanzados INTEGER, 
		tema_matematicaa DOUBLE, 
		tema_matematica_da DOUBLE, 
		tema_lenguajea DOUBLE, 
		tema_lenguaje_da DOUBLE, 
		prlen_alto_07a DOUBLE, 
		prmat_alto_07a DOUBLE, 
		prlen_alto_10a DOUBLE, 
		prmat_alto_10a DOUBLE, 
		tema_matematicab DOUBLE, 
		tema_matematica_db DOUBLE, 
		tema_lenguajeb DOUBLE, 
		tema_lenguaje_db DOUBLE, 
		prlen_alto_07b DOUBLE, 
		prmat_alto_07b DOUBLE, 
		prlen_alto_10b DOUBLE, 
		prmat_alto_10b DOUBLE, 
		TemaMatematica07 DOUBLE, 
		TemaLenguaje07 DOUBLE, 
		prmatalto07 DOUBLE, 
		prlenalto07 DOUBLE, 
		TemaLenguaje10 DOUBLE, 
		TemaMatematica10 DOUBLE, 
		prmatalto10 DOUBLE, 
		prlenalto10 DOUBLE, 
		Avanzadom9 INTEGER, 
		Avanzadom5 INTEGER, 
		Avanzadol9 INTEGER, 
		Avanzadol5 INTEGER, 
		Aprobacion5 DOUBLE, 
		Aprobacion9 DOUBLE, 
		Rextraedad DOUBLE, 
		ProgresoLen5-final DOUBLE, 
		ProgresoLen9-final DOUBLE, 
		ProgresoMat5-final DOUBLE, 
		ProgresoMat9-final DOUBLE, 
		ProgresoLen11-final DOUBLE, 
		ProgresoMat11-final DOUBLE
	)
	
	;

CREATE TABLE Indice Aprendizaje Eficiencia (
		Código DANE CHAR(12) NOT NULL, 
		Año DATE NOT NULL, 
		l5r DOUBLE, 
		m5r DOUBLE, 
		cn5r DOUBLE, 
		l9r DOUBLE, 
		m9r DOUBLE, 
		cn9r DOUBLE, 
		rango1_l5r INTEGER, 
		rango2_l5r INTEGER, 
		rango3_l5r INTEGER, 
		rango4_l5r INTEGER, 
		rango5_l5r INTEGER, 
		rango6_l5r INTEGER, 
		rango1_m5r INTEGER, 
		rango2_m5r INTEGER, 
		rango3_m5r INTEGER, 
		rango4_m5r INTEGER, 
		rango5_m5r INTEGER, 
		rango6_m5r INTEGER, 
		rango1_l9r INTEGER, 
		rango2_l9r INTEGER, 
		rango3_l9r INTEGER, 
		rango4_l9r INTEGER, 
		rango5_l9r INTEGER, 
		rango6_l9r INTEGER, 
		rango1_m9r INTEGER, 
		rango2_m9r INTEGER, 
		rango3_m9r INTEGER, 
		rango4_m9r INTEGER, 
		rango5_m9r INTEGER, 
		rango6_m9r INTEGER, 
		insuficiente_m9 INTEGER, 
		minimo_m9 INTEGER, 
		satisfactorio_m9 INTEGER, 
		avanzado_m9 INTEGER, 
		insuficiente_m5 INTEGER, 
		minimo_m5 INTEGER, 
		satisfactorio_m5 INTEGER, 
		avanzado_m5 INTEGER, 
		insuficiente_l9 INTEGER, 
		minimo_l9 INTEGER, 
		satisfactorio_l9 INTEGER, 
		avanzado_l9 INTEGER, 
		insuficiente_l5 INTEGER, 
		minimo_l5 INTEGER, 
		satisfactorio_l5 INTEGER, 
		avanzado_l5 INTEGER, 
		l5_03 DOUBLE, 
		m5_03 DOUBLE, 
		l9_03 DOUBLE, 
		m9_03 DOUBLE, 
		tema_matematica_07 DOUBLE, 
		tema_lenguaje_07 DOUBLE, 
		mat11_bajo_2007 INTEGER, 
		mat11_medio_2007 INTEGER, 
		mat11_alto_2007 INTEGER, 
		len11_bajo_2007 INTEGER, 
		len11_medio_2007 INTEGER, 
		len11_alto_2007 INTEGER, 
		estu_consecnum INTEGER, 
		prmat_bajo_07_p DOUBLE, 
		prmat_medio_07_p DOUBLE, 
		prmat_alto_07_p DOUBLE, 
		prlen_bajo_07_p DOUBLE, 
		prlen_medio_07_p DOUBLE, 
		prlen_alto_07_p DOUBLE, 
		tema_lenguaje_10 DOUBLE, 
		tema_matematica_10 DOUBLE, 
		mat11_bajo_2010 INTEGER, 
		mat11_medio_2010 INTEGER, 
		mat11_alto_2010 INTEGER, 
		len11_bajo_2010 INTEGER, 
		len11_medio_2010 INTEGER, 
		len11_alto_2010 INTEGER, 
		prmat_bajo_10_p DOUBLE, 
		prmat_medio_10_p DOUBLE, 
		prmat_alto_10_p DOUBLE, 
		prlen_bajo_10_p DOUBLE, 
		prlen_medio_10_p DOUBLE, 
		prlen_alto_10_p DOUBLE, 
		aprobación5 DOUBLE, 
		aprobación9 DOUBLE, 
		aprobación11a DOUBLE, 
		aprobación11t DOUBLE, 
		Extraedad INTEGER, 
		n INTEGER, 
		rtextra DOUBLE, 
		orden_lenguaje5_09 INTEGER, 
		orden_matematica5_09 INTEGER, 
		orden_lenguaje9_09 INTEGER, 
		orden_matematica9_09 INTEGER, 
		orden_lenguaje11_07 INTEGER, 
		orden_matematica11_07 INTEGER, 
		orden_lenguaje11_10 INTEGER, 
		orden_matematica11_10 INTEGER, 
		orden_lenguaje5_03 INTEGER, 
		orden_matematica5_03 INTEGER, 
		orden_lenguaje9_03 INTEGER, 
		orden_matematica9_03 INTEGER, 
		diferencia_lenguaje_5 INTEGER, 
		diferencia_matematica_5 INTEGER, 
		diferencia_lenguaje_9 INTEGER, 
		diferencia_matematica_9 INTEGER, 
		diferencia_lenguaje_11 INTEGER, 
		diferencia_matematica_11 INTEGER, 
		Progresolen5 DOUBLE, 
		Progresolen9 DOUBLE, 
		Progresolen11 DOUBLE, 
		Progresomat5 DOUBLE, 
		Progresomat9 DOUBLE, 
		Progresomat11 DOUBLE
	)
	
	;

CREATE TABLE InstitucionEducativa (
		Código DANE CHAR(12) NOT NULL, 
		Nombre corto VARCHAR(30), 
		Nombre CHAR(5), 
		Comuna_ie INTEGER, 
		Núcleo INTEGER, 
		Direccion DOUBLE, 
		Telefono DOUBLE, 
		Fax DOUBLE, 
		Nombre Director DOUBLE, 
		Calendario DOUBLE, 
		Genero Población CHAR(5), 
		Código Naturaleza CHAR(5) NOT NULL, 
		Código Zona CHAR(5) NOT NULL, 
		Código Departamento CHAR(5) NOT NULL, 
		Código Municipio CHAR(5) NOT NULL, 
		Código Jornada CHAR(5) NOT NULL
	)
	
	;

CREATE TABLE Jornadas (
		Código Jornada CHAR(5) NOT NULL, 
		Jornada CHAR(5)
	)
	
	;

CREATE TABLE Municipios (
		Código Municipio CHAR(5) NOT NULL, 
		Nombre VARCHAR(40)
	)
	
	;

CREATE TABLE Naturalezas (
		Código Naturaleza CHAR(5) NOT NULL, 
		Naturaleza CHAR(5)
	)
	
	;

CREATE TABLE Notas (
		Código DANE CHAR(12) NOT NULL, 
		Año DATE NOT NULL, 
		Nota VARCHAR(255)
	)
	
	;

CREATE TABLE Olimpiadas (
		Código DANE CHAR(12) NOT NULL, 
		Año DATE NOT NULL, 
		Total Matemáticas INTEGER, 
		Total Lenguaje INTEGER, 
		Grado INTEGER NOT NULL
	)
	
	;

CREATE TABLE Opciones Educativas (
		Código Opción Educativa CHAR(5) NOT NULL, 
		Opción Educativa CHAR(5)
	)
	
	;

CREATE TABLE Percentil (
	)
	
	;

CREATE TABLE Pesos (
		ID CHAR(5) NOT NULL, 
		ExpectativasAcademicas DOUBLE, 
		Comunicacion DOUBLE, 
		Participacion DOUBLE, 
		SeguridadRespeto DOUBLE, 
		TemaMatematica07 DOUBLE, 
		TemaLenguaje07 DOUBLE, 
		prmatalto07 DOUBLE, 
		prlenalto07 DOUBLE, 
		TemaLenguaje10 DOUBLE, 
		TemaMatematica10 DOUBLE, 
		prmatalto10 DOUBLE, 
		prlenalto10 DOUBLE, 
		Avanzadom9 DOUBLE, 
		Avanzadom5 DOUBLE, 
		Avanzadol9 DOUBLE, 
		Avanzadol5 DOUBLE, 
		Aprobacion5 DOUBLE, 
		Aprobacion9 DOUBLE, 
		Rextraedad DOUBLE, 
		ProgresoLen5 DOUBLE, 
		ProgresoLen9 DOUBLE, 
		ProgresoMat5 DOUBLE, 
		ProgresoMat9 DOUBLE, 
		ProgresoLen11 DOUBLE, 
		ProgresoMat11 DOUBLE
	)
	
	;

CREATE TABLE Proporción Estrato (
		Proporción estrato 1 DOUBLE, 
		Proporción estrato 6 DOUBLE, 
		Proposción estrato 2 DOUBLE, 
		Proporción estrato 3 DOUBLE, 
		Proporción estrato 4 DOUBLE, 
		Proporción estrato 5 DOUBLE, 
		Código DANE CHAR(12) NOT NULL, 
		Año CHAR(5) NOT NULL
	)
	
	;

CREATE TABLE Pruebas (
		cod_prueba INTEGER NOT NULL, 
		Prueba VARCHAR(30), 
		Usada INTEGER
	)
	
	;

CREATE TABLE Saber (
		Código DANE CHAR(12) NOT NULL, 
		Año DATE NOT NULL, 
		Grado INTEGER NOT NULL, 
		Jornada CHAR(5), 
		Mediana DOUBLE, 
		Porcentaje Bajo CHAR(5), 
		Porcentaje Medio CHAR(5), 
		Porcentaje Alto CHAR(5), 
		cod_prueba INTEGER NOT NULL
	)
	
	;

CREATE TABLE Saber Censal (
		Año CHAR(5) NOT NULL, 
		Código DANE CHAR(12) NOT NULL, 
		Valor CHAR(5), 
		ID CHAR(5) NOT NULL, 
		Grado CHAR(5) NOT NULL, 
		Semestre CHAR(5) NOT NULL, 
		cod_prueba INTEGER NOT NULL
	)
	
	;

CREATE TABLE Sede (
		Código DANE CHAR(12) NOT NULL, 
		Código Sede CHAR(5) NOT NULL
	)
	
	;

CREATE TABLE Zonas (
		Código Zona CHAR(5) NOT NULL, 
		Zona CHAR(5)
	)
	
	;

CREATE TABLE progreso (
	)
	
	;

ALTER TABLE AEDocentes ADD CONSTRAINT AEDocentes_PK PRIMARY KEY
	(DANE, 
	 Ano, 
	 ID);

ALTER TABLE AEDocentes1 ADD CONSTRAINT AEPadres1_PK PRIMARY KEY
	(DANE, 
	 Ano);

ALTER TABLE AEEstudiantes ADD CONSTRAINT AEEstudiantes_PK PRIMARY KEY
	(DANE, 
	 Ano, 
	 ID);

ALTER TABLE AEEstudiantes1 ADD CONSTRAINT AEPadres1_PK PRIMARY KEY
	(DANE, 
	 Ano);

ALTER TABLE AEPadres ADD CONSTRAINT AEPadres_PK PRIMARY KEY
	(DANE, 
	 Ano, 
	 ID);

ALTER TABLE AEPadres1 ADD CONSTRAINT AEPadres1_PK PRIMARY KEY
	(DANE, 
	 Ano);

ALTER TABLE AmbienteEscolar ADD CONSTRAINT Expectativas Padres_PK PRIMARY KEY
	(DANE, 
	 Ano);

ALTER TABLE Aprobación ADD CONSTRAINT Aprobación_PK PRIMARY KEY
	(Código DANE, 
	 Código Sede, 
	 Año, 
	 Grado);

ALTER TABLE Clusters ADD CONSTRAINT Clulsters_PK PRIMARY KEY
	(Código DANE);

ALTER TABLE DANE-ICFES ADD CONSTRAINT DANE-ICFES_PK PRIMARY KEY
	(Código ICFES, 
	 Año);

ALTER TABLE Departamentos ADD CONSTRAINT Departamentos_PK PRIMARY KEY
	(Código Departamento);

ALTER TABLE Edad Saber Censal ADD CONSTRAINT Edad Saber Censal_PK PRIMARY KEY
	(Código DANE, 
	 cod_prueba, 
	 Año, 
	 ID, 
	 Grado, 
	 Semestre);

ALTER TABLE Extraedad Oficial ADD CONSTRAINT Extraedad_PK PRIMARY KEY
	(Código DANE, 
	 Año, 
	 Grado);

ALTER TABLE Extraedad Saber ADD CONSTRAINT Extraedad_PK PRIMARY KEY
	(Código DANE, 
	 Año, 
	 Grado);

ALTER TABLE Indicadores Imputados ADD CONSTRAINT Indice Aprendizaje Eficiencia_PK PRIMARY KEY
	(Código DANE, 
	 Año);

ALTER TABLE Indice Aprendizaje Eficiencia ADD CONSTRAINT Indice Aprendizaje Eficiencia_PK PRIMARY KEY
	(Código DANE, 
	 Año);

ALTER TABLE InstitucionEducativa ADD CONSTRAINT Institución Educativa_PK PRIMARY KEY
	(Código DANE);

ALTER TABLE Jornadas ADD CONSTRAINT Jornadas_PK PRIMARY KEY
	(Código Jornada);

ALTER TABLE Municipios ADD CONSTRAINT Municipios_PK PRIMARY KEY
	(Código Municipio);

ALTER TABLE Naturalezas ADD CONSTRAINT Naturaleza_PK PRIMARY KEY
	(Código Naturaleza);

ALTER TABLE Notas ADD CONSTRAINT Notas_PK PRIMARY KEY
	(Código DANE, 
	 Año);

ALTER TABLE Olimpiadas ADD CONSTRAINT Olimpiadas_PK PRIMARY KEY
	(Código DANE, 
	 Año, 
	 Grado);

ALTER TABLE Opciones Educativas ADD CONSTRAINT Opciones Educativas_PK PRIMARY KEY
	(Código Opción Educativa);

ALTER TABLE Pesos ADD CONSTRAINT Pesos_PK PRIMARY KEY
	(ID);

ALTER TABLE Proporción Estrato ADD CONSTRAINT Proporción Estrato_PK PRIMARY KEY
	(Código DANE, 
	 Año);

ALTER TABLE Pruebas ADD CONSTRAINT Prueba_PK PRIMARY KEY
	(cod_prueba);

ALTER TABLE Saber ADD CONSTRAINT Saber 5 y 9_PK PRIMARY KEY
	(Código DANE, 
	 cod_prueba, 
	 Año, 
	 Grado);

ALTER TABLE Saber Censal ADD CONSTRAINT Saber Censal_PK PRIMARY KEY
	(Código DANE, 
	 cod_prueba, 
	 Año, 
	 ID, 
	 Grado, 
	 Semestre);

ALTER TABLE Sede ADD CONSTRAINT Sede_PK PRIMARY KEY
	(Código DANE, 
	 Código Sede);

ALTER TABLE Zonas ADD CONSTRAINT Zonas_PK PRIMARY KEY
	(Código Zona);

ALTER TABLE AEDocentes ADD CONSTRAINT AEDocentes_Sede_FK FOREIGN KEY
	(DANE)
	REFERENCES Sede
	(Código DANE, 
	 Código Sede)
	ON DELETE CASCADE;

ALTER TABLE AEDocentes1 ADD CONSTRAINT AEDocentes1_InstitucionEducativa_FK FOREIGN KEY
	(DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE AEEstudiantes ADD CONSTRAINT AEEstudiantes_Sede_FK FOREIGN KEY
	(DANE)
	REFERENCES Sede
	(Código DANE, 
	 Código Sede)
	ON DELETE CASCADE;

ALTER TABLE AEEstudiantes1 ADD CONSTRAINT AEEstudiantes1_InstitucionEducativa_FK FOREIGN KEY
	(DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE AEPadres ADD CONSTRAINT AEPadres_Sede_FK FOREIGN KEY
	(DANE)
	REFERENCES Sede
	(Código DANE, 
	 Código Sede)
	ON DELETE CASCADE;

ALTER TABLE AEPadres1 ADD CONSTRAINT AEPadres1_InstitucionEducativa_FK FOREIGN KEY
	(DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE AmbienteEscolar ADD CONSTRAINT Expectativas Institución Educativa_Institución Educativa_FK FOREIGN KEY
	(DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Aprobación ADD CONSTRAINT Aprobación_Sede_FK FOREIGN KEY
	(Código DANE, 
	 Código Sede)
	REFERENCES Sede
	(Código DANE, 
	 Código Sede)
	ON DELETE CASCADE;

ALTER TABLE Clusters ADD CONSTRAINT Clulsters_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE DANE-ICFES ADD CONSTRAINT DANE-ICFES_Institución Educativa_FK FOREIGN KEY
	(Código ICFES)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Edad Saber Censal ADD CONSTRAINT Edad Saber Censal_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Edad Saber Censal ADD CONSTRAINT Edad Saber Censal_Pruebas_FK FOREIGN KEY
	(cod_prueba)
	REFERENCES Pruebas
	(cod_prueba)
	ON DELETE CASCADE;

ALTER TABLE Extraedad Oficial ADD CONSTRAINT Extraedad Oficial_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Extraedad Oficial ADD CONSTRAINT Extraedad_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Extraedad Saber ADD CONSTRAINT Extraedad_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Indicadores Imputados ADD CONSTRAINT Indicadores Imputados_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Indicadores Imputados ADD CONSTRAINT Indice Aprendizaje Eficiencia_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Indice Aprendizaje Eficiencia ADD CONSTRAINT Indice Aprendizaje Eficiencia_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE InstitucionEducativa ADD CONSTRAINT Institución Educativa_Departamentos_FK FOREIGN KEY
	(Código Departamento)
	REFERENCES Departamentos
	(Código Departamento)
	ON DELETE RESTRICT;

ALTER TABLE InstitucionEducativa ADD CONSTRAINT Institución Educativa_Jornadas_FK FOREIGN KEY
	(Código Jornada)
	REFERENCES Jornadas
	(Código Jornada)
	ON DELETE RESTRICT;

ALTER TABLE InstitucionEducativa ADD CONSTRAINT Institución Educativa_Municipios_FK FOREIGN KEY
	(Código Municipio)
	REFERENCES Municipios
	(Código Municipio)
	ON DELETE RESTRICT;

ALTER TABLE InstitucionEducativa ADD CONSTRAINT Institución Educativa_Naturalezas_FK FOREIGN KEY
	(Código Naturaleza)
	REFERENCES Naturalezas
	(Código Naturaleza)
	ON DELETE RESTRICT;

ALTER TABLE InstitucionEducativa ADD CONSTRAINT Institución Educativa_Zonas_FK FOREIGN KEY
	(Código Zona)
	REFERENCES Zonas
	(Código Zona)
	ON DELETE RESTRICT;

ALTER TABLE Notas ADD CONSTRAINT Notas_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Olimpiadas ADD CONSTRAINT Olimpiadas_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Proporción Estrato ADD CONSTRAINT Proporción Estrato_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Saber ADD CONSTRAINT Saber 5 y 9_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Saber ADD CONSTRAINT Saber_Pruebas_FK FOREIGN KEY
	(cod_prueba)
	REFERENCES Pruebas
	(cod_prueba)
	ON DELETE CASCADE;

ALTER TABLE Saber Censal ADD CONSTRAINT Saber Censal_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE CASCADE;

ALTER TABLE Saber Censal ADD CONSTRAINT Saber Censal_Pruebas_FK FOREIGN KEY
	(cod_prueba)
	REFERENCES Pruebas
	(cod_prueba)
	ON DELETE CASCADE;

ALTER TABLE Sede ADD CONSTRAINT Sede_Institución Educativa_FK FOREIGN KEY
	(Código DANE)
	REFERENCES InstitucionEducativa
	(Código DANE)
	ON DELETE RESTRICT;

