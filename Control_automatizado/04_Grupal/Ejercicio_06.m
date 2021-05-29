% EJERCICIO 02
% Realizar un script en Matlab que me permita resolver la siguiente ecuación diferencial
% lineal homogénea de segundo orden: ?^2*y?? + ??? ? 4? =0 , sabiendo de que una solución
% es ?1 = ?^2, encontrar la segunda solución linealmente independiente usando reducción
% de orden y expresar la solución general de esta ecuación diferencial.

clc, clear all;

syms x y P(x) C1 C2
P(x)= x/x.^2;
y1 = x.^2
y2 = y1 * int( exp(-int(P,'x'))/y1.^2,'x')
sol = C1*y1 + C2*y2