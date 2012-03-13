 cd "C:\Users\Sebastian\Desktop\Trabajo\Carlos"

 use IDdane, clear
 outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\IDdane.csv", comma replace
 
 use indicadores_y_bonus,clear 
 outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\indicadores_y_bonus.csv", comma replace
 
 replace dane= 105001025844 if nombre=="INST EDUC ANTONIO DERKA - SANTO DOMINGO"
 save indicadores_y_bonus1,replace
outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\indicadores_y_bonus1.csv", comma replace
 
use indicadores_y_bonus1,clear

keep    dane      avanzado_m9  avanzado_m5  avanzado_l9  avanzado_l5  tema_matematica   tema_lenguaje prmat_alto_07_p  prlen_alto_07_p  tema_lenguaje_d tema_matematica_d prmat_alto_10_p  prlen_alto_10_p aprobación5     Progresolen5 Progresolen9 Progresomat5 Progresomat9    Progresomat11 Progresolen11   rtextra aprobación9  
  
save BaseCP.dta,replace
outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\BaseCP.csv", comma replace

use AmbienteEscolar,clear
outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\AmbienteEscolar.csv", comma replace
replace dane = 105001025780  if dane== 105001014869
keep  dane   ExpectativasAcademicas  Comunicacion  Participacion  SeguridadRespeto
merge 1:1  dane using  BaseCP
drop _merge
replace ExpectativasAcademicas    = ExpectativasAcademicas  *100/10
replace Comunicacion  = Comunicacion*100/10
replace Participacion = Participacion*100/10
replace SeguridadRespeto  = SeguridadRespeto*100/10
replace rtextra=rtextra*100
replace aprobación5=aprobación5*100
replace aprobación9=aprobación9*100

save BaseParaCp,replace
outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\BaseParaCp.csv", comma replace




use BaseParaCP,clear

impute tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(TemaMatematica07)
impute tema_lenguaje  tema_matematica prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(TemaLenguaje07)
impute prmat_alto_07_p tema_matematica tema_lenguaje  prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(prmatalto07)
impute prlen_alto_07_p tema_matematica tema_lenguaje prmat_alto_07_p  tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(prlenalto07)
impute tema_lenguaje_d tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p  tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(TemaLenguaje10)
impute tema_matematica_d tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d  prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(TemaMatematica10)
impute prmat_alto_10_p tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d  prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(prmatalto10)
impute prlen_alto_10_p tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p  avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(prlenalto10)
impute avanzado_m9  tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(Avanzadom9)
impute avanzado_m5  tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_l9 avanzado_l5  aprobación5  aprobación9  rtextra, generate(Avanzadom5)
impute avanzado_l9  tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l5  aprobación5  aprobación9  rtextra, generate(Avanzadol9)
impute avanzado_l5   tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 aprobación5  aprobación9  rtextra, generate(Avanzadol5)
impute aprobación5   tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación9  rtextra, generate(Aprobacion5)
impute aprobación9   tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  rtextra, generate(Aprobacion9)
impute rtextra tema_matematica tema_lenguaje prmat_alto_07_p prlen_alto_07_p tema_lenguaje_d tema_matematica_d prmat_alto_10_p prlen_alto_10_p avanzado_m9 avanzado_m5 avanzado_l9 avanzado_l5  aprobación5  aprobación9  , generate(Rextraedad)


*Imputación  variables progreso

impute  Progresolen5  Progresolen9  Progresomat5 Progresomat9   Progresolen11 Progresomat11 ,generate(ProgresoLen5)
impute  Progresolen9  Progresolen5  Progresomat5 Progresomat9 Progresolen11 Progresomat11 ,generate(ProgresoLen9)
impute  Progresomat5  Progresolen5  Progresolen9 Progresomat9  Progresolen11 Progresomat11 ,generate(ProgresoMat5)
impute  Progresomat9  Progresolen5  Progresolen9 Progresomat5  Progresolen11 Progresomat11 ,generate(ProgresoMat9)
impute  Progresolen11 Progresolen5  Progresolen9 Progresomat5  Progresomat9  Progresomat11 ,generate(ProgresoLen11)
impute  Progresomat11 Progresolen5  Progresolen9 Progresomat5  Progresomat9 Progresolen11  ,generate(ProgresoMat11)



keep   dane   ExpectativasAcademicas  Comunicacion  Participacion  SeguridadRespeto TemaMatematica07   TemaLenguaje07  prmatalto07  prlenalto07  TemaLenguaje10  TemaMatematica10  prmatalto10  prlenalto10  Avanzadom9  Avanzadom5 Avanzadol9 Avanzadol5 Aprobacion5 Aprobacion9 Rextraedad  ProgresoLen5 ProgresoLen9 ProgresoMat5 ProgresoMat9 ProgresoMat11 ProgresoLen11 

drop if ExpectativasAcademicas  ==.
drop if Comunicacion  ==.
drop if Participacion  ==.
drop if SeguridadRespeto ==.
drop if TemaMatematica07   ==.
drop if TemaLenguaje07  ==.
drop if prmatalto07  ==.
drop if prlenalto07  ==.
drop if TemaLenguaje10  ==.
drop if TemaMatematica10  ==.
drop if prmatalto10  ==.
drop if prlenalto10  ==.
drop if Avanzadom9  ==.
drop if Avanzadom5 ==.
drop if Avanzadol9 ==.
drop if Avanzadol5 ==.
drop if Aprobacion5 ==.
drop if Aprobacion9 ==.
drop if Rextraedad  ==.
drop if ProgresoLen5 ==.
drop if ProgresoLen9 ==.
drop if ProgresoMat5 ==.
drop if ProgresoMat9 ==.
drop if ProgresoMat11 ==.
drop if ProgresoLen11 ==.
save BaseImputada,replace
outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\BaseImputada.csv", comma replace

use BaseParaCp,clear

rename tema_matematica TemaMatematica07   
rename tema_lenguaje TemaLenguaje07  
rename prmat_alto_07_p prmatalto07  
rename prlen_alto_07_p prlenalto07  
rename tema_lenguaje_d TemaLenguaje10  
rename tema_matematica_d TemaMatematica10  
rename prmat_alto_10_p prmatalto10  
rename prlen_alto_10_p prlenalto10  
rename avanzado_m9 Avanzadom9  
rename avanzado_m5 Avanzadom5 
rename avanzado_l9 Avanzadol9 
rename avanzado_l5 Avanzadol5 
rename aprobación5 Aprobacion5 
rename aprobación9 Aprobacion9 
rename rtextra Rextraedad
rename Progresolen5 ProgresoLen5
rename Progresolen9 ProgresoLen9
rename Progresomat5 ProgresoMat5
rename Progresomat9 ProgresoMat9
rename Progresomat11 ProgresoMat11
rename Progresolen11 ProgresoLen11

save BaseParaCp1,replace
outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\BaseParaCp1.csv", comma replace

use BaseImputada,clear

merge 1:1 dane using BaseParaCP1
drop if _merge !=3
drop _merge
rename dane dane1
merge 1:1 dane1 using IDdane
drop if _merge!=3
drop _merge
save BaseFinal,replace
outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\BaseFinal.csv", comma replace

use BaseFinal,clear

append using Pesos
format %15.0g dane
xpose,clear
drop in 1
local i=1
while `i' <=199{
mkmat v`i'
local i=`i'+1
}
matrix A = v1
local i=2
while `i' <=198{
matrix A=[A,v`i']
mkmat v`i'
local i=`i'+1
}
matrix iden=A[26,1..198]
matrix iden=iden'
matrix A =A[1..25,1..198]

matrix B=v199

matrix B=B[1..25,1]
matrix A1=A[1..4,1..198]
matrix A2=A[5..19,1..198]
matrix A3=A[20..25,1..198]
matrix B1=B[1..4,1]
matrix B2=B[5..19,1]
matrix B3=B[20..25,1]

matrix C=A'*B

matrix C1=A1'*B1
matrix C2=A2'*B2
matrix C3=A3'*B3
matrix input Maximo= (100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100\100)

matrix Factor1Maximo=Maximo[1..4,1]'*B1
matrix Factor2Maximo=Maximo[5..19,1]'*B2
matrix Factor3Maximo=Maximo[20..25,1]'*B3
matrix MaximoTotal=Factor1Maximo+Factor2Maximo+Factor3Maximo

matrix C11=C1*100/Factor1Maximo[1,1]
matrix C12=C2*100/Factor2Maximo[1,1]
matrix C13=C3*100/Factor3Maximo[1,1]

matrix maximoAE=Factor1Maximo*100/MaximoTotal[1,1]
matrix maximoR=Factor2Maximo*100/MaximoTotal[1,1]
matrix maximoP=Factor3Maximo*100/MaximoTotal[1,1]

/*
local i=1
forvalues i=1/209{
matrix C1[`i',1]=C1[`i',1]-Factor1Maximo[1,1]
local i =`i' +1
}

local i=1
forvalues i=1/209{
matrix C2[`i',1]=C2[`i',1]-Factor2Maximo[1,1]
local i =`i' +1
}

local i=1
forvalues i=1/209{
matrix C3[`i',1]=C3[`i',1]-Factor3Maximo[1,1]
local i =`i' +1
}
*/



matrix AmbienteEscolar=C1*maximoAE/Factor1Maximo[1,1]
matrix Rendimiento=C2*maximoR/Factor2Maximo[1,1]
matrix Progreso=C3*maximoP/Factor3Maximo[1,1]


svmat AmbienteEscolar
svmat Rendimiento
svmat Progreso
svmat iden
gen IndicadorEducacion= AmbienteEscolar+Rendimiento+Progreso

keep  AmbienteEscolar Rendimiento  Progreso IndicadorEducacion iden1
merge 1:1 iden1 using IDdane
drop if _merge!=3
drop _merge
rename dane1 dane 
drop iden1
save IndicadorMultivariado,replace

 outsheet using "C:\Users\Sebastian\Desktop\Trabajo\Carlos\IndicadorMultivariado.csv", comma replace

