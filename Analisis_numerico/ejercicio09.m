clear all
clc
format rat

A = [2,1,3; -1,2,4; 0,1,3];
B = [1,2; 2,4];
C = [1, 3; 2,4];
D = [5	2	8	12	8; 4	7	2	78	4; 2	4	5	7	5; 2	1	9	4	8; 7	5	1	6	9
];
% Calculamos la inversa
[A, det] = fgaussJordan(A);
A
det


