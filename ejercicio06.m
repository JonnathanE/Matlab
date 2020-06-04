clear all
clc

% Ingreso valores para evaluar el polinomio
a = input('Ingrese Minimo (a): ');
b = input('Ingrese Maximo (b): ');
N = input('Ingrese Iteracciones (N): ');

% Se calcula h
h = (b-a)/N
% Primer
disp('===================================================')
disp('Primera F�rmula')

x = a:h:b;
y = ffuncion(x);
dy = fFirstDerivadaDF(@ffuncion,x,1);
x = x(:);
y = y(:);
dy = dy(:);
T = table(x,y,dy)

% Segundo
disp('===================================================')
disp('Segunda F�rmula')

x = a:h:b;
y = ffuncion(x);
dy = fSecondDerivadaDF(@ffuncion,x,1);
x = x(:);
y = y(:);
dy = dy(:);
T = table(x,y,dy)

% Tercero
disp('===================================================')
disp('Tercera F�rmula')

x = a:h:b;
y = ffuncion(x);
dy = fthirdDerivadaDF(@ffuncion,x,1);
x = x(:);
y = y(:);
dy = dy(:);
T = table(x,y,dy)

% Cuarto
disp('===================================================')
disp('Cuarata F�rmula')

x = a:h:b;
y = ffuncion(x);
dy = fFourthDerivadaDF(@ffuncion,x,1);
x = x(:);
y = y(:);
dy = dy(:);
T = table(x,y,dy)
