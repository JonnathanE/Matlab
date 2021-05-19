% AUTOR: Jonnathan Espinoza
clear all
clc
format long
 
% METODO DE EULER
 
f = @ffuncion; % DECLARO MI FUNCIÓN

% a = input('Valor de a: '); % ingreso el valor de x inicial
% b = input('Valor de b: '); % ingreso el valor de x final
% yin = input('Valor de y: '); % ingreso el valor de y inicial
% N = input('Valor de N: '); % ingreso el valor de N

a = 1;
b = 2;
yin = 1;%3
N = 10;%30

% EJECUCIÓN DEL ALGORITMO
h = (b-a)/N;
x = a:h:b;

y(1) = yin;
for i = 1:length(x)-1
    y(i+1) = y(i) + h*f(x(i),y(i));
end
% x
% y
T = table(x(:),y(:),...
    'VariableNames',{'x','y'})
% plot(T.x, T.y) hold on
