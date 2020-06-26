function [x, cont] = f_gaussSeidel(A, b, err)
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

[numFil, numCol] = size(A);
[filaB, colB] = size(b);

if numFil == numCol && filaB == numFil% si la matriz 'A' es cuadrática
    
    x = zeros(numFil,1);
    cont = 0;
    seguir = true;
    
    while seguir && cont <= 156
        
        xerr = x;
        for i = 1:numFil
            suma = 0;
            for j = 1:numCol
                if i ~= j
                    suma = suma + (-1)*A(i,j)*x(j,1);
                end
            end
            suma = suma + b(i);
            x(i,1) = suma/A(i,i);
        end
        
        cont = cont + 1;
        
        % Verificamos el error
        for i = 1:length(x)
            resErr = abs(x(i)-xerr(i));
            if resErr <= err
                seguir = false;
            end
        end
        
    end
    
else
    disp('Error:')
    disp('La matriz no es cuadrática o la matriz b no posee todos los resultados')
    disp('Recuerde que los dos primeros parámetros deben ser matrices')
    disp(' Ej:')
    disp('A = [9 2 -1; 7 8 5; 3 4 -10]')
    disp('b = [-2; 3; 6]')
end
end

