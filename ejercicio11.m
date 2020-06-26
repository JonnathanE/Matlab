clear all
clc

% 3 X 3
A = [9 2 -1; 7 8 5; 3 4 -10];
a = [-2; 3; 6];

% 2 X 2
D = [5 2; 1 -4];
d = [1; 0];

% 4 X 4
E = [8 -3 1 -1; -1 20 -3 8; 1 1 3 -1; 6 -4 11 15];
e = [20; 3; 3; 9];

disp('*** MATRIZ 2X2')
[x, cont] = f_gaussSeidel(D, d, 0.00001)

disp('*** MATRIZ 3X3')
[x, cont] = f_gaussSeidel(A, a, 0.00001)

disp('*** MATRIZ 4X4')
[x, cont] = f_gaussSeidel(E, e, 0.00001)
