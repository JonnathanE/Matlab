x = input('Ingrese el grado del polinomio');
vector = 0:x;
for aux = 0:x
    cadena = strcat('Ingrese un valor para X^',int2str(aux));
    variable = input(cadena);
    vector(aux+1)=variable;
end
strpolinomio = '';
for aux = 1:length(vector)
    valor = vector(aux);
    if aux-1==0
        if  valor>=0
            strpolinomio = strcat('+',int2str(valor),strpolinomio);
        else
            strpolinomio = strcat(int2str(valor), strpolinomio);
        end
    else
        if valor>=0 && aux~=length(vector)
            strpolinomio = strcat('+', int2str(valor),'X^',int2str(aux-1), strpolinomio);
        else
            strpolinomio = strcat(int2str(valor),'X^',int2str(aux-1), strpolinomio);
        end
    end
end
disp(strpolinomio);

inicioRango  = input('Ingrese el valor INICIAL del rango');
finRango  = input('Ingrese el valor FINAL del rango');
intervalo  = input('Ingrese el intervalo');

arregloValoresX = inicioRango:intervalo:finRango;
arregloValoresY = 1:length(arregloValoresX);

for aux2 = 1:length(arregloValoresX)
    valorX = arregloValoresX(aux2);
    intResultado = 0;
    for aux = 1:length(vector)
        valor = vector(aux);
        if aux-1==0
            intResultado = valor;
        else
            if valor>=0
                intResultado = intResultado+(valor*(valorX^(aux-1)));
            else
                intResultado = intResultado+(valor*(valorX^(aux-1)));
            end
        end
    end
    arregloValoresY(aux2)=intResultado;
end
disp(arregloValoresX);
disp(arregloValoresY);

p = plot(arregloValoresX,arregloValoresY);
p.LineWidth=2;
p.Marker="*";

for i=1:length(arregloValoresY)
    valoresX = arregloValoresX(i);
    valoresY = arregloValoresY(i);
    if i==1
        inicioY = valoresY;
    end
    auxY2=0;
    auxY=0;
    try
        %Creciente
        if valoresX < arregloValoresX(i+1) && valoresY<arregloValoresY(i+1)
            if inicioY > arregloValoresY(i+1)&&~isempty(arregloValoresY(i+1))
                disp(strcat('DECRECIENTE desde X: ', int2str(inicioY), ' Hasta: ',int2str(valoresY)));
                inicioY=valoresY;
            end
        end
        %decreciente
        if valoresX < arregloValoresX(i+1) && valoresY>arregloValoresY(i+1)
            if inicioY < arregloValoresY(i+1)
                disp(strcat('CRECIENTE desde X: ',int2str(inicioY),' Hasta: ',int2str(valoresY)));
                inicioY=valoresY;
            end
        end
    catch
        if valoresY>inicioY
            disp(strcat('CRECIENTE desde X: ', int2str(inicioY), ' Hasta: ',int2str(valoresY)));     
        end
        if valoresY<inicioY
            disp(strcat('DECRECIENTE desde X: ',int2str(inicioY),' Hasta: ',int2str(valoresY)));        
        end
    end
    
end