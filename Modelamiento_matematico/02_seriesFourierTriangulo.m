%SERIE DE FOURIER
clc;
clearvars;

syms n x;

disp('Ejer 2.2');
disp('TRIANGULO')
f1 = x; % declare the first function
f2 = 2 - x; % I declare the second function
f(x) = piecewise(0<=x<1, f1, 1<x<=2, f2);
Lmin = 0; % Lower limit
Lmax = 2; % Upper limit
L = Lmax - Lmin; % Period
[serie03, ao, an, bn] = seriesFourier(f, Lmin, Lmax, L, 10, true) % call the function
[serie03] = animateFourier(f, Lmin, Lmax, L, 10, true);