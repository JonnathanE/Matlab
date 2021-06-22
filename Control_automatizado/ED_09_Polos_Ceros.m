% ENCONTRAR LOS POLOS Y CEROS
clc; clear all;

disp('Ejercicio 01')
% G(s) = (10s+2)/(10s^2 + 2s + 1)
numerador = [10 2];
denominador = [10 2 1];
G = tf(numerador, denominador)
z = zero(G)
p = pole(G)
pzmap(G)

disp('Ejercicio 02')
% G(s) = s(s-2)/(s+5)(s^2 + 6s + 10)
numerador = conv([1 0], [1 -2]);
denominador = conv([1 5], [1 6 10]);
G = tf(numerador, denominador)
z = zero(G)
p = pole(G)
pzmap(G)