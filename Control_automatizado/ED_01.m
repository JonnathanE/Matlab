%   Script para resolver  E.D.

% FECHA: 18 de Mayo 2021

% Ejercicio 01:
% dy/dx = 5*y
% condicion Inicial y(0)=2

clc, clear all;             % Declaramos las variables simbolicas

ED = 'Dy = 5 * y';          % ED
ci = 'y(0) = 2';            % Condidion Inicial    
y = dsolve(ED, ci, 'x')     % Resolucion de la ED
% Graficar
x = linspace(0, 2, 11);     % Generar 200 valores de 'x' de 0 a 10
vy = eval(y);               % Resolver la funcion 'y' para los valores de 'x'
plot(x, vy)                 % Grafica de la solucion