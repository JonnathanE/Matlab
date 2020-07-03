function [resultado] = f_lagrange(x,y,valor)
% Método de GAUSS SEIDEL para resolver un Sistema de Ecuaciones Lineales a
% través de matrices.
%
%   PARÁMETROS DE ENTRADA
%       (A) -> Matriz de los coeficientes de las variables, 
%               debe contar on la diagonal dominante 
%               Ej: [9 2 -1; 7 8 5; 3 4 -10]
%       (b) -> Matriz con los valores de los resultados 
%               Ej: [-2; 3; 6]
%       (err) -> error
%
%   PARÁMETROS DE SALIDA
%       [x]    -> Resultado de las incognitas
%       [cont]  -> veces que se repite el algoritmo (156)
if length(x) == length(y)
    for i = 1:length(valor)
        operador = 0;
        for j = 1:length(x)
            numerador = 1;
            denominador = 1;
            for k = 1:length(x)
                if j ~= k
                    numerador = numerador * (valor(i)-x(k));
                    denominador = denominador * (x(j)-x(k));
                end
            end
            operador = operador + (numerador/denominador) * y(j);
        end
        resultado(i) = operador;
    end
else
    disp('Error')
    disp('La dimensión de  los vectores X and Y no son iguales')
end
end

