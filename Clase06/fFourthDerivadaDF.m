function [y] = fFourthDerivadaDF(f,x,h)
% Esta funcion encuentra la PRIMERA DERIVADA mediante la ecuación:
%       f'(x0) = (-f2+8f1-8f(i-1) +f(i-2) )/12h
% PARAMETROS DE ENTRADA
%       (f) = 3*x.^4+5*x.^3-3*x.^2+8*x-12
%       (x) = valores del eje x
%       (h) = numero de incremento
% PARAMETROS DE SALIDA
%       [y] = derivada de la funcion

for i = 1:(length(x))
    %disp(i)
    if i == 1
        
        aux01 = x(i)-h;
        aux02 = aux01-h;
        y(i) = ( -f(x(i+2)) + (8*f(x(i+1)))- (8*f(aux01)) + f(aux02) ) / (12*h);
        
    elseif i == 2
        
        y(i) = ( -f(x(i+2)) + (8*f(x(i+1)))- (8*f(x(i-1))) + f(aux01) ) / (12*h);
        
    elseif i == (length(x)) % el final
        aux01 = x(i)+h;
        aux02 = aux01+h;
        y(i) = ( -f(aux02) + (8*f(aux01))- (8*f(x(i-1))) + f(x(i-2)) ) / (12*h);
        
    elseif i == (length(x)-1) % el penultimo
        aux01 = x(i+1)+h;
        %aux02 = aux01+h;
        y(i) = ( -f(aux01) + (8*f(x(i+1)))- (8*f(x(i-1))) + f(x(i-2)) ) / (12*h);
    else
        y(i) = ( -f(x(i+2)) + (8*f(x(i+1)))- (8*f(x(i-1))) + f(x(i-2)) ) / (12*h);
    end
end
end

