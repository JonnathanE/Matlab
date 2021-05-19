function [xk,cont] = fjacobi(A, b, err)
% METODO para resover SISTEMAS DE ECUACIONES LINEALES
%
% PARÁMETROS DE ENTRADA
%
%   (A) -> Matriz de los coeficientes de las variables
%   (b) -> Matriz con los valores de los resultados
%   (err) -> error
%
% PARÁMETROS DE SALIDA
%
%   [xk] -> Resultado de las incognitas
%   [cont] -> veces que se repite el algoritmo (156)

D = diag(diag(A));
L = tril(A,-1);
U = triu(A,+1);
xk = zeros(length(A),1);
cont = 0;
seguir = true;
while seguir
    aux = xk(1);
    xk = -D*(L+U)*xk + (D*b);
    cont = cont + 1;
    dif = aux- xk(1);

    if abs(dif) <= err
        seguir = false;
    end

    if cont >= 156
        seguir = false;
    end
end
end

