% TRANSFORMADA DE LAPLACE PIMER MÉTODO DE RECORRIDO
% FECHA: 08 de Junio 2021

clc, clear all;
% Ejercicio 01: 
%       f(t) = e^-4t cos(2t)
disp('Ejercicio 01, primera forma')
syms f(t) t s;                  % declaramos las variables simbólicas
f(t) = exp(-4*t)*cos(2*t);      % expresamos la función definida en t
F(s) = laplace(f, t, s)         % calculamos la función transformada definida en s

% Ejercicio 01: 
%   f(t) = e^-4t cos(2t)
disp('Ejercicio 01, segunda forma')
syms f(t) t s;                  % declaramos las variables simbólicas
f(t) = cos(2*t);                % expresamos la función definida en t
F(s) = laplace(f, t, s)         % calculamos la función transformada definida en s
F(s) = subs(F(s), s, s+4)       % sustituimos s -> s-(-4)

% Ejercicio 02: f(t) = t^2 e^4t
disp('Ejercicio 02')
syms f(t) t s;
f(t) = t^2 * exp(4*t);
F(s) = laplace(f, t, s)

% Ejercicio 03: f(t) = 5t^6 e^-2t
disp('Ejercicio 03')
syms f(t) t s;
f(t) = 5*t^6 * exp(-2*t);
F(s) = laplace(f, t, s)

% Ejercicio 04: f(t) = (t + e^-t)^2
disp('Ejercicio 04')
syms f(t) t s;
f(t) = (t + exp(-t))^2;
F(s) = laplace(f, t, s)
