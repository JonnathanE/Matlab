function [I] = fsimpsonTO(f,x,h)
% Esta funcion encuentra la Integral mediante la ecuación de SIMPSON 3/8:
%        I = 3h/8 * (f0 + 3f1 + 3f2 + ... + 3fN-1 + fN) + E
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
        sum = sum + ( 3*f(x(i)) );
    end
end
I = ( (3*h)/8 )*sum;

end

