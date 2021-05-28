% SCRIPT EN MATLAB DE RESOLUCION DE E.D EXACTA
%
%   Autor: Jonnathan Damián Espinoza Erráez
%   Fecha: 24 de mayo de 2021
%
%   EJERCICIO 01: 
%   (2x+y)dx + (x-3y)dy = 0

clc, clear all;
syms x y c;

% PASO 1: Definimos la funciones M(x,y)dx and N(x,y)dy
M = 2*x+y;
N = x-3*y;
% Determinamos si es exacta
exacta = diff(M,'y') - diff(N,'x');

if exacta ~= 0
    disp('La E.D. No es exacta');
else
    disp('La E.D. es exacta');
    % PASO 2: Integramos para obtener f(x,y)
    f1 = int(M,'x'); % integramos M(x,y)dx respecto a x
    fy = diff(f1,'y'); % derivamos f(x,y) respecto a 'y'
    Gy = N - fy; % obtenemos g'(y)
    G = int(Gy, 'y'); % integramos g'(y)
    f = f1 + G; % tenemos f(x,y)
    
    % PASO 3: Igualamos f(x,y) = C
    f = f - c
end

