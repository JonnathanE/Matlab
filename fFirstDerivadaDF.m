function [y] = fFirstDerivadaDF(f,x,h)
% Esta funcion encuentra la PRIMERA DERIVADA mediante la ecuación:
%       f'(x0) = (f1-f0)/h
% PARAMETROS DE ENTRADA
%       (f) = 3*x.^4+5*x.^3-3*x.^2+8*x-12
%       (x) = valores del eje x
%       (h) = numero de incremento
% PARAMETROS DE SALIDA
%       [y] = derivada de la funcion

for i = 1:(length(x))
    if i ~= (length(x))
        y(i) = (f(x(i+1))-f(x(i)))/h;
    else
        aux = ffuncion(x(i)+h);
        y(i) = (aux-f(x(i)))/h;
    end
end
end

