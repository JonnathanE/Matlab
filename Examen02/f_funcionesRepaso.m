function [dy] = f_funcionesRepaso(x,y)
%UNTITLED5 Summary of this function goes here
%   Ecuacion Diferencial

dy = [y(2); y(3); y(4); y(5); 2*y(5)-14*y(4)+3*y(3)-8*y(2)+y(1)+x];
end

