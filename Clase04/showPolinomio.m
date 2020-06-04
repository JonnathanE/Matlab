function [] = showPolinomio(y, grado)
% Esta funcion develve un string del polinomio
% expresada de la forma y = ax^n + bx + c
%
% PARÁMETROS DE ENTRADA:
%
% (y) = polinomio(a,b,c)
% 
% Donde:
% a = coeficiente que acompaña ax^n
% b = coeficinete que acompaña bx
% c = coeficiente independiente

polinomio = '';
expo = grado;
for i = 1:(grado+1)
    if i == (grado+1)
        
        if y(i)>=0
            polinomio = strcat(polinomio,' + ', num2str(y(i)));
        else
            polinomio = strcat(polinomio,'  ',num2str(y(i)));
        end
        
    elseif i == (grado)
        
        if y(i)>=0
            polinomio = strcat(polinomio,' + ', num2str(y(i)), 'x');
        else
            polinomio = strcat(polinomio,'  ',num2str(y(i)), 'x');
        end
        
    else
        
        if y(i)>=0
            if i == 1
                polinomio = strcat(polinomio,'', num2str(y(i)), 'x^',num2str(expo) );
                expo = expo - 1;
            else
                polinomio = strcat(polinomio,' + ', num2str(y(i)), 'x^',num2str(expo) );
                expo = expo - 1;
            end
            
        else
            polinomio = strcat(polinomio,'  ',num2str(y(i)), 'x^',num2str(expo) );
            expo = expo - 1;
        end
        
    end
end
disp(polinomio)