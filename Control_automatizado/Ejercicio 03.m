% EJERCICIOS DE PROGRAMACI�N - SCRIPTS EN MATLAB PARA RESOLVER EDO
%
%   Autor: Jonnathan Dami�n Espinoza Err�ez
%   Fecha: 24 de mayo de 2021

% EJERCICIO 03:
%   y'=2x Condici�n inicial: y(0)=1

clc, clear all;

ED = 'Dy = 2*x'; % definicion de mi Ecuacion Diferencial
ci = 'y(0) = 1'; % definicion de mi Condicion Inicial
y = dsolve(ED, ci, 'x'); % Resolucion de la E.D.
pretty(y)


% GR�FICAR RECTA
x = linspace(-1.8, 1.8, 50); % generacion de un vector con los valores de x
vy = eval(y); % evaluacion de mi fuci�n y

hold on % permite superponer los gr�ficos
plot(x, vy, 'r') % graficar
title('Ejercicio 3')
xlabel('x')
ylabel('y')
grid on

% GRAFICAR CAMPO DE DIRECCIONES
f = inline('2*x', 'x', 'y');
iz=-4; paso=0.6; der=4;
[xcd, ycd] = meshgrid(iz:paso:der, iz:paso:der);
[n, m] = size(xcd);
dx = ones(n,m);
dy = f(xcd, ycd);
quiver(xcd, ycd, dx, dy)

plot(0, 1, '*g') % grafica los puntos de la condicion inicial
legend(['y=', char(y)], 'Campo Direcciones', 'Condici�n Inicial') % agregar leyenda

hold off

