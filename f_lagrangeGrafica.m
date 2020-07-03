function [resultado] = f_lagrangeGrafica(x, y, valor,graficar)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if length(x) == length(y)
    
    if graficar
    
        resultado = f_lagrange(x, y, valor);
        
        aux = [x valor];
        X =  min(aux):1:max(aux);
        for i = 1:length(X)
            Y(i) = f_lagrange(x, y, X(i));
        end
        plot(X,Y,...
        'Color',[0,0.7,0.9],...
        'LineWidth',2,...
        'MarkerSize',10,...
        'MarkerEdgeColor',[0.5,0.5,0.5])
    
    else
        resultado = f_lagrange(x, y, valor);
    end
else
    disp('Error')
    disp('La dimensión de  los vectores X and Y no son iguales')
end
end

