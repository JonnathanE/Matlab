% AUTOR: Jonnathan Espinoza
clear all
clc
format long

% N funciones

disp('=== EJERCICIO RngeKutta4 de N funciones ===')

a = 0;
b = 1;
y0 = [0,1,2];
N = 10;

f = @f_funcionesRepaso % DECLARO MI FUNCIÓN PRIMA
% % freal = @ffuncion;
% y = f_RungeKutta4_N(f,a,b,[1,2,3],N);
% y1 = y(1,:);
% y2 = y(2,:);
% y3 = y(3,:);

% % yRK = f_rk4ordenNEcuaciones(f,a,b,[1,2,3],N)
% 
% T = table(yRK(:), y1(:), y2(:), y3(:) )

[xe, ye] = f_eulerNEcuaciones(f,a, b, y0, N);
[xk, yk] = f_rk4ordenNEcuaciones(f,a, b, y0, N);
T = table(xe, ye, yk)
