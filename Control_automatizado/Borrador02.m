% TRANSFORMADA DE LAPLACE PIMER M�TODO DE RECORRIDO
% FECHA: 08 de Junio 2021

clc, clear all;
%       f(t) = e^-4t cos(2t)
syms f(t) t s;                  % declaramos las variables simb�licas
f(t) = exp(-4*t)*cos(2*t);      % expresamos la funci�n definida en t
F(s) = laplace(f, t, s)         % calculamos la funci�n transformada definida en s

% Ejercicio 01: 
%   f(t) = e^-4t cos(2t)
syms f(t) t s;                  % declaramos las variables simb�licas
f(t) = cos(2*t);                % expresamos la funci�n definida en t
F(s) = laplace(f, t, s)         % calculamos la funci�n transformada definida en s
F(s) = subs(F(s), s, s+4)       % sustituimos s -> s-(-4)