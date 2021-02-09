%SERIE DE FOURIER
clc;
clearvars;

syms n x;

disp('Function by tranches');

disp('Ejer 2.1');
% f1 = 1; % declare the first function
% f2 = 2; % I declare the second function
% f(x) = piecewise(-3<=x<0, f1, 0<=x<=3, f2);
% Lmin = -3; % Lower limit
% Lmax = 3; % Upper limit
% L = Lmax - Lmin; % Period
% [serie03, ao, an, bn] = seriesFourier(f, Lmin, Lmax, L, 50, true); % call the function
% [serie03] = animateFourier(f, Lmin, Lmax, L, 50, true);

disp('Ejer 2.2');
disp('TRIANGULO')
f1 = x; % declare the first function
f2 = 2 - x; % I declare the second function
f(x) = piecewise(0<=x<1, f1, 1<x<=2, f2);
Lmin = 0; % Lower limit
Lmax = 2; % Upper limit
L = Lmax - Lmin; % Period
[serie03, ao, an, bn] = seriesFourier(f, Lmin, Lmax, L, 1, true); % call the function
[serie03] = animateFourier(f, Lmin, Lmax, L, 1, true);

%disp('Conventional function');

%disp('Ejer 1.1');
% f(x) = x; % function
% Lmin = -pi; % inferior limit
% Lmax = pi; % max limit
% L = Lmax - Lmin; % period
% [serie01] = seriesFourier(f, Lmin, Lmax, L, 50, true)

%disp('Ejer 1.2');
% f(x) = x.^2-x+3;
% Lmin = -2;
% Lmax = 2;
% L = Lmax - Lmin; % period
% [serie02] = seriesFourier(f, Lmin, Lmax, L, 10, true)






