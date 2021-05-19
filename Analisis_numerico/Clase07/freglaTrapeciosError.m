function [I,cont] = freglaTrapeciosError(f, a, b, N, err)
% La función ejecuta la REGLA DE LOS TRAPECIOS:
%       I = h/2 * (f0 + 2f1 + 2f2 + ... +2fN-1 + fN) + E
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
%   [I]     ->  valor de la integral
%   [cont]  ->  numero de iteraciones

cont = 0;
seguir = true;
while seguir
    h = (b-a)/N;
    x = a:h:b;
%     I = freglaTrapecios(f,x,h);
    % Regla de los trapeicos
    sum = 0;
    for i = 1:length(x)
        if i == 1 || i == length(x)
            sum = sum + f(x(i));
        else
            sum = sum + ( 2*f(x(i)) );
        end
    end
    I = (h/2)*sum;
    
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

