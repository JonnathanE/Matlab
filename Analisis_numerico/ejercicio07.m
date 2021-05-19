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

% operacion de los algoritmos con el PARAMETRO DE ERROR
[trapeciosE, cont01] = freglaTrapeciosError(@ffuncion, a, b, N, err); % Regla de trapecios
[simpson13E, cont02] = fsimpsonTercioError(@ffuncion,a,b,N,err); % Regla de Simpson 1/3
[simpson38E, cont03] = fsimpsonTOError(@ffuncion,a,b,N,err); % Regla de Simpson 3/8 (Está limitado a 5 iteraciones)

% Construccion de la tabla
trapeciosE(2) = cont01;
simpson13E(2) = cont02;
simpson38E(2) = cont03;

% Operacion de la regla de Simpson 3/8 SIN el parametro de error
h = (b-a)/N;
x = a:h:b;

trapecio = freglaTrapecios(@ffuncion,x,h); % Regla de Trapecio
simpson13 = fsimpsonTercio(@ffuncion, x, h); % Regla de Simpson 1/3
simpson38 = fsimpsonTO(@ffuncion, x, h);    % Regla de Simpson 3/8 (sin parametro de error)

trapecio(2) = length(x);
simpson13(2) = length(x);
simpson38(2) = length(x);
disp('==============================================================================')
disp('Algoritmos sin la variable de Error')
TError = table(trapecio(:), simpson13(:),simpson38(:),... 
'VariableNames',{'Trapecio','Simpson_1_3','Simpson_3_8'}, ...
'RowNames',{'Itegral';'Contador'})

disp('==============================================================================')
disp('Algoritmos con la variable de Error')
TError = table(trapeciosE(:), simpson13E(:),simpson38E(:),... 
'VariableNames',{'TrapecioError','Simpson_1_3Error','Simpson_3_8Error'}, ...
'RowNames',{'Itegral';'Contador'})

