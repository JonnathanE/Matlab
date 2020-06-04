function [y] = fthirdDerivadaDF(f,x,h)
% Esta funcion encuentra la PRIMERA DERIVADA mediante la ecuación:
%       f'(x0) = (-f2+4f1-3f0)/h
% PARAMETROS DE ENTRADA
%       (f) = 3*x.^4+5*x.^3-3*x.^2+8*x-12
%       (x) = valores del eje x
%       (h) = numero de incremento
% PARAMETROS DE SALIDA
%       [y] = derivada de la funcion

for i = 1:(length(x))
    if i == (length(x)-1) % Penultimo
        aux01 = x(i+1) + 1;
        y(i) = ( -f(aux01) + (4*f(x(i+1)) ) - (3*f(x(i)) ) )/ (2*h);
    elseif i == (length(x)) % el final
        aux02 = aux01 + h;
        y(i) = ( -f(aux02) + (4*f(aux01) ) - (3*f(x(i)) ) )/ (2*h);
    else
         y(i) = ( -f(x(i+2)) + (4*f(x(i+1)) ) - (3*f(x(i)) ) )/ (2*h);
    end
end
end

