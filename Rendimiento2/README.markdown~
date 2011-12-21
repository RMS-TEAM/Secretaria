#### Stored Procedure
    Stored procedures correspondientes a Indicadores.do

#### UDF
    para instalar las funciones MEDIAN y PERC en MySQL se deben instalar
    udf_median.cc y udf_perc.cc, teniendo en cuenta que esto fue corrido en Ubuntu 11.10
    1. Compilar los .cc 
       s@linux:˜> gcc -Wall -I /home/jansen/mysql-4.0.20/include -I
         /usr/local/include -c udf_median.cc -o udf_median.o
       s@linux:˜> ld -shared -o udf_median.so udf_median.o

    2. Poner el UDF en donde MySQL lo pueda encontrar
       s@linux:˜> cp udf_median.so /usr/lib

    3. Run MySQL y resgistar la funcion UDF
       s@linux:˜> mysql
       mysql> CREATE AGGREGATE FUNCTION median RETURNS REAL SONAME 'udf_median.so';

   
#Autores

#### Juan Sebastian Velez Posada

#### Ruben Dario Espinisa Roldan

#### Jose Mateo Vidal Barrera

#### Consultores de proyecto Universidad EAFIT
