function [y,vt,M,r] = fcuadratica(a,b,c)
% Esta funcion calcula y grafica los puntos de una funcion cuadrática
% expresada de la forma y = ax^2 + bx + c
%
% [y] = fcuadratica(a,b,c)
%
% Donde:
% y = Puntos de la fucnion cuadratica
% a = coeficiente que acompaña ax^2
% b = coeficinete que acompaña bx
% c = coeficiente independiente

% Calcular Vertice
vt = -b/(2*a);

% Creo los puntos
x = vt-5:0.5:vt+0.5;

 % Ecuacion cuadratica
 y = a*x.^2 + b*x + c;
 
 % Grficar
 plot(x,y),grid
 hold on
 plot(vt, a*vt.^2+b*vt+c,'.k','MarkerSize',25)
 
 % Maximo o Minimo
 if a<0
     disp('Máximo')
     M = max(y);
 elseif a>0
     disp('Mínimo')
     M = min(y);
 else
     disp('Linea Recta')
     M = 0;
 end
% Raices
%r(1) = (-b+sqrt(b^2-4*a*c))/(2*a);
%r(2) = (-b-sqrt(b^2-4*a*c))/(2*a);
r = roots([a b c]);