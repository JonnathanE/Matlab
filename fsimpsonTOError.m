function [I,cont] = fsimpsonTOError(f,a,b,N,err)
% La función ejecuta la REGLA DE SIMPSON 3/8:
%       I = 3h/8 * (f0 + 3f1 + 3f2 + ... + 3fN-1 + fN) + E
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
    % Regla Simpson 3/8
    sum = 0;
    for i = 1:length(x)
        if i == 0 || i == length(x)
            sum = sum + f(x(i));
        else
            sum = sum + ( 3 * f(x(i)) );
        end
    end
    I = ( (3*h)/8 ) * sum;
    
    if cont ~= 0
        dif = auxI - I;
%         disp(dif)
        if abs(dif) <= err || cont == 4
            seguir = false;            
        end
    end
    auxI = I;
    N = N * 2;
    cont = cont + 1;
end
%disp(cont)
end

