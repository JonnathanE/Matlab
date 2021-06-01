% Resolucion de E.D. de Variables Separables

% FECHA: 21 de Mayo 2021

% E.D: y'=-2xy
% C.I: y(0)=1

clc, clear all;

syms x y c;

g = -2*x; h = 1/y;  % funciones de la forma de ED Separables
x0= 0; y0 = 2;      % valores iniciales
G = int(g);         % integramod las funciones
H = int(h);         % integramos las funciones

% Solucion General de ED
sol_general = solve(H-G-c, y)   % Resolver la funcion total despejando 'y'
% Solucion Particular de ED
%y = subs(sol_general, 'x', x0)  
c = solve(subs(sol_general, 'x', x0)-y0)    % Encontramos la constante 'c'
y = subs(sol_general, 'c', c)               % Remplazamos 'c' en la solucion general
% Graficamos la solucion ED
ezplot(y, [-1,1])
grid on

% https://la.mathworks.com/discovery/integral.html
