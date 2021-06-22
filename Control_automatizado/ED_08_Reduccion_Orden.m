% EJERCICIOS DE PROGRAMACIÓN - SCRIPTS EN MATLAB PARA RESOLVER E.D
 
% Autores: Camila Cueva, Jonnathan Espinoza y Edgar Sánchez
% Fecha: 03 de junio de 2021

% EJERCICIO 02
% Realizar un script en Matlab que me permita resolver la siguiente ecuación diferencial
% lineal homogénea de segundo orden: x^2*y'' + xy' - 4y =0 , sabiendo de que una solución
% es y1 = x^2, encontrar la segunda solución linealmente independiente usando reducción
% de orden y expresar la solución general de esta ecuación diferencial.

%   La E.D debe estar en la siguiente forma:
%       y'' + P(x)y' + q(x)y = 0

clc, clear all;

syms x y P(x) C1 C2;

P(x)= x/x.^2; % definimos la función P(x), se divide por x^2 para que quede en la forma: y'' + P(x)y' + q(x)y = 0
y1 = x.^2; % definimos la primera solución y1 = x^2
y2 = y1 * int( exp(-int(P,'x'))/y1.^2,'x'); % aplicación de la fórmula de Reducción de Orden
y = C1*y1 + C2*y2; % construcción de la solución general, se agrega las variables C1 y C2

% Presentar soluciones
disp('Segunda solución linealmente independiente');
y2
disp('Solución General de la E.D.');
y