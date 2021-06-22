% EJERCICIOS DE PROGRAMACIÓN - SCRIPTS EN MATLAB PARA RESOLVER E.D

% Autores: Camila Cueva, Jonnathan Espinoza y Edgar Sánchez
% Fecha: 03 de junio de 2021

% Ejercicio 5
% Realizar un script en Matlab que permita determinar si las siguientes
% funciones son linealmente independientes con el uso del Wronskiano.
% y1 = x^2+5x 
% y2 = 3x^2-x

clear all; clc;
syms x

% Se inicializan cada función
y1 = x^2+5*x;
y2 = 3*x^2-x;

% Se obtiene la derivada de cada función
Dy1 = diff(y1);
Dy2 = diff(y2);

% Se realiza la matriz con las funciones y las respectivas derivadas
mW = [y1 y2;Dy1 Dy2];

% Se calcula la determinante de la matriz
W = det(mW);
str_1 = 'El determinante de la matriz es: '+string(W);
disp(str_1);

% Si el valor de la determinantes es diferente de 0 son son linealmente 
% independientes caso contrario son linealmente dependientes.
if W~=0
    disp('Las funciones son linealmente INDEPENDIENTES');
else
    disp('Las funciones son linealmente DEPENDIENTES');
end