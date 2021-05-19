clear all
clc

x = [1 1.5 2.33 3];
% x = [1.99 1.76 1.69 1.63];
% x = [2 2.8 3.6 4.4 5.2];

res = f_equisdistante_constante(x)

xin = 4;
res2 = f_encontrar_inter_newton(x,xin)

