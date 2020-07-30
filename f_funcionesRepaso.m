function [dy] = f_funcionesRepaso(x,y)
%UNTITLED5 Summary of this function goes here
%   Ecuacion Diferencial
y1 = y*x;
y2 = 4*x*y;
y3 = 9*x*y;
dy = [y1; y2; y3];
end

