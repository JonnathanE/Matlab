% EJERCICIOS DE PROGRAMACIÓN - SCRIPTS EN MATLAB PARA RESOLVER EDO
%
%   Autor: Jonnathan Damián Espinoza Erráez
%   Fecha: 24 de mayo de 2021

% EJERCICIO 05:
%   y'=-4xy Condición inicial: y(0)=3

clc, clear all;

ED = 'Dy = -4*x*y'; % definicion de mi Ecuacion Diferencial
ci = 'y(0) = 3'; % definicion de mi Condicion Inicial
y = dsolve(ED, ci, 'x'); % Resolucion de la E.D.
pretty(y)

% GRÁFICAR RECTA
x = linspace(-3, 3, 50); % generacion de un vector con los valores de x
vy = eval(y); % evaluacion de mi fución y

hold on % permite superponer los gráficos
plot(x, vy, 'r') % graficar
title('Ejercicio 05')
xlabel('x')
ylabel('y')
grid on

% GRAFICAR CAMPO DE DIRECCIONES
f = inline('-4*x*y', 'x', 'y');
iz=-4; paso=0.5; der=4;
[xcd, ycd] = meshgrid(iz:paso:der, iz:paso:der);
[n, m] = size(xcd);
dx = ones(n,m);
dy = f(xcd, ycd);
quiver(xcd, ycd, dx, dy)

plot(0, 3, '*g') % grafica los puntos de la condicion inicial
legend(['y=', char(y)], 'Campo Direcciones', 'Condición Inicial') % agregar leyenda

hold off