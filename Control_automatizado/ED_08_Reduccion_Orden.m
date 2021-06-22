% EJERCICIOS DE PROGRAMACI�N - SCRIPTS EN MATLAB PARA RESOLVER E.D
 
% Autores: Camila Cueva, Jonnathan Espinoza y Edgar S�nchez
% Fecha: 03 de junio de 2021

% EJERCICIO 02
% Realizar un script en Matlab que me permita resolver la siguiente ecuaci�n diferencial
% lineal homog�nea de segundo orden: x^2*y'' + xy' - 4y =0 , sabiendo de que una soluci�n
% es y1 = x^2, encontrar la segunda soluci�n linealmente independiente usando reducci�n
% de orden y expresar la soluci�n general de esta ecuaci�n diferencial.

%   La E.D debe estar en la siguiente forma:
%       y'' + P(x)y' + q(x)y = 0

clc, clear all;

syms x y P(x) C1 C2;

P(x)= x/x.^2; % definimos la funci�n P(x), se divide por x^2 para que quede en la forma: y'' + P(x)y' + q(x)y = 0
y1 = x.^2; % definimos la primera soluci�n y1 = x^2
y2 = y1 * int( exp(-int(P,'x'))/y1.^2,'x'); % aplicaci�n de la f�rmula de Reducci�n de Orden
y = C1*y1 + C2*y2; % construcci�n de la soluci�n general, se agrega las variables C1 y C2

% Presentar soluciones
disp('Segunda soluci�n linealmente independiente');
y2
disp('Soluci�n General de la E.D.');
y