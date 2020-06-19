clear all
clc

% Autor: Jonnathan Damián Espinoza Erráez

% Ingreso valores para evaluar el polinomio
a = input('Ingrese Minimo (a): ');
b = input('Ingrese Maximo (b): ');
N = input('Ingrese Iteracciones (N): ');
% Calcular h
h = (b-a)/N;
x = a:h:b;

% Calculamos las segundas derivadas
Progresiva = fdfProgresivas(@ffuncion,x,h);
Centradas = fdfCentradas(@ffuncion,x,h);
Regresiva = fdfRegresivas(@ffuncion,x,h);

% Construccion de la tabla
x = x(:);
y = ffuncion(x);
y = y(:);
Progresiva = Progresiva(:);
Centradas = Centradas(:);
Regresiva = Regresiva(:);

T = table(x, y, Progresiva, Centradas, Regresiva)