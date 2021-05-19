% AUTOR: Jonnathan Espinoza
clear all
clc
format long

% N funciones

disp('=== EJERCICIO RngeKutta4 de N funciones ===')

% INGRESO DE LOS DATOS

a = 0;
b = 1;
y0 = [0,1,2];
N = 10;


% OPERACIÓN
f = @f_funcionesRepaso % DECLARO MI FUNCIÓN PRIMA

[xe, ye] = f_eulerNEcuaciones(f,a, b, y0, N);
[xk, yk] = f_rk4ordenNEcuaciones(f,a, b, y0, N);

varNames = {'x','Euler', 'Runge_Kuta_4'};
T = table(xe, ye, yk, 'VariableNames', varNames)
