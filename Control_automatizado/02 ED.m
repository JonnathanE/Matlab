% Script para resolver E.D
% Ejercicio 02:
% df/dx = f + sen(t)
% Condicion Inicial f(pi/2) = 0

clc, clear all;

ED = 'Df = f + sin(t)';
ci = 'f(pi/2) = 0';
f = dsolve(ED, ci, 't');
pretty(f)