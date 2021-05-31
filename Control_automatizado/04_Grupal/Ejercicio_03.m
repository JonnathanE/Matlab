% EJERCICIOS DE PROGRAMACI�N - SCRIPTS EN MATLAB PARA RESOLVER E.D

% Autores: Camila Cueva, Jonnathan Espinoza y Edgar S�nchez
% Fecha: 03 de junio de 2021

% Ejercicio 3
% Resolver la ecuaci�n diferencial de primer orden y' = sen x, con valor 
% inicial: y(0) = 2.
 
% a. Use el m�todo de separaci�n de variables en Matlab 

% b. En el mismo script realice la soluci�n de la ecuaci�n diferencial 
% con dsolve.

% c. En el mismo script genere dos gr�ficas independientes que muestre 
% la soluci�n del literal a y b

clear all; clc;
syms x y c

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Literal a.

% Se determina g y h
% y' = sen x
% sen x = y'
g = sin(x);
h = 1;

% Condici�n inicial
x0 = 0;
y0 = 2;

% Se procede a integrar cada parte
integral_g = int(g,x);
integral_h = int(h,y);

% Solucion general
sol = integral_h-integral_g-c;
sol_general = solve(sol,y);
disp('M�TODO DE VARIABLES SEPARABLES');
disp('Soluci�n general: ');
pretty(sol_general)

% Soluci�n particular
disp('Soluci�n particular: ');
c = solve(subs(sol_general,'x',x0)-y0);
y = subs(sol_general,'c',c);
pretty(y)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Literal b.

disp('M�TODO DE DSOLVE()');

% Soluci�n general
Y = dsolve('Dy = sin(x)','x');
disp('Soluci�n general: ');
pretty(Y)

% Soluci�n particular
Y = dsolve('Dy = sin(x)','y(0)=2','x');
disp('Soluci�n particular: ');
pretty(Y) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Literal c.

% Se gr�fica
subplot(1,2,1)
ezplot(y,[-3,3]);
title('M�todo de variables separadas');

subplot(1,2,2)
ezplot(Y,[-3,3]);
title('M�todo de dsolve()');