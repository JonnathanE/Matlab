% EJERCICIOS DE PROGRAMACIÓN - SCRIPTS EN MATLAB PARA RESOLVER EDO
%
%   Autor: Jonnathan Damián Espinoza Erráez
%   Fecha: 24 de mayo de 2021

% EJERCICIO 06:
%   y'=e^(2y)sen(x) Condición inicial: y(0)=1

clc, clear all;

ED = 'Dy = exp(2*y)*sin(x)'; % definicion de mi Ecuacion Diferencial
ci = 'y(0) = 1'; % definicion de mi Condicion Inicial
y = dsolve(ED, ci, 'x'); % Resolucion de la E.D.
pretty(y)

% GRÁFICAR RECTA
x = linspace(-1, 1, 50); % generacion de un vector con los valores de x
vy = eval(y); % evaluacion de mi fución y

hold on % permite superponer los gráficos
plot(x, vy, 'r') % graficar
title('Ejercicio 06')
xlabel('x')
ylabel('y')
grid on

% GRAFICAR CAMPO DE DIRECCIONES
f = inline('exp(2*y)*sin(x)', 'x', 'y');
iz=-2; paso=0.5; der=2;
[xcd, ycd] = meshgrid(iz:paso:der, iz:paso:der);
[n, m] = size(xcd);
dx = ones(n,m);
dy = f(xcd, ycd);
quiver(xcd, ycd, dx, dy)

plot(0, 1, '*g') % grafica los puntos de la condicion inicial
legend(['y=', char(y)], 'Campo Direcciones', 'Condición Inicial') % agregar leyenda

hold off