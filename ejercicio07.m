clear all
clc
% VALORES DE PRUEBA
%   a = 0
%   b = 10
%   N = 20
%   Resultado = -1.3406e+06

% Ingreso valores para evaluar el polinomio
a = input('Ingrese Minimo (a): ');
b = input('Ingrese Maximo (b): ');
N = input('Ingrese Iteracciones (N): ');
err = input('Ingrese Error: ');

[trapeciosE, cont01] = freglaTrapeciosError(@ffuncion, a, b, N, err);
[simpson13E, cont02] = fsimpsonTercioError(@ffuncion,a,b,N,err);
[simpson38E, cont03] = fsimpsonTOError(@ffuncion,a,b,N,err);

h = (b-a)/N;
x = a:h:b;
simpson38 = fsimpsonTO(@ffuncion, x, h);

trapeciosE(2) = cont01;
simpson13E(2) = cont02;
simpson38(2) = length(x);
simpson38E(2) = cont03;

T = table(trapeciosE(:), simpson13E(:),simpson38E(:),simpson38(:),... 
'VariableNames',{'TrapecioE','Simpson13E','Simpson38E','Simpson38'}, ...
'RowNames',{'Itegral';'Contador'})

