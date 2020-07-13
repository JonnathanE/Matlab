function [respuesta] = f_encontrar_inter_newton(x,xin)
%Método para seleccionar el metodo entre:
%   INTERPOLACION DE NEWTON CON DIFERENCIAS FINITAS HACIA ADELANTE
%   INTERPOLACION DE NEWTON CON DIFERENCIAS FINITAS HACIA ATRAS
%
%   PARAMETROS DE SLIDA
%       1 ->    Hacia adelante
%       0 ->    Hacia atras

respuesta = true;
if mod(length(x),2) == 0
    suma = round(sum(x)/length(x));
    if  xin > x(suma) 
        respuesta = false;
    end
else
    suma = floor(sum(x)/length(x));
    if xin > x(suma) 
        respuesta = false;
    end
end
end

