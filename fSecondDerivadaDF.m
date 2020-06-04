function [y] = fSecondDerivadaDF(f,x,h)
% Esta funcion encuentra la PRIMERA DERIVADA mediante la ecuación:
%       f'(x0) = (f1-f(i-1))/2h
% PARAMETROS DE ENTRADA
%       (f) = 3*x.^4+5*x.^3-3*x.^2+8*x-12
%       (x) = valores del eje x
%       (h) = numero de incremento
% PARAMETROS DE SALIDA
%       [y] = derivada de la funcion

for i = 1:(length(x))
    if i == 1
        aux01 = x(i)-h;
        y(i) = ( f(x(i+1))- f(aux01) )/ (2*h);
    elseif i == (length(x)) % el final
        aux01 = x(i) + 1;
        y(i) = ( f(aux01)-f(x(i-1)) )/ (2*h);
    else
        y(i) = ( f(x(i+1))-f(x(i-1)) ) / (2*h);
    end
end
end

