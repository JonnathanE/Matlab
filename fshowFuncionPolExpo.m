function [] = fshowFuncionPolExpo(Polinomio,Exponente)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
res = '';
for i = 1:length(Polinomio)
    if Polinomio(i) ~= 0
        if Exponente(i) == 0
            
            if Polinomio(i) > 0
                res = strcat(res,' + ', num2str(Polinomio(i)) );
            else
                res = strcat(res,' ', num2str(Polinomio(i)) );
            end
            
        elseif Exponente(i) == 1
            
            if Polinomio(i) > 0
                res = strcat(res,' + ', num2str(Polinomio(i)),'X' );
            else
                res = strcat(res,' ', num2str(Polinomio(i)),'X' );
            end
        elseif i == 1
            if Polinomio(i) > 0
                res = strcat(res,' ', num2str(Polinomio(i)),'X^',num2str(Exponente(i)) );
            else
                res = strcat(res,' ', num2str(Polinomio(i)),'X^',num2str(Exponente(i)) );
            end
        else
            
            if Polinomio(i) > 0
                res = strcat(res,' + ', num2str(Polinomio(i)),'X^',num2str(Exponente(i)) );
            else
                res = strcat(res,' ', num2str(Polinomio(i)),'X^',num2str(Exponente(i)) );
            end
            
        end
        
    end
end
disp(res)
end

