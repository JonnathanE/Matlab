function [] = crecienteAndDecreciente(x,y)
% Esta funcion encuentra los rangos en X si es creciente o decreciente
%
% PARÁMETROS DE ENTRADA:
%
% (x) = valores de X
% (y) = valores de Y
% 

inicioX = 0;
finY = 0;
flag = false;
contup = 0;
contdown = 0;

for i = 1:length(y)
    %disp(strcat('I = ', num2str(i)))
    if i == 1
        finY = y(i);
        inicioX = x(i);
    end
    %disp(strcat('FinY = ', num2str(finY), ' Y= ', num2str(y(i))))
    if y(i)>finY % CRECIENTE
        
        contup = contup + 1;
        finY = y(i);
        
        if contdown>0
            disp(strcat('DECRECIENTE desde X: ',num2str(inicioX),' Hasta: ',num2str(x(i-1)) ))
            inicioX = x(i-1);
            contdown = 0;
        end
        
    elseif y(i)<finY % DECRECIENTE
        
        contdown = contdown + 1;
        finY = y(i);
        
        if contup>0
            disp(strcat('CRECIENTE desde X: ',num2str(inicioX),' Hasta: ',num2str(x(i-1)) ))
            inicioX = x(i-1);
            contup = 0;
        end
        
    end
    
    if i == length(y) % FINAL
        if contup>0 && contdown == 0
            disp(strcat('CRECIENTE desde X: ',num2str(inicioX),' Hasta: ',num2str(x(i))))
        else
            disp(strcat('DECRECIENTE desde X: ',num2str(inicioX),' Hasta: ',num2str(x(i))))
        end
    end
end