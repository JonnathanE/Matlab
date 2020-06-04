clear all
clc

disp('EJERCICIO 05')

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

fderivada(fliplr(coeficiente), grado)
