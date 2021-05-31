% EJERCICIOS DE PROGRAMACIÓN - SCRIPTS EN MATLAB PARA RESOLVER E.D

% Autores: Camila Cueva, Jonnathan Espinoza y Edgar Sánchez
% Fecha: 03 de junio de 2021

% Ejercicio 3
% Resolver la ecuación diferencial de primer orden y' = sen x, con valor 
% inicial: y(0) = 2.
 
% a. Use el método de separación de variables en Matlab 

% b. En el mismo script realice la solución de la ecuación diferencial 
% con dsolve.

% c. En el mismo script genere dos gráficas independientes que muestre 
% la solución del literal a y b

clear all; clc;
syms x y c

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Literal a.

% Se determina g y h
% y' = sen x
% sen x = y'
g = sin(x);
h = 1;

% Condición inicial
x0 = 0;
y0 = 2;

% Se procede a integrar cada parte
integral_g = int(g,x);
integral_h = int(h,y);

% Solucion general
sol = integral_h-integral_g-c;
sol_general = solve(sol,y);
disp('MÉTODO DE VARIABLES SEPARABLES');
disp('Solución general: ');
pretty(sol_general)

% Solución particular
disp('Solución particular: ');
c = solve(subs(sol_general,'x',x0)-y0);
y = subs(sol_general,'c',c);
pretty(y)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Literal b.

disp('MÉTODO DE DSOLVE()');

% Solución general
Y = dsolve('Dy = sin(x)','x');
disp('Solución general: ');
pretty(Y)

% Solución particular
Y = dsolve('Dy = sin(x)','y(0)=2','x');
disp('Solución particular: ');
pretty(Y) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Literal c.

% Se gráfica
subplot(1,2,1)
ezplot(y,[-3,3]);
title('Método de variables separadas');

subplot(1,2,2)
ezplot(Y,[-3,3]);
title('Método de dsolve()');