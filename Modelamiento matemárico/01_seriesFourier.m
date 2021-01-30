% SERIE DE FOURIER
clc;
clearvars;

syms n x;
disp('Conventional function');

f(x) = x; % function
Lmin = -pi; % inferior limit
Lmax = pi; % max limit
L = Lmax - Lmin; % period

[serie01] = seriesFourier(f, Lmin, Lmax, L, 10, true);

%define periodic function
% Lmin = -2;
% Lmax = 2;
% L = Lmax - Lmin; % period
% f(x) = x.^2-x+3;
% [serie02] = seriesFourier(f, Lmin, Lmax, L, 10, true);



