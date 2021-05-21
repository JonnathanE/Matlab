% EJERCICIOS DE PROGRAMACIÓN - SCRIPTS EN MATLAB PARA RESOLVER EDO
%
%   Autor: Jonnathan Damián Espinoza Erráez
%   Fecha: 24 de mayo de 2021

% EJERCICIO 06:
%   y'=e^(2y)sen(x) Condición inicial: y(0)=1

clc, clear all;

% RESOLVER E.D
ED = 'Dy = exp(2*y)*sin(x)'; % definicion de mi Ecuacion Diferencial
ci = 'y(0) = 1'; % definicion de mi Condicion Inicial
y = dsolve(ED, ci, 'x'); % Resolucion de la E.D.
disp('y =');pretty(y); % Presentar en consola

% GRÁFICAR RECTA
x = linspace(-3, 3); % generacion de un vector con los valores de x
vy = eval(y); % evaluacion de mi fución y
hold on % permite superponer los gráficos
plot(x, vy, 'r'); % graficar
title('Ejercicio 06');
xlabel('x');
ylabel('y');
grid on

% GRAFICAR CONDICION INICIAL
plot(0, 1, '*g'); % grafica los puntos de la condicion inicial
legend(['y=', char(y)], '(0, 1)'); % agregar leyenda

hold off