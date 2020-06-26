clear all
clc
format long

A = [5 2 -3; 2 10 -8; 3 8 13];
B = [1; 4; 7];

[x, cont] = fjacobi(A, B, 0.001)