% AUTOR: Jonnathan Espinoza
clear all
clc
format long
 
% METODO DE EULER and Heun

%===================================================================
%===================================================================
% EJERCICIO 1
disp('=== EJERCICIO ===')
% ==================================================================
%===================================================================
 
f = @ffuncion; % DECLARO MI FUNCIÓN PRIMA

a = input('Valor de a: '); % ingreso el valor de x inicial
b = input('Valor de b: '); % ingreso el valor de x final
yin = input('Valor de y: '); % ingreso el valor de y inicial
N = input('Valor de N: '); % ingreso el valor de N

% a = 0;
% b = 2;
% yin = 2;
% N = 30;


[yE, x] = f_Euler(f,a,b,yin,N);

yH = f_Heun(f,a,b,yin,N);

% T = table(x(:),yE(:),yH(:),...
%     'VariableNames',{'x','Euler','Heun'})
% plot(T.x, T.Euler, T.x, T.Heun)


f_original = @f_funcion; % FUNCION EXACTA
h = (b-a)/N;
x = a:h:b;

for i = 1:length(x)
    y(i) = f_original(x(i));
    errEuler(i) = abs(y(i)-yE(i));
    errHeun(i) = abs(y(i)-yH(i));
end

T = table(x(:),y(:),yE(:),yH(:),errEuler(:),errHeun(:),...
    'VariableNames',{'x','y','Euler','Heun','Error_Euler','Error_Heun'})
% Gráfica
% y = red circle; Euler = blue, Heun = green
plot(T.x,T.y,'r.',T.x, T.Euler,'b', T.x, T.Heun,'g')

% plot(T.x, T.Euler)
% hold on
% plot(T.x, T.Heun)
% hold off
