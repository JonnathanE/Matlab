clear all
clc
format rat

A = [2,1,3; -1,2,4; 0,1,3];
B = [1,2; 2,4];
C = [1, 3; 2,4];
[A, det] = fgaussJordan(C)


