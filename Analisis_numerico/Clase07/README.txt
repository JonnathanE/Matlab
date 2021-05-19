Autor: Jonnathan Damián Espinoza Erráez
Fecha: 7 de Junio del 2020
===================================================================================================================
===================================================================================================================
Script principal:

	ejercicio07.m

Funciones creadas:

	ffuncion.m 		->	Representa la función
	freglaTrapeciosError.m	->	Regla trapecios
	fsimpsonTercioError.m	->	Regla de Simpson 1/3
	fsimpsonTOError.m	->	Regla de Simpson 3/8

	freglaTrapecios.m	->	Regla trapecios (Sin parametro de error)
	fsimpsonTercio.m	->	Regla de Simpson 1/3 (Sin parametro de error)
	fsimpsonTO.m		->	Regla de Simpson 3/8 (Sin parametro de error)
===================================================================================================================
===================================================================================================================
Funcionamiento de ingreso de parametros

	1) El algortimo pide el ingreso de datos:
		-> valor minimo(a), 
		-> valor maximo(b)
		-> valor interacciones (N)
		-> valor del error
	
	2) Para obtener los incrementos (h), se realiza la formula:
		h = (b-a)/N


Ejemplo de ingreso de parametros

	1) Par obtener los resultados del documento de excel adjunto se ingrean los valores:
		-> a = 0
		-> b = 10
		-> N = 20
		-> error = 0.001
===================================================================================================================
===================================================================================================================
Reultado

Algoritmos sin la variable de Error

TError =

  2×3 table

                 Trapecio      Simpson_1_3    Simpson_3_8
                ___________    ___________    ___________

    Itegral     -1.3406e+06    -1.3286e+06    -1.4192e+06
    Contador             21             21             21

Algoritmos con la variable de Error

TError =

  2×3 table

                TrapecioError    Simpson_1_3Error    Simpson_3_8Error
                _____________    ________________    ________________

    Itegral      -1.3286e+06       -1.3286e+06         -1.4891e+06   
    Contador              14                 6                   5   

