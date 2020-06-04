function [] = fderivada(f,g)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

derivada = 0;
exponente = 0;
cont = 1;
for i = (g+1):-1:1
    aux = f(cont)*(i-1);
    if aux ~= 0 && (i-2)>= 0
        derivada(cont) = aux;
        exponente(cont) = i-2;
    end
    cont = cont + 1;
end
% disp(derivada)
% disp(exponente)
disp('LA DERIVADA ES:')
fshowFuncionPolExpo(derivada,exponente)

prompt = '¿Desea derivar? Y/N [Y]: ';
str = input(prompt,'s');
if isempty(str)
    str = 'Y';
end
str = upper(str);

if strcmp(str,'Y')
    
    while strcmp(str,'Y') && exponente(1) > 0
        
        for i = 1:length(derivada)
            
            if derivada(i) ~= 0
                
                aux = derivada(i) * exponente(i);
                derivada(i) = aux;
                exponente(i) = exponente(i) - 1;
                
            end
        end
        
        fshowFuncionPolExpo(derivada,exponente)

        if exponente(1) > 0
            prompt = '¿Desea derivar? Y/N [Y]: ';
            str = input(prompt,'s');
            if isempty(str)
                str = 'Y';
            end
            str = upper(str);
        end
    end
end

end

