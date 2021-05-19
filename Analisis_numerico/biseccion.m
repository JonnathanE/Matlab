function [xr] = biseccion(f,xI,xD,t,max)
% Esta funcion busca la raiz en el intervalo dado mediante el metodo de la
% biseccion
%
% PAR�METROS DE ENTRADA
%
% *(f) = polinomio(a,b,c)
%
% Donde:
% a = coeficiente que acompa�a ax^2
% b = coeficinete que acompa�a bx
% c = coeficiente independiente
%
% En el intervalo dado:
% *(xI) = n�mero Inferior
% *(xD) = n�mero Superior
%
% *(t) = tolerancia o limite al cual se va dividir al intervalo
% *(max) = n�mero m�ximo de iteraciones si en el caso de no encotrar la
%           raiz
%
% PAR�METROS DE SALIDA
%
% [xr] = devuelve la raiz

% Comprobamos si se corta en los intervalos xI and xD
if polyval(f, xI)==0
    xr = xI; 
elseif polyval(f, xD)==0
    xr = xD;
else
    % BISECCION
    if (polyval(f, xI) * polyval(f, xD))<0 % Comprobamos si hay biseccion
        
        xM = (xI+xD)/2; % Dividimos el intervalo en la mitad
        contador = 0;
        
        while abs(polyval(f, xM))>t && contador<max
            
            xM = (xI+xD)/2; % Dividimos el intervalo en la mitad
            
            if polyval(f, xM) == 0
                
                xr = xM;
                
            else
                
                if (polyval(f, xI) * polyval(f, xM))<0
                    xD = xM;
                else %(polyval(f, xM) * polyval(f, xD))<0
                    xI = xM;
                end
                
            end
            contador = contador+1;
        end
        xr = xM;
    else
        fprintf('Cambiar Intervalo');
        xr = 'Intervalo Malo';
    end
end

end

