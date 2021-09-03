% SISTEMAS DE SEGUNDO ORDEN
clc; clear all;
% Ejercicio 1
% G1 = tf([1],[1 3 2])
% z = zero(G1)
% p = pole(G1)
% pzmap(G1)
% %step (G1)
%zplane(z,p)
%grid on

% G2 = tf([6],[1 4 4])
% z = zero(G2)
% P = pole(G2)
% pzmap(G2)
% step (G2)

G3 = tf([10],[1 2 5])
z = zero(G3)
P = pole(G3)
pzmap(G3)
step (G3)

% http://www.isa.uniovi.es/~alonsog/Regulacion/PL%2007%20Introduccion%20a%20MATLAB.pdf
% https://www.youtube.com/watch?v=HL195BqGpyc
% http://isa.uniovi.es/docencia/raeuitig/matlabysimulink.pdf