% Autor: Jonnathan Damián Espinoza
clear all
clc
syms xin

funcion = exp(xin); % declaro mi funcion

xin = 0; % x inicial

x = input('Valor de x: '); % ingreso el valor que deseo calcular
n = input('Valor de n: '); % ingreso el numero de iteracciones

y = eval(funcion); % evaluo i=0

for i=1:n
   y = y + (eval(diff(funcion,i))/factorial(i))*(x-xin)^i;
end
y