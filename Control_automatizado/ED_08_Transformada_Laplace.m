% TRANSFORMADA DE LAPLACE
% FECHA: 04 de Junio 2021

clc, clear all;

% Ejercicio 01: f(t) = 1
disp('Ejercicio 01')
syms f(t) t s;
f(t) = 1;
F(s) = laplace(f, t, s)

% Ejercicio 02: f(t) = e^at
disp('Ejercicio 02')
syms f(t) t s a;
f(t) = exp(a*t);
F(s) = laplace(f, t, s)

% Ejercicio 03: f(t) = t^(3/2) - e^t + senh(at)
disp('Ejercicio 03')
syms f(t) t s a;
f(t) = t^(3/2)- exp(t) + sinh(a*t);
F(s) = laplace(f, t, s)