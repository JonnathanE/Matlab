function [I] = freglaTrapecios(f,x,h)
% Esta funcion encuentra la Integral mediante la ecuación:
%        I = h/2 * (f0 + 2f1 + 2f2 + ... +2fN-1 + fN) + E
% PARAMETROS DE ENTRADA
%       (f) = 3*x.^4+5*x.^3-3*x.^2+8*x-12
%       (x) = valores del eje x
%       (h) = numero de incremento
% PARAMETROS DE SALIDA
%       [I] = integral de la funcion

sum = 0;
for i = 1:length(x)
    if i == 1 || i == length(x)
        sum = sum + f(x(i));
    else
        sum = sum + ( 2*f(x(i)) );
    end
end
I = (h/2)*sum;
end

