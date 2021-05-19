% Script para resolver  E.D.

% Ejercicio 01:
% dy/dx = 5*y
% condicion Inicial y(0)=2

clc, clear all;

ED = 'Dy = 5 * y';
ci = 'y(0) = 2';
y = dsolve(ED, ci, 'x')
x = linspace(0, 2, 11);
vy = eval(y);
plot(x, vy)