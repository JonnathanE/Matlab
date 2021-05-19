function [xr] = raices(f,x,y)
% Esta funcion encuentra las raices de un polinomio
% (Este metodo se complementa con el metodo de la biseccion)
%
% Este metodo busca si existe raices,
% Se comara mediante:
% y(1)*y(2) <= 0
% si el producto es negativo, significa que en ese intervalo existe una
% raiz. En donde y(1)=inferior and y(2) superior. Se llama al metodo de la
% biseccion
%
% PARÁMETROS DE ENTRADA
%
% *(f) = polinomio(a,b,c)
%
% Donde:
% a = coeficiente que acompaña ax^2
% b = coeficinete que acompaña bx
% c = coeficiente independiente
%
% *(x) = valores de X
% *(y) = valores de Y
%
% PARÁMETROS DE SALIDA
%
% [xr] = devuelve la raiz

cont = 0;
k = 1;
xr = 0;
for i = 2:length(y)
    
    cont = cont + 1;
    %disp(strcat('***',num2str(y(cont)),' ## ', num2str(y(i)) ))
    
    % Multiplica y(i) por y(i+1). Si el producto es negativo, significa que
    % en ese intervalo puede haber una raíz
    
    mul = y(cont)*y(i);
    
    if mul <= 0 && sign(y(cont))~=sign(y(i))
        
        %disp(strcat('Intervalo en X: ',num2str(x(cont)),' , ', num2str(x(i)) ))
        
        % Aplicamos el metodo de la biseccion en el intervalo dado
        % se envia la funcion, numero inferioro del intervalo (X) y el
        % numero superior del intervalo (x), la tolerancia y las veces de
        % iteracciones
        xr(k) = biseccion(f,x(cont),x(i),10^-5,10);
        k = k+1;
        
    end
end
end

