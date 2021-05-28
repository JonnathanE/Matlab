% Ejercicio
%   (2x+y)dx + (x-3y)dy = 0
% https://youtu.be/iFFtd71Godk

clc, clear all;
syms x y;
% definimos mis ED
P = 2*x+y;
Q = x-3*y;
% Determinamos si es exacta por la condición de oiler
teo2 = diff(P,'y') - diff(Q,'x');

if teo2 ~= 0
    disp('La E.D. No es exacta');
else
    disp('La E.D. es exacta');
    F1 = int(P,'x');
    derf = Q - diff(F1,'y')
    f = int(derf, 'y')
    F = F1 + f
    % graficamos
    [x,y] = meshgrid(0:0.1:3);
    z = x.^2 + y.*x-3/2*y.^2;
    contour(x,y,z,15)
end

