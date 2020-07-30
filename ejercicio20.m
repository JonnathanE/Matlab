% AUTOR: Jonnathan Espinoza
clear all
clc
format long

% N funciones

disp('=== EJERCICIO RngeKutta4 de N funciones ===')

a = 0;
b = 1;
yin = 1;
N = 10;

f = @f_funcionesRepaso % DECLARO MI FUNCIÓN PRIMA
freal = @ffuncion;

yRK = f_Runge_kutta_4(freal,a,b,yin,N);

y = f_RungeKutta4_N(f,a,b,[1,2,3],N);
y1 = y(1,:);
y2 = y(2,:);
y3 = y(3,:);

T = table(yRK(:), y1(:), y2(:), y3(:) )
% C = cell(3)
% A{3} = []


