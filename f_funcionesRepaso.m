function [dy] = f_funcionesRepaso(x,y)
%UNTITLED5 Summary of this function goes here
%   Ecuacion Diferencial
dy = [y(2); y(3) ; -2*y(3)+y(2)-3*y(1)+2*x];
end

