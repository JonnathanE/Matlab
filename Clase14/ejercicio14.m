% Autor: Jonnathan Damián Espinoza
clear all
clc

x = [1 1.67 2.33 3];
y = [1.99 1.76 1.69 1.63];
h = 2/3;
xin = 2.1;

y = f_interpolacion_newton(x,y,xin,h)

y2 = f_interpolacion_newton_in(x,y,xin,h)

% EJERCICIO 2
disp('EJERCICIO 2')

x = [3.1 2.8 2.5 2.2 1.9 1.6];
y = [2.31 2.54 2.82 3.21 3.99 4.75];
h = -0.3;
xin = 2;

y = f_interpolacion_newton(x,y,xin,h)

y2 = f_interpolacion_newton_in(x,y,xin,h)

