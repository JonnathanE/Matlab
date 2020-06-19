function [I] = fsimpsonTercio(f, x, h)
% La funci�n ejecuta la REGLA DE LOS TRAPECIOS:
%       I = h/2 * (f0 + 2f1 + 2f2 + ... +2fN-1 + fN) + E
%
% PAR�METROS DE ENTRADA
%
%   (f)     ->  la funci�n
%   (x)     ->  valores del eje X
%   (h)     ->  
%
% PAR�METROS DE SALIDA
%   [I] -> valor de la integral

sum = 0;
for i = 1:length(x)
    if i == 0 || i == length(x)
        sum = sum + f(x(i));
    elseif mod(i,2)==0
        sum = sum + ( 4 * f(x(i)) );
    else
        sum = sum + ( 2 * f(x(i)) );
    end
end
I = (h/3) * sum;
end

