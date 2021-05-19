function [Ainv, det] = fgaussJordan(A)
% Método de Gauss Jordan para necontrar la matriz identidad y la
% determinante
%
% Acerca de este método
%
% Para calcular un determinante se necesita seguir los siguientes pasos:
% - Ingrese la matriz (debe ser cuadrada).
% - Reduzca esta matriz a forma escalonada reducida usando operaciones elementales de fila de forma que todos los elementos debajo de la diagonal sean cero.
% - Multiplicando los elementos de la diagonal principal el determinante es calculado.
%
% PARAMETRO DE ENTRADA
%   
%   (A) -> Matriz cuadrada
%
% PARAMETROS DE SALIDA
%
%   [Ainv] -> Matriz inversa
%   [det]  -> Determinante

[numFil, numCol] = size(A);

if numFil == numCol % si la matriz 'A' es cuadrática
    
    Ainv = eye(numFil); % Matriz Inverza, lo inicio como una matriz identidad
    Aident = eye(numFil); % Matriz Identidad -> sirve para comparar
    piv = 1; % pivote
    det = 1; % determinanate
    ejecutar = true;

    while ejecutar
        
        contFil = 0;
        numPiv = A(piv,piv);
        for i = 1:numCol
            A(piv, i) = A(piv, i)/numPiv;
            Ainv(piv, i) = Ainv(piv, i)/numPiv;
        end
        det = det * numPiv;
        contFil = contFil + 1;
        
        fila = 1;
        while contFil ~=  numFil
            
            if fila ~= piv
                constante = A(fila, piv);
                constante = constante * (-1); % cambio de signo
                
                for i = 1:numCol
                    A(fila, i) = A(fila, i) + (constante*A(piv, i));
                    Ainv(fila, i) = Ainv(fila, i) + (constante*Ainv(piv, i));
                end
                contFil = contFil + 1;
            end
            fila = fila + 1;
            
        end
        
        piv = piv + 1;

        if A == Aident
            ejecutar = false;
        elseif piv > numFil
            ejecutar = false;
            if det == 0
                disp('No existe inversa. La determinante es cero')
            end
        end
    end
    
else
    disp('La matriz no es cuadrática')
end

end

