clear all
clc
% VALORES DE PRUEBA
%   a = 0
%   b = 10
%   N = 20
%   Error = 0.001
%
%   FUNCION:
%       y = x.^4 * (5 - x.^2)
%
%   RESULTADO:
%       Regla de Trapecios = -1.3286e+06
%       Regla de Simpson 1/3 = -1.3286e+06
%       Regla de Simpson 3/8 = -1.4891e+06 -> esta limitado a 5 iteraciones
%       Regla de Simpson 3/8 (Sin error) = -1.4192+06

% Ingreso valores para evaluar el polinomio
a = input('Ingrese Minimo (a): ');
b = input('Ingrese Maximo (b): ');
N = input('Ingrese Iteracciones (N): ');
err = input('Ingrese Error: ');

% operacion de los algoritmos con el parametro de error
[trapeciosE, cont01] = freglaTrapeciosError(@ffuncion, a, b, N, err); % Regla de trapecios
[simpson13E, cont02] = fsimpsonTercioError(@ffuncion,a,b,N,err); % Regla de Simpson 1/3
[simpson38E, cont03] = fsimpsonTOError(@ffuncion,a,b,N,err); % Regla de Simpson 3/8 (Está limitado a 5 iteraciones)

% Operacion de la regla de Simpson 3/8 sin el parametro de error
h = (b-a)/N;
x = a:h:b;
simpson38 = fsimpsonTO(@ffuncion, x, h);    % Regla de Simpson 3/8 (sin parametro de error)

% Construccion de la tabla
trapeciosE(2) = cont01;
simpson13E(2) = cont02;
simpson38(2) = length(x);
simpson38E(2) = cont03;

T = table(trapeciosE(:), simpson13E(:),simpson38E(:),simpson38(:),... 
'VariableNames',{'TrapecioE','Simpson_1_3E','Simpson_3_8E','Simpson_3_8'}, ...
'RowNames',{'Itegral';'Contador'})

