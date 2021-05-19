function [res] = f_inter_newton02(x,y,xin)
% Método de INTERPOLACION DE NEWTON CON DIFERENCIAS FINITAS HACIA ADELANTE
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

distante = f_equisdistante_constante(x)

if distante
    h = x(2)-x(1)
    x_0 = x(1);
    s = (xin-x_0)/h;
    delta = y;

    res = y(1);

    for i = 1:length(y)-1
        for j = 1:length(delta)-i
            delta(j) = delta(j+1) - delta(j);
        end

        if i == 1
            res = res + (delta(1)*s);
        else
            aux = 1;
            for k = 1:(i-1)
                aux = aux * (s - k);
            end
            res = res + (delta(1)*s*aux)/factorial(i);
        end
    end
else
    disp('No es equisdistante')
end
end