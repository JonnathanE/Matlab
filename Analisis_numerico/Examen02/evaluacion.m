% EXAMEN 2
% AUTOR: Jonnathan Espinoza
clear all
clc
format long

% N funciones
disp('=== EJERCICIO RngeKutta4 de N funciones ===')

% INGRESO DE LOS DATOS
a = 0;
b = 1;
y0 = [0 1 0 7 0];
N = 10;

% OPERACIÓN
f = @f_funcionesRepaso % DECLARO MI FUNCIÓN PRIMA

[xk, yk] = f_rk4ordenNEcuaciones(f,a, b, y0, N);

varNames = {'x', 'Runge_Kuta_4'};
T = table(xk, yk, 'VariableNames', varNames)
