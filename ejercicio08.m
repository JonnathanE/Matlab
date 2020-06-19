clear all
clc
format long
% Autor: Jonnathan Damián Espinoza Erráez

% Ingreso valores para evaluar el polinomio
num = input('Ingrese X inicial: ');
err = input('Ingrese Error: ');

% Calculamos las segundas derivadas
[x, cont] = fnewtonRaphson(@ffuncion,@fdfuncion,num,err);
disp(strcat('Contador = ', num2str(cont)))
x(:)
