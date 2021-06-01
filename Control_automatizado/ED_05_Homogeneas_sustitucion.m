% FECHA: 25 de Mayo 2021

% ECUACIONES DIFERENCIALES HOMOGENIAS
% SOLUCION POR SUSTITUCION

% ED: (x^2 - y^2)dx + xy dy = 0
% Pra resolver la expresamos en la forma y' + (x^2 - y^2)/(xy) = 0

clc, clear all;

syms x y v;

y=x*v
%e=subs(y, 'v', 'v(x)')
% Convertimos a ED de variables separables
%sy=subs(diff(e,x)+(x^2-y^2)/(x*y), 'y', y)  % sustituimos la variable 'y' por 'x*v'
%pretty(dsolve('v(x)+x*Dv-(v(^2*x^2-x^2)/(v*x^2) = 0','x'))
edh = (diff(y)+((x^2-y^2)/(x*y)))
pretty(dsolve('v(x)+x*Dv-(x^2*v(x)^2-x^2)/(x^2*v(x))','x'))

edh2 = (diff(y)+(x-y)/x)
pretty(dsolve('v(x)+x*Dv+(x-v(x)*x)/x','x'));
dsolve('v(x)+x*Dv+(x-v(x)*x)/x','x')
