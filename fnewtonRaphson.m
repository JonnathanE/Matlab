function [X, cont] = fnewtonRaphson(f,fd,x,err)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
cont = 1;
X(cont) = x - f(x)/fd(x);
aux = X(1);
while abs(X(cont)- aux) >= err || cont == 1
    aux = X(cont);
    cont = cont + 1;
    X(cont) = X(cont-1) - f(X(cont-1)) / fd(X(cont-1));
end
end

