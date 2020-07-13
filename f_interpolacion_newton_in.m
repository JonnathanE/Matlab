function [res] = f_interpolacion_newton_in(x,y,xin,h)
% Método de INTERPOLACION DE NEWTON CON DIFERENCIAS FINITAS HACIA ATRAS
%
%   PARÁMETROS DE ENTRADA
%       (x)     -> Vector X 
%                    Ej: x = [1 1.67 2.33 3];
%       (y)     -> Vector Y 
%                   Ej: y = [1.99 1.76 1.69 1.63];
%       (xin)   -> el valore de X a encontrar
%       (h)     -> El incremento
%
%   PARÁMETROS DE SALIDA
%       [res]    -> Resultado de X

x_0 = x(end);
s = (xin-x_0)/h;
delta = y;

res = y(end);

for i = 1:length(y)-1

    for j = length(delta):-1:(1+i)
        delta(j) = delta(j) - delta(j-1);
    end
    
    if i == 1
        res = res + (delta(end)*s);
    else
        aux = 1;
        for k = 1:(i-1)
            aux = aux * (s + k);
        end
        res = res + (delta(end)*s*aux)/factorial(i);
    end
end

end

