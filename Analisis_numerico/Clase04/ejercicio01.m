clear all
clc

disp('EJERCICIO 04')
% x = [-3,-2,0,1,2,4,6,7]
% y = [1,2,3,1,-1,-2,0,3]

% z = [-5,-4,-3,-2,-1,1,2,3,4,5,7,8,9]
% w = [4,1,-1,-2,-1,0,2,3,4,5,3,1,-2]

% a = [1,3,5,7,9]
% b = [10,142,586,1534,3178]

% Ingresar el grado
grado = input('Ingrese Grado: ');
disp('=====================')

% creo un arreglo para almacenar los coeficientes
coeficiente = 0;

% ingreso los coeficientes al arreglo
for i = 1:(grado+1)
    st = (strcat('Ingrese el valor X^',num2str(i-1),':'));
    coeficiente(i) = input(st);
end
disp('=====================')

% Presento el polinomio
showPolinomio(fliplr(coeficiente), grado)
disp('=====================')

% Ingreso valores para evaluar el polinomio
numMin = input('Ingrese Minimo: ');
numMax = input('Ingrese Maximo: ');
numIncremento = input('Ingrese Incremento: ');
disp('=====================')

% Evaluo el Polinomio
x = numMin:numIncremento:numMax; %Creo las variables X
y = polyval(fliplr(coeficiente), x); % Obtengo Y. Remplazo x en la funcion

% Presento la Tabla
X = reshape(x,[],1);
Y = reshape(y,[],1);
T = table(X,Y)
disp('=====================')

% Determino creciente/decreciente en los puntos en X
crecienteAndDecreciente(X,Y)
disp('=====================')

% Encontramos las raíces
raiz = raices(fliplr(coeficiente),x,y)



