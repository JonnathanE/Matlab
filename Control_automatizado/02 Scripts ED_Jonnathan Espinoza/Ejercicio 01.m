% *EJERCICIOS DE PROGRAMACI�N - SCRIPTS EN MATLAB PARA RESOLVER EDO*
%
%   *Autor:* Jonnathan Dami�n Espinoza Err�ez
%   *Fecha:* 24 de mayo de 2021
%
% *EJERCICIO 01:*
%   $xy'=y$ Condici�n inicial: $y(2)=1$
%   

clc, clear all;

% RESOLVER E.D
ED = 'Dy = y/x'; % definicion de mi Ecuacion Diferencial
ci = 'y(2) = 1'; % definicion de mi Condicion Inicial
y = dsolve(ED, ci, 'x') % Resolucion de la E.D.

% GRAFICAR RECTA
x = linspace(-3, 8, 50); % generacion de un vector con los valores de x
vy = eval(y); % evaluacion de mi fuci�n y
hold on % permite superponer los gr�ficos
plot(x, vy, 'r'); % graficar
title('Ejercicio 02');
xlabel('x');
ylabel('y');
grid on

% GRAFICAR CONDICION INICIAL
plot(2, 1, '*g'); % grafica los puntos de la condicion inicial
legend(['y=', char(y)], '(2, 1)'); % agregar leyenda

hold off