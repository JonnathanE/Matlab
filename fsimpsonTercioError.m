function [I, cont] = fsimpsonTercioError(f,a,b,N,err)
% La función ejecuta la REGLA DE SIMPSON 1/3:
%       I = h/3 * (f0 + 4f1 + 2f2 + 4f3 + 2f4 + ... +2fN-2 + 4fN-1 + fN) + E
%
% PARÁMETROS DE ENTRADA
%
%   (f)     ->  la función
%   (a)     ->  límite inferior del intervalo
%   (b)     ->  límite superior dle intervalo
%   (N)     ->  iteraciones
%   (err)   ->  error
%
% PARÁMETROS DE SALIDA
%   [I] -> valor de la integral

cont = 0;
seguir = true;
while seguir
    h = (b-a)/N;
    x = a:h:b;
    % Regla Simpson 1/3
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
    
    if cont ~= 0
        dif = auxI - I;
        if abs(dif) <= err
            seguir = false;            
        end
    end
    auxI = I;
    N = N * 2;
    cont = cont + 1;
end
%disp(cont)
end

