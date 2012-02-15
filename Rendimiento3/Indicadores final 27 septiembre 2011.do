cd "D:\rendimiento3\DTA files"

use "tabla identificadores.dta", clear
outsheet using "D:\rendimiento3\SQL\tabla identificadores.csv", comma replace

*** LOS PUNTAJES DE SABER 5-9 DE 2009 SE RE-ESCALARON PARA QUE SEAN COMPARABLES CON SABER 5-9 2003, ASI, SUS PUNTAJES QUEDARAN DE 0 A 100***

use "resultad.dta", clear
outsheet using "D:\rendimiento3\SQL\resultad.csv", comma replace
keep  id_institucion area grado promedio rango1 rango2 rango3 rango4 rango5 rango6
destring id_institucion promedio rango1 rango2 rango3 rango4 rango5 rango6, replace force dpcomma
rename id_institucion dane
format dane %15.0g

gen l5r  =(promedio-100)/4 if area ==1 & grado == 5
gen m5r  =(promedio-100)/4 if area ==2 & grado == 5
gen cn5r =(promedio-100)/4 if area ==3 & grado == 5
gen l9r  =(promedio-100)/4 if area ==1 & grado == 9
gen m9r  =(promedio-100)/4 if area ==2 & grado == 9
gen cn9r =(promedio-100)/4 if area ==3 & grado == 9

gen rango1_l5r = rango1 if grado ==5 & area ==1
gen rango2_l5r = rango2 if grado ==5 & area ==1
gen rango3_l5r = rango3 if grado ==5 & area ==1
gen rango4_l5r = rango4 if grado ==5 & area ==1
gen rango5_l5r = rango5 if grado ==5 & area ==1
gen rango6_l5r = rango6 if grado ==5 & area ==1

gen rango1_m5r = rango1 if grado ==5 & area ==2
gen rango2_m5r = rango2 if grado ==5 & area ==2
gen rango3_m5r = rango3 if grado ==5 & area ==2
gen rango4_m5r = rango4 if grado ==5 & area ==2
gen rango5_m5r = rango5 if grado ==5 & area ==2
gen rango6_m5r = rango6 if grado ==5 & area ==2

gen rango1_l9r = rango1 if grado ==9 & area ==1
gen rango2_l9r = rango2 if grado ==9 & area ==1
gen rango3_l9r = rango3 if grado ==9 & area ==1
gen rango4_l9r = rango4 if grado ==9 & area ==1
gen rango5_l9r = rango5 if grado ==9 & area ==1
gen rango6_l9r = rango6 if grado ==9 & area ==1

gen rango1_m9r = rango1 if grado ==9 & area ==2
gen rango2_m9r = rango2 if grado ==9 & area ==2
gen rango3_m9r = rango3 if grado ==9 & area ==2
gen rango4_m9r = rango4 if grado ==9 & area ==2
gen rango5_m9r = rango5 if grado ==9 & area ==2
gen rango6_m9r = rango6 if grado ==9 & area ==2

keep dane l5r m5r cn5r l9r m9r cn9r rango1_l5r rango2_l5r rango3_l5r rango4_l5r rango5_l5r rango6_l5r ///
     rango1_m5r rango2_m5r rango3_m5r rango4_m5r rango5_m5r rango6_m5r rango1_l9r rango2_l9r rango3_l9r ///
	 rango4_l9r rango5_l9r rango6_l9r rango1_m9r rango2_m9r rango3_m9r rango4_m9r rango5_m9r rango6_m9r
	 
collapse (median) l5r m5r cn5r l9r m9r cn9r rango1_l5r rango2_l5r rango3_l5r rango4_l5r rango5_l5r rango6_l5r ///
     rango1_m5r rango2_m5r rango3_m5r rango4_m5r rango5_m5r rango6_m5r rango1_l9r rango2_l9r rango3_l9r ///
	 rango4_l9r rango5_l9r rango6_l9r rango1_m9r rango2_m9r rango3_m9r rango4_m9r rango5_m9r rango6_m9r, by(dane)
	 
save escala5_9_09, replace 

outsheet using "D:\rendimiento3\SQL\escala5_9_09.csv", comma replace

***Tasa de aprobación de grados 5°, 9° y 11°***
use "eficiencia_interna_oficial c600.dta", clear
outsheet using "D:\rendimiento3\SQL\eficiencia_interna_oficial c600.csv", comma replace
keep dane aprobación5 aprobación9 aprobación11a aprobación11t nombre_ie
rename nombre_ie cole_inst_nombre
save rev1, replace
collapse (mean) aprobación5 aprobación9 aprobación11a aprobación11t, by (dane)
outsheet using "D:\rendimiento3\SQL\rev1.csv", comma replace
save taprob, replace
outsheet using "D:\rendimiento3\SQL\taprob.csv", comma replace

***Tasa de extraedad para los grados 11***
***La tasa extraedad para los grados 5 y 9 no se calculo ya que no se posee informacion de los alumnos que aprobaron estos grados***
 use "sb11-2010-2-rgstro-clfccn-v1,.dta", clear
 outsheet using "D:\rendimiento3\SQL\sb11-2010-2-rgstro-clfccn-v1,.csv", comma replace
 keep  estu_nacimiento_anno cole_codigo_mcpio cole_inst_nombre 
 destring estu_nacimiento_anno cole_codigo_mcpio, generate(estu_nacimiento_anno_d cole_codigo_mcpio_d) force
 drop if cole_codigo_mcpio_d != 5001
 gen Edad=2010- estu_nacimiento_anno_d
 gen Extraedad=1 if Edad>= 19 
 save rev2, replace
 outsheet using "D:\rendimiento3\SQL\rev2.csv", comma replace
 collapse (count) Extraedad  cole_codigo_mcpio_d, by(cole_inst_nombre)
 gen textra=Extraedad/cole_codigo_mcpio
 gen rtextra = 1-textra
 rename cole_inst_nombre nombre_sb11_10
 save textra,replace
 outsheet using "D:\rendimiento3\SQL\textra.csv", comma replace

***Mediana de la habilidad de la IE en lenguaje/matemáticas***
**Mediana de los resultados en las pruebas ICFES, considerando los que estan en Grado 11 en lenguaje/matematica**
use "sb11-2007-2-rgstro-clfccn-v-1-0.dta", clear
outsheet using "D:\rendimiento3\SQL\sb11-2007-2-rgstro-clfccn-v-1-0.csv", comma replace
keep  cole_inst_nombre cole_mpio_colegio cole_codigo_colegio tema_lenguaje tema_matematica 
drop if cole_mpio_colegio != "MEDELLIN"
save rev3, replace
outsheet using "D:\rendimiento3\SQL\rev3.csv", comma replace
collapse (median) tema_matematica tema_lenguaje, by(cole_inst_nombre)
rename cole_inst_nombre nombre_sb11_07
save mediana11_07, replace
outsheet using "D:\rendimiento3\SQL\mediana11_07.csv", comma replace

use "sb11-2010-2-rgstro-clfccn-v1,.dta", clear
keep  cole_inst_nombre  cole_codigo_mcpio cole_codigo_inst tema_lenguaje tema_matematica 
destring cole_codigo_mcpio cole_codigo_inst tema_lenguaje tema_matematica, gen (cole_codigo_mcpio_d /// 
		 cole_codigo_inst_d tema_lenguaje_d tema_matematica_d) force dpcomma
drop if cole_codigo_mcpio_d != 5001
save rev4, replace
outsheet using "D:\rendimiento3\SQL\rev4.csv", comma replace
collapse (median) tema_lenguaje_d tema_matematica_d, by(cole_inst_nombre)
rename cole_inst_nombre nombre_sb11_10
save mediana11_10, replace
outsheet using "D:\rendimiento3\SQL\mediana11_10.csv", comma replace

***Porcentaje de estudiantes de las Instituciones Educativas que se encuentran en cada rango de calificación de la prueba SABER 11 en lenguaje y matemáticas***
**Se calculan para los años 2007 y 2010***

use "sb11-2007-2-rgstro-clfccn-v-1-0", clear
keep  cole_codigo_colegio cole_inst_nombre cole_mpio_colegio tema_matematica  tema_lenguaje
drop if cole_mpio_colegio != "MEDELLIN"
gen mat11_bajo_2007 =1 if tema_matematica <= 30 
replace mat11_bajo_2007 =0 if tema_matematica > 30
egen prmat11_b_2007 = sum(mat11_bajo_2007), by(cole_inst_nombre)
gen estu_consecnum = 1
egen estu_matbajo = count(estu_consecnum), by(cole_inst_nombre)
gen prmat_bajo_07 =  prmat11_b_2007/estu_matbajo

gen mat11_medio_2007 =1 if tema_matematica > 30 & tema_matematica <=70 
replace mat11_medio_2007 =0 if mat11_medio_2007 ==.
egen prmat11_m_2007 = sum(mat11_medio_2007), by(cole_inst_nombre)
egen estu_matmedio = count(estu_consecnum), by(cole_inst_nombre)
gen prmat_medio_07 = prmat11_m_2007/estu_matmedio

gen mat11_alto_2007 =1 if tema_matematica > 70 & tema_matematica !=.
replace mat11_alto_2007 =0 if tema_matematica <= 70
egen prmat11_a_2007 = sum(mat11_alto_2007), by(cole_inst_nombre)
egen estu_matalto = count(estu_consecnum), by(cole_inst_nombre)
gen prmat_alto_07 = prmat11_a_2007/estu_matalto

gen len11_bajo_2007 =1 if tema_lenguaje <= 30 
replace len11_bajo_2007 =0 if tema_lenguaje > 30
egen prlen11_b_2007 = sum(len11_bajo_2007), by(cole_inst_nombre)
egen estu_lenbajo = count(estu_consecnum), by(cole_inst_nombre)
gen prlen_bajo_07 =  prlen11_b_2007/estu_lenbajo

gen len11_medio_2007 =1 if tema_lenguaje > 30 & tema_lenguaje <=70 
replace len11_medio_2007 =0 if len11_medio_2007 ==.
egen prlen11_m_2007 = sum(len11_medio_2007), by(cole_inst_nombre)
egen estu_lenmedio = count(estu_consecnum), by(cole_inst_nombre)
gen prlen_medio_07 = prlen11_m_2007/estu_lenmedio

gen len11_alto_2007 =1 if tema_lenguaje > 70 & tema_lenguaje !=.
replace len11_alto_2007 =0 if tema_lenguaje <= 70
egen prlen11_a_2007 = sum(len11_alto_2007), by(cole_inst_nombre)
egen estu_lenalto = count(estu_consecnum), by(cole_inst_nombre)
gen prlen_alto_07 = prlen11_a_2007/estu_lenalto
save rev5, replace
outsheet using "D:\rendimiento3\SQL\rev5.csv", comma replace
collapse (mean) prmat_bajo_07 prmat_medio_07 prmat_alto_07 prlen_bajo_07 prlen_medio_07 prlen_alto_07, by(cole_inst_nombre)
*En porcentaje*
gen prmat_bajo_07_p = prmat_bajo_07*100
gen prmat_medio_07_p = prmat_medio_07*100
gen prmat_alto_07_p = prmat_alto_07*100

gen prlen_bajo_07_p = prlen_bajo_07*100
gen prlen_medio_07_p = prlen_medio_07*100
gen prlen_alto_07_p = prlen_alto_07*100

rename cole_inst_nombre nombre_sb11_07
save pr_estudiantes_07, replace
outsheet using "D:\rendimiento3\SQL\pr_estudiantes_07.csv", comma replace

use "sb11-2010-2-rgstro-clfccn-v1,.dta", clear
keep  cole_inst_nombre cole_codigo_mcpio tema_matematica tema_lenguaje
destring cole_codigo_mcpio tema_matematica tema_lenguaje, generate(cole_codigo_mcpio_d tema_matematica_d tema_lenguaje_d) force dpcomma
drop if  cole_codigo_mcpio_d != 5001

gen mat11_bajo_2010 =1 if tema_matematica_d <= 30 
replace mat11_bajo_2010 =0 if tema_matematica_d > 30
egen prmat11_b_2010 = sum(mat11_bajo_2010), by(cole_inst_nombre)
gen estu_consecnum = 1
egen estu_mat_bajo = count(estu_consecnum), by(cole_inst_nombre)
gen prmat_bajo_10 =  prmat11_b_2010/estu_mat_bajo

gen mat11_medio_2010 =1 if tema_matematica_d > 30 & tema_matematica_d <=70 
replace mat11_medio_2010 =0 if mat11_medio_2010 ==.
egen prmat11_m_2010 = sum(mat11_medio_2010), by(cole_inst_nombre)
egen estu_matmedio = count(estu_consecnum), by(cole_inst_nombre)
gen prmat_medio_10 = prmat11_m_2010/estu_matmedio

gen mat11_alto_2010 =1 if tema_matematica_d > 70 & tema_matematica_d !=.
replace mat11_alto_2010 =0 if tema_matematica_d <= 70
egen prmat11_a_2010 = sum(mat11_alto_2010), by(cole_inst_nombre)
egen estu_matalto = count(estu_consecnum), by(cole_inst_nombre)
gen prmat_alto_10 = prmat11_a_2010/estu_matalto

gen len11_bajo_2010 =1 if tema_lenguaje_d <= 30 
replace len11_bajo_2010 =0 if tema_lenguaje_d > 30
egen prlen11_b_2010 = sum(len11_bajo_2010), by(cole_inst_nombre)
egen estu_len_bajo = count(estu_consecnum), by(cole_inst_nombre)
gen prlen_bajo_10 =  prlen11_b_2010/estu_len_bajo

gen len11_medio_2010 =1 if tema_lenguaje_d > 30 & tema_lenguaje_d <=70 
replace len11_medio_2010 =0 if len11_medio_2010 ==.
egen prlen11_m_2010 = sum(len11_medio_2010), by(cole_inst_nombre)
egen estu_lenmedio = count(estu_consecnum), by(cole_inst_nombre)
gen prlen_medio_10 = prlen11_m_2010/estu_lenmedio

gen len11_alto_2010 =1 if tema_lenguaje_d > 70 & tema_lenguaje_d !=.
replace len11_alto_2010 =0 if tema_lenguaje_d <= 70
egen prlen11_a_2010 = sum(len11_alto_2010), by(cole_inst_nombre)
egen estu_lenalto = count(estu_consecnum), by(cole_inst_nombre)
gen prlen_alto_10 = prlen11_a_2010/estu_lenalto
save rev6, replace
outsheet using "D:\rendimiento3\SQL\rev6.csv", comma replace

collapse (mean) prmat_bajo_10 prmat_medio_10 prmat_alto_10 prlen_bajo_10 prlen_medio_10 prlen_alto_10, by(cole_inst_nombre)
*En porcentaje*
gen prmat_bajo_10_p = prmat_bajo_10*100
gen prmat_medio_10_p = prmat_medio_10*100
gen prmat_alto_10_p = prmat_alto_10*100

gen prlen_bajo_10_p = prlen_bajo_10*100
gen prlen_medio_10_p = prlen_medio_10*100
gen prlen_alto_10_p = prlen_alto_10*100

rename cole_inst_nombre nombre_sb11_10
save pr_estudiantes_10, replace
outsheet using "D:\rendimiento3\SQL\pr_estudiantes_10.csv", comma replace

*** Crecimiento de la mediana y del percentil 33 para los estudiantes/IE con puntajes bajos en las áreas de matemática y lenguaje para los grados 5. 9 y 11***
**Grados 5 y 9 (NOTA: RECUERDESE QUE ESTAS PRUEBAS NO SON COMPARABLES ENTRE AÑOS)**
use "resultadosgrupales_plant(.dta", clear
outsheet using "D:\rendimiento3\SQL\resultadosgrupales_plant(.csv", comma replace
keep grado prueba promedio codciudad nombre coddane
destring grado promedio codciudad coddane, replace force dpcomma
rename coddane dane
format dane %15.0g
keep if codciudad ==5001
keep if grado == 5 | grado==9
gen  l5_03 = promedio if grado == 5 & prueba == "Lenguaje"
gen  m5_03 = promedio if grado == 5 & prueba == "Matemáticas"
gen	 l9_03 = promedio if grado == 9 & prueba == "Lenguaje"
gen	 m9_03 = promedio if grado == 9 & prueba == "Matemáticas"
collapse (median) l5_03 m5_03 l9_03 m9_03, by (dane)
/*Algunas IE presentan varios resultados para una misma área en un mismo grado. 
Para obtener un solo valor, se usó el valor mediano*/
save saber_5y9_03, replace

use "saber_5y9_03.dta", clear
outsheet using "D:\rendimiento3\SQL\saber_5y9_03.csv", comma replace
centile l5_03, centile (33, 50)
scalar c50_l5_03 = r(c_2)
scalar c33_l5_03 = r(c_1)

gen p50_len_5 = 1 if l5_03<=c50_l5_03 & l5_03 !=.
replace p50_len_5 = 0 if  l5_03 > c50_l5_03

gen p33_len_5 = 1 if l5_03<= c33_l5_03 & l5_03 !=.
replace p33_len_5 = 0 if  l5_03 > c33_l5_03 

centile l9_03, centile (33, 50)
scalar c50_l9_03 = r(c_2)
scalar c33_l9_03 = r(c_1)

gen p50_len_9 = 1 if l9_03<=c50_l9_03 & l9_03 !=.
replace p50_len_9 = 0 if  l9_03 > c50_l9_03

gen p33_len_9 = 1 if l9_03<= c33_l9_03 & l9_03 !=.
replace p33_len_9 = 0 if  l9_03 > c33_l9_03 

centile m5_03, centile (33, 50)
scalar c50_m5_03 = r(c_2)
scalar c33_m5_03 = r(c_1)

gen p50_mat_5 = 1 if m5_03<=c50_m5_03 & m5_03 !=.
replace p50_mat_5 = 0 if  m5_03 > c50_m5_03

gen p33_mat_5 = 1 if m5_03<= c33_m5_03 & m5_03 !=.
replace p33_mat_5 = 0 if  m5_03 > c33_m5_03 

centile m9_03, centile (33, 50)
scalar c50_m9_03 = r(c_2)
scalar c33_m9_03 = r(c_1)

gen p50_mat_9 = 1 if m9_03<=c50_m9_03 & m9_03 !=.
replace p50_mat_9 = 0 if  m9_03 > c50_m9_03

gen p33_mat_9 = 1 if m9_03<= c33_m9_03 & m9_03 !=.
replace p33_mat_9 = 0 if  m9_03 > c33_m9_03 

save permed_5_9_03, replace
outsheet using "D:\rendimiento3\SQL\permed_5_9_03.csv", comma replace

merge 1:1 dane using "escala5_9_09.dta"

**Actualmente en que percentil se encuentra si el año anterior se encuentra por debajo o igual al percentil 50% en el caso de que p50_len_5 ==1***
**Actualmente en que percentil se encuentra si el año anterior se encuentra por encima o igual al percentil 50% en el caso de que p50_len_5 ==0***

xtile cr_medlen5_1 =l5r if p50_len_5 ==1, nquantiles(100)
xtile cr_medlen5_2 =l5r if p50_len_5 ==0, nquantiles(100)
xtile cr_medlen5_3 =l5r if p33_len_5 ==1, nquantiles(100)
xtile cr_medlen5_4 =l5r if p33_len_5 ==0, nquantiles(100)
gen permed50len_5 = cr_medlen5_1
replace permed50len_5 = cr_medlen5_2 if cr_medlen5_1==.
gen permedlen33_5 = cr_medlen5_3
replace permedlen33_5 = cr_medlen5_4 if permedlen33_5 ==.

xtile cr_medlen9_1 = l9r if p50_len_9 ==1, nquantiles(100)
xtile cr_medlen9_2 = l9r if p50_len_9 ==0, nquantiles(100)
xtile cr_medlen9_3 = l9r if p33_len_9 ==1, nquantiles(100)
xtile cr_medlen9_4 = l9r if p33_len_9 ==0, nquantiles(100)
gen permed50len_9 = cr_medlen9_1
replace permed50len_9 = cr_medlen9_2 if cr_medlen9_1 ==.
gen permedlen33_9 = cr_medlen9_3
replace permedlen33_9 = cr_medlen9_4 if permedlen33_9 ==.

xtile cr_medmat5_1 = m5r if p50_mat_5 ==1, nquantiles(100)
xtile cr_medmat5_2 = m5r if p50_mat_5 ==0, nquantiles(100)
xtile cr_medmat5_3 = m5r if p33_mat_5 ==1, nquantiles(100)
xtile cr_medmat5_4 = m5r if p33_mat_5 ==0, nquantiles(100)
gen permed50mat_5 = cr_medmat5_1
replace permed50mat_5 = cr_medmat5_2 if cr_medmat5_1==.
gen permedmat33_5 = cr_medmat5_3
replace permedmat33_5 = cr_medmat5_4 if permedmat33_5 ==.

xtile cr_medmat9_1 = m9r if p50_mat_9 ==1, nquantiles(100)
xtile cr_medmat9_2 = m9r if p50_mat_9 ==0, nquantiles(100)
xtile cr_medmat9_3 = m9r if p33_mat_9 ==1, nquantiles(100)
xtile cr_medmat9_4 = m9r if p33_mat_9 ==0, nquantiles(100)
gen permed50mat_9 = cr_medmat9_1
replace permed50mat_9 = cr_medmat9_2 if cr_medmat9_1==.
gen permedmat33_9 = cr_medmat9_3
replace permedmat33_9 = cr_medmat9_4 if permedmat33_9 ==.

keep permed50len_5 permedlen33_5 permed50len_9 permedlen33_9 permed50mat_5 permedmat33_5 permed50mat_9 permedmat33_9 dane
save permedianocr, replace
outsheet using "D:\rendimiento3\SQL\permedianocr.csv", comma replace

**Grado 11**
use "sb11-2007-2-rgstro-clfccn-v-1-0.dta", clear
drop if  cole_mpio_colegio != "MEDELLIN"
collapse (median) tema_lenguaje tema_matematica, by (cole_inst_nombre)
 
centile tema_lenguaje, centile (33, 50)
scalar c50_len_07 = r(c_2)
scalar c33_len_07 = r(c_1)
gen p50_l11 = 1 if tema_lenguaje<=c50_len_07 & tema_lenguaje !=.
replace p50_l11 = 0 if  tema_lenguaje > c50_len_07

gen p33_l11 = 1 if tema_lenguaje<= c33_len_07 & tema_lenguaje !=.
replace p33_l11 = 0 if  tema_lenguaje > c33_len_07 

centile tema_matematica, centile (33, 50)
scalar c50_mat_07 = r(c_2)
scalar c33_mat_07 = r(c_1)
gen p50_m11 = 1 if tema_matematica<=c50_mat_07 & tema_matematica !=.
replace p50_m11 = 0 if  tema_matematica > c50_mat_07

gen p33_m11 = 1 if tema_matematica<= c33_mat_07 & tema_matematica !=.
replace p33_m11 = 0 if  tema_matematica > c33_mat_07

rename cole_inst_nombre nombre_sb11_07
merge m:m nombre_sb11_07 using "tabla identificadores.dta"
drop if _merge ==1
drop _merge
save permed11_07, replace 
outsheet using "D:\rendimiento3\SQL\permed11_07.csv", comma replace

use "sb11-2010-2-rgstro-clfccn-v1,.dta", clear
keep  cole_codigo_mcpio cole_codigo_inst cole_inst_nombre tema_matematica tema_lenguaje
destring  cole_codigo_mcpio cole_codigo_inst tema_lenguaje tema_matematica, generate (cole_codigo_mcpio_d ///
          cole_codigo_inst_d tema_lenguaje_d tema_matematica_d) force dpcomma
drop if  cole_codigo_mcpio_d != 5001
collapse (median) tema_lenguaje_d tema_matematica_d, by (cole_inst_nombre)
rename cole_inst_nombre nombre_sb11_10
 
merge m:m nombre_sb11_10 using "tabla identificadores.dta"
drop if _merge ==1
drop _merge
merge 1:1 dane using "permed11_07.dta"

xtile cr_medlen11_1 = tema_lenguaje_d if p50_l11 ==1, nquantiles(100)
xtile cr_medlen11_2 = tema_lenguaje_d if p50_l11 ==0, nquantiles(100)
xtile cr_medlen11_3 = tema_lenguaje_d if p33_l11 ==1, nquantiles(100)
xtile cr_medlen11_4 = tema_lenguaje_d if p33_l11 ==0, nquantiles(100)
gen permed50len = cr_medlen11_1
replace permed50len = cr_medlen11_2 if cr_medlen11_1==.
gen permed33len = cr_medlen11_3
replace permed33len = cr_medlen11_4 if cr_medlen11_3 ==.

xtile cr_medmat11_1 = tema_matematica_d if p50_m11 ==1, nquantiles(100)
xtile cr_medmat11_2 = tema_matematica_d if p50_m11 ==0, nquantiles(100)
xtile cr_medmat11_3 = tema_matematica_d if p33_m11 ==1, nquantiles(100)
xtile cr_medmat11_4 = tema_matematica_d if p33_m11 ==0, nquantiles(100)
gen permed50mat = cr_medmat11_1
replace permed50mat = cr_medmat11_2 if cr_medmat11_1==.
gen permedmat33 = cr_medmat11_3
replace permedmat33 = cr_medmat11_4 if cr_medmat11_3 ==.

keep  dane nombre nombre_sb11_07 nombre_sb11_10 permed50len permed33len permed50mat permedmat33
save permedianocr11, replace
outsheet using "D:\rendimiento3\SQL\permedianocr11.csv", comma replace

/*Nuevo indicador de rendimiento: Porcentaje de estudiantes por categoría de rendimiento en la prueba SABER 5-9, 2009}
  en las áreas de Matemática y Lenguaje*/

use "escala5_9_09.dta", clear 
keep dane rango1_l5r rango2_l5r rango3_l5r rango4_l5r rango5_l5r rango6_l5r rango1_m5r rango2_m5r rango3_m5r ///
     rango4_m5r rango5_m5r rango6_m5r rango1_l9r rango2_l9r rango3_l9r rango4_l9r rango5_l9r rango6_l9r /// 
	 rango1_m9r rango2_m9r rango3_m9r rango4_m9r rango5_m9r rango6_m9r
	 
gen insuficiente_m9 = rango1_m9r
gen minimo_m9 = rango2_m9r+rango3_m9r
gen satisfactorio_m9 = rango4_m9r+rango5_m9r
gen avanzado_m9 = rango6_m9r

gen insuficiente_m5 = rango1_m5r
gen minimo_m5 = rango2_m5r+rango3_m5r
gen satisfactorio_m5 = rango4_m5r+rango5_m5r
gen avanzado_m5 = rango6_m5r

gen insuficiente_l9 = rango1_l9
gen minimo_l9 = rango2_l9+rango3_l9
gen satisfactorio_l9 = rango4_l9+rango5_l9
gen avanzado_l9 = rango6_l9

gen insuficiente_l5 = rango1_l5
gen minimo_l5 = rango2_l5+rango3_l5
gen satisfactorio_l5 = rango4_l5+rango5_l5
gen avanzado_l5 = rango6_l5

save rango5_9, replace

outsheet using "D:\rendimiento3\SQL\rango5_9.csv", comma replace

***Variación del porcentaje de IE que se ubican en cada uno de los niveles de competencias en SABER 11***
use "sb11-clasifi-planteles-2007-v-1-0.dta", clear
outsheet using "D:\rendimiento3\SQL\sb11-clasifi-planteles-2007-v-1-0.csv", comma replace
destring  cole_codmpio_colegio, replace force
drop if cole_codmpio_colegio != 5001

gen categoria_07 =.
replace categoria_07 = 1 if cole_categoria== "MUY INFERIOR"
replace categoria_07 = 2 if cole_categoria== "INFERIOR"
replace categoria_07 = 3 if cole_categoria== "BAJO"
replace categoria_07 = 4 if cole_categoria== "MEDIO"
replace categoria_07 = 5 if cole_categoria== "ALTO"
replace categoria_07 = 6 if cole_categoria== "SUPERIOR"
replace categoria_07 = 7 if cole_categoria== "MUY SUPERIOR"

collapse (mean) categoria_07, by(cole_inst_nombre)

replace categoria_07 = 7 if categoria_07 >= 6.5  
replace categoria_07 = 6 if categoria_07 >= 5.5 & categoria_07 <6.5
replace categoria_07 = 5 if categoria_07 >= 4.5 & categoria_07 <5.5
replace categoria_07 = 4 if categoria_07 >= 3.5 & categoria_07 <4.5
replace categoria_07 = 3 if categoria_07 >= 2.5 & categoria_07 <3.5
replace categoria_07 = 2 if categoria_07 >= 1.5 & categoria_07 <2.5

rename  cole_inst_nombre nombre_sb11_07
merge m:m nombre_sb11_07 using "tabla identificadores.dta"
drop if _merge ==1
drop _merge
save ran_ie07, replace
outsheet using "D:\rendimiento3\SQL\ran_ie07.csv", comma replace

use "sb11-clasifi-planteles-2010-v-1-0.dta", clear
outsheet using "D:\rendimiento3\SQL\sb11-clasifi-planteles-2010-v-1-0.csv", comma replace

destring  cole_codmpio_colegio, replace force
drop if cole_codmpio_colegio != 5001

gen categoria_10 =.
replace categoria_10 = 1 if cole_categoria== "MUY INFERIOR"
replace categoria_10 = 2 if cole_categoria== "INFERIOR"
replace categoria_10 = 3 if cole_categoria== "BAJO"
replace categoria_10 = 4 if cole_categoria== "MEDIO"
replace categoria_10 = 5 if cole_categoria== "ALTO"
replace categoria_10 = 6 if cole_categoria== "SUPERIOR"
replace categoria_10 = 7 if cole_categoria== "MUY SUPERIOR"

collapse (mean) categoria_10, by(cole_inst_nombre)

replace categoria_10 = 7 if categoria_10 >= 6.5  
replace categoria_10 = 6 if categoria_10 >= 5.5 & categoria_10 <6.5
replace categoria_10 = 5 if categoria_10 >= 4.5 & categoria_10 <5.5
replace categoria_10 = 4 if categoria_10 >= 3.5 & categoria_10 <4.5
replace categoria_10 = 3 if categoria_10 >= 2.5 & categoria_10 <3.5
replace categoria_10 = 2 if categoria_10 >= 1.5 & categoria_10 <2.5

rename  cole_inst_nombre nombre_sb11_10
merge m:m nombre_sb11_10 using "tabla identificadores.dta"
drop if _merge ==1
drop _merge
save ran_ie10, replace
outsheet using "D:\rendimiento3\SQL\ran_ie10.csv", comma replace

merge 1:1 dane using "ran_ie07.dta"
gen varcolegios11 = categoria_10-categoria_07
drop _merge
save varcolegios11, replace
outsheet using "D:\rendimiento3\SQL\varcolegios11.csv", comma replace

***BONUS POR OLIMPIADAS DEL CONOCIMIENTO en 5º y 11º***
**Se le dará a aquellos colegios con mayor proporción de población en estratos 1,2,y desplazados, y será de uno a diez**
*Instrucciones: 1) sacar los percentiles de respuestas correctas (p33, p50 y p66), 2) Obtener un indicador del estrato más representativo del colegio, 3) ponderar el percentil con la tasa de estudiantes pertenecientes al estrato representativo*

use "Informeestudiantegrado10y11", clear
format dane %15.0g
save Informeestudiantegrado10y11, replace
outsheet using "D:\rendimiento3\SQL\Informeestudiantegrado10y11.csv", comma replace

use "Informeestudiantegrado10y11", clear
keep  dane ie total_matematicas total_lenguaje grado
drop if grado == 10

centile  total_matematicas, centile(33, 50, 66)
scalar olimat_66 = r(c_3)
scalar olimat_50= r(c_2)
scalar olimat_33= r(c_1)

centile total_lenguaje, centile(33,50,66)
scalar olilen_66 = r(c_3)
scalar olilen_50 = r(c_2)
scalar olilen_33 = r(c_1)

collapse (median) total_matematicas total_lenguaje dane, by(ie)
merge 1:1 dane using "tabla identificadores.dta"
drop if _merge ==1

keep total_matematicas total_lenguaje ie dane ProporcionEstrato0 ProporcionEstrato1 ///
	 ProporcionEstrato2 ProporcionEstrato3 ProporcionEstrato4 ProporcionEstrato5 ProporcionEstrato6

gen bonus_matematica11=1 if ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
    & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	& ProporcionEstrato2>ProporcionEstrato6 & total_matematicas>=olimat_33
replace bonus_matematica11 = 2 if ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_matematicas>=olimat_33 | ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
        & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	    & ProporcionEstrato2>ProporcionEstrato6 & total_matematicas>=olimat_50
replace	bonus_matematica11 = 3	if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_matematicas>=olimat_33 ///
		| ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_matematicas>=olimat_50 | ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
        & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	    & ProporcionEstrato2>ProporcionEstrato6 & total_matematicas>=olimat_66
replace bonus_matematica11 = 4 if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_matematicas>=olimat_50 ///
		| ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_matematicas>=olimat_66
replace bonus_matematica11 = 5 if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_matematicas>=olimat_66 ///	

gen bonus_lenguaje11=1 if ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
    & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	& ProporcionEstrato2>ProporcionEstrato6 & total_lenguaje>=olilen_33
replace bonus_lenguaje11 = 2 if ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_lenguaje>=olilen_33 | ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
        & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	    & ProporcionEstrato2>ProporcionEstrato6 & total_lenguaje>=olilen_50
replace	bonus_lenguaje11 = 3	if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_lenguaje>=olilen_33 ///
		| ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_lenguaje>=olilen_50 | ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
        & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	    & ProporcionEstrato2>ProporcionEstrato6 & total_lenguaje>=olilen_66
replace bonus_lenguaje11 = 4 if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_lenguaje>=olilen_50 ///
		| ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_lenguaje>=olilen_66
replace bonus_lenguaje11 = 5 if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_lenguaje>=olilen_66 ///	
		
gen bonus_total11 = bonus_lenguaje11+bonus_matematica11
replace bonus_total11 = bonus_lenguaje11 if bonus_total11 ==. & bonus_matematica11==.
replace bonus_total11 = bonus_matematica11 if bonus_total11 ==. & bonus_lenguaje11==.
save bonus11,replace 
outsheet using "D:\rendimiento3\SQL\bonus11.csv", comma replace

use "Informe_estudiante_grado_5", clear
format dane %15.0g
save Informe_estudiante_grado_5, replace
outsheet using "D:\rendimiento3\SQL\Informe_estudiante_grado_5.csv", comma replace

use "Informe_estudiante_grado_5", clear
keep  dane ie total_matematicas total_lenguaje 
rename total_matematicas total_matematicas_5
rename total_lenguaje total_lenguaje_5

centile  total_matematicas_5, centile(33, 50, 66)
scalar olimat5_66 = r(c_3)
scalar olimat5_50= r(c_2)
scalar olimat5_33= r(c_1)

centile total_lenguaje_5, centile(33,50,66)
scalar olilen5_66 = r(c_3)
scalar olilen5_50 = r(c_2)
scalar olilen5_33 = r(c_1)

collapse (median) total_matematicas_5 total_lenguaje_5 dane, by(ie)
merge 1:1 dane using "tabla identificadores.dta"
drop if _merge ==1

keep total_matematicas total_lenguaje ie dane ProporcionEstrato0 ProporcionEstrato1 ///
	 ProporcionEstrato2 ProporcionEstrato3 ProporcionEstrato4 ProporcionEstrato5 ProporcionEstrato6

gen bonus_matematica5=1 if ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
    & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	& ProporcionEstrato2>ProporcionEstrato6 & total_matematicas_5>=olimat5_33
replace bonus_matematica5 = 2 if ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_matematicas_5>=olimat5_33 | ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
        & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	    & ProporcionEstrato2>ProporcionEstrato6 & total_matematicas_5>=olimat5_50
replace	bonus_matematica5 = 3	if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_matematicas_5>=olimat5_33 ///
		| ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_matematicas_5>=olimat5_50 | ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
        & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	    & ProporcionEstrato2>ProporcionEstrato6 & total_matematicas_5>=olimat5_66
replace bonus_matematica5 = 4 if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_matematicas_5>=olimat5_50 ///
		| ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_matematicas_5>=olimat5_66
replace bonus_matematica5 = 5 if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_matematicas_5>=olimat5_66 ///		 

gen bonus_lenguaje5=1 if ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
    & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	& ProporcionEstrato2>ProporcionEstrato6 & total_lenguaje_5>=olilen5_33
replace bonus_lenguaje5 = 2 if ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_lenguaje_5>=olilen5_33 | ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
        & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	    & ProporcionEstrato2>ProporcionEstrato6 & total_lenguaje_5>=olilen5_50
replace	bonus_lenguaje5 = 3	if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_lenguaje_5>=olilen5_33 ///
		| ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_lenguaje_5>=olilen5_50 | ProporcionEstrato2>ProporcionEstrato0 & ProporcionEstrato2>ProporcionEstrato1 ///
        & ProporcionEstrato2>ProporcionEstrato3 & ProporcionEstrato2>ProporcionEstrato4 & ProporcionEstrato2>ProporcionEstrato5 ///
	    & ProporcionEstrato2>ProporcionEstrato6 & total_lenguaje_5>=olilen5_66
replace bonus_lenguaje5 = 4 if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_lenguaje_5>=olilen5_50 ///
		| ProporcionEstrato1>ProporcionEstrato0 & ProporcionEstrato1>ProporcionEstrato2 ///
        &ProporcionEstrato1>ProporcionEstrato3 & ProporcionEstrato1>ProporcionEstrato4 & ProporcionEstrato1>ProporcionEstrato5 ///
		&ProporcionEstrato1>ProporcionEstrato6 & total_lenguaje_5>=olilen5_66
replace bonus_lenguaje5 = 5 if ProporcionEstrato0>ProporcionEstrato1 & ProporcionEstrato0>ProporcionEstrato2 & ProporcionEstrato0>ProporcionEstrato3 ///
        & ProporcionEstrato0>ProporcionEstrato4 & ProporcionEstrato0>ProporcionEstrato5 & ProporcionEstrato0>ProporcionEstrato6 & total_lenguaje_5>=olilen5_66 ///	
		
		
gen bonus_total5 = bonus_lenguaje5+bonus_matematica5	
replace bonus_total5 = bonus_lenguaje5 if bonus_total5 ==. & bonus_matematica5==.
replace bonus_total5 = bonus_matematica5 if bonus_total5 ==. & bonus_lenguaje5==.
save bonus5,replace 
outsheet using "D:\rendimiento3\SQL\bonus5.csv", comma replace

****TABLAS DE INDICADORES PARA 5 y 9 y 11****
**TABLA QUINTO Y NOVENO**

use "taprob.dta", clear
merge 1:1 dane using "permedianocr.dta"
drop aprobación11a aprobación11t _merge
format %15.0g dane
save res5_9_1, replace
outsheet using "D:\rendimiento3\SQL\res5_9_1.csv", comma replace

use "res5_9_1.dta", clear
merge 1:1 dane using "rango5_9.dta"
drop _merge
format %15.0g dane
save res5_9_2, replace
outsheet using "D:\rendimiento3\SQL\res5_9_2.csv", comma replace

use "res5_9_2.dta", clear
merge 1:1 dane using "tabla identificadores.dta" 
drop if _merge==1
drop _merge
format %15.0g dane
save indicadores_5_9, replace
outsheet using "D:\rendimiento3\SQL\indicadores_5_9.csv", comma replace

**TABLA ONCE**
use "tabla identificadores.dta", clear
merge 1:1 dane using "taprob.dta"
drop if _merge ==2
drop _merge
save res111, replace
outsheet using "D:\rendimiento3\SQL\res111.csv", comma replace

use "tabla identificadores.dta", clear
merge 1:1 dane using "permedianocr11"
format %15.0g dane
drop _merge
save res211, replace
outsheet using "D:\rendimiento3\SQL\res211.csv", comma replace

use "tabla identificadores.dta", clear
merge m:m nombre_sb11_07 using "mediana11_07"
drop if _merge ==2
drop _merge
format %15.0g dane
save res211_07, replace
outsheet using "D:\rendimiento3\SQL\res211_07.csv", comma replace

use "tabla identificadores.dta", clear
merge m:m nombre_sb11_07 using "pr_estudiantes_07"
drop if _merge ==2
drop _merge
format %15.0g dane
save res311_07, replace
outsheet using "D:\rendimiento3\SQL\res311_07.csv", comma replace

use "res211_07.dta", clear
merge 1:1 dane using "res311_07.dta"
drop _merge
format %15.0g dane
save res11_07, replace
outsheet using "D:\rendimiento3\SQL\res11_07.csv", comma replace

use "tabla identificadores.dta", clear
merge m:m nombre_sb11_10 using "mediana11_10"
drop if _merge ==2
drop _merge
format %15.0g dane
save res211_10, replace
outsheet using "D:\rendimiento3\SQL\res211_10.csv", comma replace

use "tabla identificadores.dta", clear
merge m:m nombre_sb11_10 using "pr_estudiantes_10"
drop if _merge ==2
drop _merge
format %15.0g dane
save res311_10, replace
outsheet using "D:\rendimiento3\SQL\res311_10.csv", comma replace

use "res211_10.dta", clear
merge 1:1 dane using "res311_10.dta"
drop _merge
format %15.0g dane
save res11_10, replace
outsheet using "D:\rendimiento3\SQL\res11_10.csv", comma replace

use "res11_07.dta", clear
merge 1:1 dane using "res11_10.dta"
drop if _merge ==1
drop _merge
format %15.0g dane
save res11_11, replace
outsheet using "D:\rendimiento3\SQL\res11_11.csv", comma replace

use "res211.dta", clear
merge 1:1 dane using "res111.dta"
drop _merge
format %15.0g dane
save res11, replace
outsheet using "D:\rendimiento3\SQL\res11.csv", comma replace

use "res11_11.dta", clear
merge 1:1 dane using "res11.dta"
drop if _merge ==2 | _merge ==1
drop _merge
format %15.0g dane
save res11i, replace
outsheet using "D:\rendimiento3\SQL\res11i.csv", comma replace

use "res11i.dta", clear
merge m:1 nombre_sb11_10 using "textra.dta"
drop if _merge ==2
drop _merge
format %15.0g dane
save res11ii, replace
outsheet using "D:\rendimiento3\SQL\res11ii.csv", comma replace

use "res11ii.dta", clear
merge 1:1 dane using "varcolegios11.dta"
drop if _merge ==2 
drop _merge
format %15.0g dane
save indicadores_11, replace
outsheet using "D:\rendimiento3\SQL\indicadores_11.csv", comma replace

use "indicadores_11.dta", clear
merge 1:1 dane using "indicadores_5_9.dta"
drop if _merge ==1 | _merge ==2 
drop _merge
format %15.0g dane
save indicadores, replace 
outsheet using "D:\rendimiento3\SQL\indicadores.csv", comma replace

use "bonus11.dta", clear
merge 1:1 dane using "bonus5.dta"
keep  bonus_matematica11 bonus_lenguaje11 bonus_total11 bonus_matematica5 bonus_lenguaje5 bonus_total5 dane
format %15.0g dane
save bonus, replace
outsheet using "D:\rendimiento3\SQL\bonus.csv", comma replace

use"indicadores.dta", clear
merge 1:1 dane using "bonus.dta"

label define Rendimiento 1 "Muy inferior" 2 "Inferior" 3 "Bajo" 4 "Medio" 5 "Alto" 6 "Superior" 7 "Muy superior"
label values categoria_07 Rendimiento
label values categoria_10 Rendimiento

label variable dane `"Código DANE de la Institución Educativa"'
label variable permed50len_5 `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Lenguaje 5°"'
notes  permed50len_5: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permedlen33_5 `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Lenguaje 5°(puntajes bajos)"'
notes  permedlen33_5: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permed50len_9 `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Lenguaje 9°"'
notes  permed50len_9: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permedlen33_9 `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Lenguaje 9°(puntajes bajos)"'
notes  permedlen33_9: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permed50mat_5 `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Matemática 5°"'
notes  permed50mat_5: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permedmat33_5 `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Matemática 5°(puntajes bajos)"'
notes  permedmat33_5: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permed50mat_9 `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Matemática 9°"'
notes  permed50mat_9: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permedmat33_9 `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Matemática 9°(puntajes bajos)"'
notes  permedmat33_9: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable aprobación5 `"Tasa de aprobación para grado 5° de la Institución educativa"'
label variable aprobación9 `"Tasa de aprobación para grado 9° de la Institución educativa"'

label variable rango1_l5r `"Porcentaje de estudiantes en el nivel de desempeño Insuficiente en el área de Lenguaje 5°."'
label variable rango2_l5r `"Porcentaje de estudiantes en el rango inferior dentro del nivel de desempeño Mínimo en el área de Lenguaje 5°."'
label variable rango3_l5r `"Porcentaje de estudiantes en el rango superior dentro del nivel de desempeño Mínimo en el área de Lenguaje 5°."'
label variable rango4_l5r `"Porcentaje de estudiantes en el rango inferior dentro del nivel de desempeño Satisfactorio en el área de Lenguaje 5°."'
label variable rango5_l5r `"Porcentaje de estudiantes en el rango superior dentro del nivel de desempeño Satisfactorio en el área de Lenguaje 5°."'
label variable rango6_l5r `"Porcentaje de estudiantes en el nivel de desempeño Avanzado en el área de Lenguaje 5°."'

label variable rango1_m5r `"Porcentaje de estudiantes en el nivel de desempeño Insuficiente en el área de Matemática 5°."'
label variable rango2_m5r `"Porcentaje de estudiantes en el rango inferior dentro del nivel de desempeño Mínimo en el área de Matemática 5°."'
label variable rango3_m5r `"Porcentaje de estudiantes en el rango superior dentro del nivel de desempeño Mínimo en el área de Matemática 5°."'
label variable rango4_m5r `"Porcentaje de estudiantes en el rango inferior dentro del nivel de desempeño Satisfactorio en el área de Matemática 5°."'
label variable rango5_m5r `"Porcentaje de estudiantes en el rango superior dentro del nivel de desempeño Satisfactorio en el área de Matemática 5°."'
label variable rango6_m5r `"Porcentaje de estudiantes en el nivel de desempeño Avanzado en el área de Matemática 5°."'

label variable rango1_l9r `"Porcentaje de estudiantes en el nivel de desempeño Insuficiente en el área de Lenguaje 9°."'
label variable rango2_l9r `"Porcentaje de estudiantes en el rango inferior dentro del nivel de desempeño Mínimo en el área de Lenguaje 9°."'
label variable rango3_l9r `"Porcentaje de estudiantes en el rango superior dentro del nivel de desempeño Mínimo en el área de Lenguaje 9°."'
label variable rango4_l9r `"Porcentaje de estudiantes en el rango inferior dentro del nivel de desempeño Satisfactorio en el área de Lenguaje 9°."'
label variable rango5_l9r `"Porcentaje de estudiantes en el rango superior dentro del nivel de desempeño Satisfactorio en el área de Lenguaje 9°."'
label variable rango6_l9r `"Porcentaje de estudiantes en el nivel de desempeño Avanzado en el área de Lenguaje 9°."'

label variable rango1_m9r `"Porcentaje de estudiantes en el nivel de desempeño Insuficiente en el área de Matemática 9°."'
label variable rango2_m9r `"Porcentaje de estudiantes en el rango inferior dentro del nivel de desempeño Mínimo en el área de Matemática 9°."'
label variable rango3_m9r `"Porcentaje de estudiantes en el rango superior dentro del nivel de desempeño Mínimo en el área de Matemática 9°."'
label variable rango4_m9r `"Porcentaje de estudiantes en el rango inferior dentro del nivel de desempeño Satisfactorio en el área de Matemática 9°."'
label variable rango5_m9r `"Porcentaje de estudiantes en el rango superior dentro del nivel de desempeño Satisfactorio en el área de Matemática 9°."'
label variable rango6_m9r `"Porcentaje de estudiantes en el nivel de desempeño Avanzado en el área de Matemática 9°."'

label variable insuficiente_m9 `"Porcentaje de estudiantes en el nivel de desempeño Insuficiente en el área de Matemática 9°."'
label variable minimo_m9 `"Porcentaje de estudiantes en el nivel de desempeño Mínimo en el área de Matemática 9°."'
label variable satisfactorio_m9 `"Porcentaje de estudiantes en el  nivel de desempeño Satisfactorio en el área de Matemática 9°."'
label variable avanzado_m9 `"Porcentaje de estudiantes en el nivel de desempeño Avanzado en el área de Matemática 9°."'

label variable insuficiente_m5 `"Porcentaje de estudiantes en el nivel de desempeño Insuficiente en el área de Matemática 5°."'
label variable minimo_m5 `"Porcentaje de estudiantes en el nivel de desempeño Mínimo en el área de Matemática 5°."'
label variable satisfactorio_m5 `"Porcentaje de estudiantes en el  nivel de desempeño Satisfactorio en el área de Matemática 5°."'
label variable avanzado_m5 `"Porcentaje de estudiantes en el nivel de desempeño Avanzado en el área de Matemática 5°."'

label variable insuficiente_l9 `"Porcentaje de estudiantes en el nivel de desempeño Insuficiente en el área de Lenguaje 9°."'
label variable minimo_l9 `"Porcentaje de estudiantes en el nivel de desempeño Mínimo en el área de Lenguaje 9°."'
label variable satisfactorio_l9 `"Porcentaje de estudiantes en el nivel de desempeño Satisfactorio en el área de Lenguaje 9°."'
label variable avanzado_l9 `"Porcentaje de estudiantes en el nivel de desempeño Avanzado en el área de Lenguaje 9°."'

label variable insuficiente_l5 `"Porcentaje de estudiantes en el nivel de desempeño Insuficiente en el área de Lenguaje 5°."'
label variable minimo_l5 `"Porcentaje de estudiantes en el nivel de desempeño Mínimo en el área de Lenguaje 5°."'
label variable satisfactorio_l5 `"Porcentaje de estudiantes en el nivel de desempeño Satisfactorio en el área de Lenguaje 5°."'
label variable avanzado_l5 `"Porcentaje de estudiantes en el  nivel de desempeño Avanzado en el área de Lenguaje 5°."'


label values categoria_07 Rendimiento
label values categoria_10 Rendimiento
label variable categoria_10 `"Nivel de rendimiento de la Institución Educativa 11 2010"'
label variable categoria_07 `"Nivel de rendimiento de la Institución Educativa 11 2007"'
label variable dane `"Código DANE de la Institución Educativa"'
label variable nombre `"Nombre de la Institución Educativa"'
label variable tema_lenguaje `"Mediana de habilidad de la Institución educativa en Lenguaje 2007"'
label variable tema_matematica `"Mediana de habilidad de la Institución educativa en Matemática 2007"'
label variable tema_lenguaje_d `"Mediana de habilidad de la Institución educativa en Lenguaje 2010"'
label variable tema_matematica_d `"Mediana de habilidad de la Institución educativa en Matemática 2010"'
label variable prmat_bajo_07 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prmat_medio_07 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prmat_alto_07 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prmat_bajo_07_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prmat_medio_07_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prmat_alto_07_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prlen_bajo_07 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prlen_medio_07 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prlen_alto_07 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prlen_bajo_07_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prlen_medio_07_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prlen_alto_07_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2007"'
label variable prmat_bajo_10 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prmat_medio_10 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prmat_alto_10 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prmat_bajo_10_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prmat_medio_10_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prmat_alto_10_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prlen_bajo_10 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prlen_medio_10 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prlen_alto_10 `"Tasa de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prlen_bajo_10_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prlen_medio_10_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable prlen_alto_10_p `"Porcentaje de estudiantes de las Instituciones Educativas en cada rango de calificación de SABER 11 2010"'
label variable aprobación11a `"Tasa de aprobación para grado 11° (académico) de la Institución educativa"'
label variable aprobación11t `"Tasa de aprobación para grado 11° (técnico) de la Institución educativa"'
label variable permed50len `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en lenguaje11"'
notes  permed50len: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permed33len `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Matemática 11(puntajes bajos)"'
notes  permed33len: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permed50mat `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Matemática 11"'
notes  permed50mat: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable permedmat33 `"Crecimiento del puntaje de la institución respecto a otras que habían obtenido un puntaje similar en el período anterior en Matemática 11(puntajes bajos)"'
notes  permedmat33: La lectura del indicador sería: la Institución "I" se encuentra por encima del  x% de las instituciones que en la prueba anterior habían obtenido un puntaje similar en esta área del conocimiento
label variable varcolegios11 `"Variación de la clasificación de las Instituciones  Educativas 11"'
label variable textra `"Tasa de alumnos en extra edad al momento de presentar SABER 11"'
label variable rtextra `"Reciproco de la tasa de alumnos en extra edad al momento de presentar SABER 11"'
label variable  bonus_lenguaje11`"Bonificación en lenguaje para grado 11"'
label variable  bonus_matematica11`"Bonificación en matemática para grado 11"'
label variable  bonus_lenguaje5`"Bonificación en lenguaje para grado 5"'
label variable  bonus_matematica5`"Bonificación en matemática para grado 5"'
label variable  bonus_total11`"Suma de las bonificaciones de grado 11"'
label variable  bonus_total5`"Suma de las bonificaciones de grado 5"'

drop  cole_codigo_mcpio_d nombre_sb11_07 nombre_sb11_10 ProporcionEstrato0 ProporcionEstrato1 ProporcionEstrato2 ProporcionEstrato3 ProporcionEstrato4 ProporcionEstrato5 ProporcionEstrato6 _merge
save indicadores_y_bonus, replace
outsheet using "D:\rendimiento3\SQL\indicadores_y_bonus.csv", comma replace
