% EJERCICIO 01
% Representar un campo direccional de la ecuaci�n diferencial dy/dx = 2x
% Sobre la misma gr�fica superponer:
%   > La gr�fica de la soluci�n de la ecuaci�n diferencial para un valor inicial de
%     y(1) = 2.
%   > La gr�fica de la condici�n inicial (punto).

clc, clear all;

% RESOLVER E.D
ED = 'Dy = 2*x'; % definicion de mi Ecuacion Diferencial
ci = 'y(1) = 2'; % definicion de mi Condicion Inicial
y = dsolve(ED, ci, 'x'); % Resolucion de la E.D.

% Presentar soluci�n
disp('Soluci�n de la E.D.')
y

% GRAFICAR LA RECTA
x = linspace(-1.4, 1.4, 50); % generacion de un vector con los valores de x
vy = eval(y); % evaluacion de mi fuci�n y
hold on % permite superponer los gr�ficos
plot(x, vy, 'r'); % graficar
title('Ejercicio 01');
xlabel('x');
ylabel('y');
grid on

% GRAFICAR CONDICION INICIAL
plot(1, 2, '*g'); % grafica los puntos de la condicion inicial

% GRAFICAR CAMPO DE DIRECCIONES
f = @(x,y) 2*x; % declaramos la funcion. Equivalente a inline('y', 'x', 'y')
iz=-3; paso=0.4; der=3; % definimos el intervalo para el meshgrid
[xcd, ycd] = meshgrid(iz:paso:der, iz:paso:der);
[n, m] = size(xcd);
dx = ones(n,m);
dy = f(xcd, ycd);
quiver(xcd, ycd, dx, dy);
legend(['y=', char(y)], '(1, 2)', 'Campo Direcciones'); % agregar leyenda
hold off

