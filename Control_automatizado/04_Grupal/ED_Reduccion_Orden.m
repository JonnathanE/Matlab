clc, clear all;

% Ejercicio 1
%   y''-6y+5y=0    y1=e^x
% https://youtu.be/PxAU1RR1cEU?list=PL9SnRnlzoyX20RgH2S-Ps60NzzO_1saTF
disp('Ejercicio 1')
syms x y P(x) C1 C2
P(x)= -6;
y1 = exp(x);
aux = -int(P,'x');
y2 = y1 * int( exp(aux)/y1.^2,'x');
sol = C1*y1 + C2*y2

% Ejercicio 2
%   x^(2)y''+xy'-4y=0   y1=x^2
% https://youtu.be/JU1buakJYmc?list=PL9SnRnlzoyX20RgH2S-Ps60NzzO_1saTF
disp('Ejercicio 2')
syms x y P(x) C1 C2
P(x)= x/x.^2;
y1 = x.^2
y2 = y1 * int( exp(-int(P,'x'))/y1.^2,'x');
sol = C1*y1 + C2*y2
