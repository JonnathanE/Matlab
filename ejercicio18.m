% AUTOR: Jonnathan Espinoza
clear all
clc
format long
 
% METODO DE EULER and Heun

%===================================================================
%===================================================================
% EJERCICIO 1
disp('=== EJERCICIO 1: el de t ===')
% ==================================================================
%===================================================================
 
% a = input('Valor de a: '); % ingreso el valor de x inicial
% b = input('Valor de b: '); % ingreso el valor de x final
% yin = input('Valor de y: '); % ingreso el valor de y inicial
% N = input('Valor de N: '); % ingreso el valor de N

a = 0;
b = 1;
yin = 1;
N = 10;

f = @ffuncion; % DECLARO MI FUNCIÓN PRIMA

yE = f_Euler(f,a,b,yin,N);
yH = f_Heun(f,a,b,yin,N);
yRK = f_Runge_kutta_4(f,a,b,yin,N);
yRK3 = f_Runge_kutta_3(f,a,b,yin,N);

f_original = @f_funcion; % FUNCION EXACTA
h = (b-a)/N;
x = a:h:b;

for i = 1:length(x)
    y(i) = f_original(x(i));
    errEuler(i) = abs(y(i)-yE(i));
    errHeun(i) = abs(y(i)-yH(i));
    errRunge(i) = abs(y(i)-yRK(i));
    errRunge3(i) = abs(y(i)-yRK3(i));
end

T = table(x(:),y(:),yE(:),yH(:),yRK3(:),yRK(:),errEuler(:),errHeun(:),errRunge3(:),errRunge(:),...
    'VariableNames',{'x','y','Euler','Heun','Runge_Kutta_3','Runge_Kutta_4','Error_Euler','Error_Heun','Error_Runge_Kutta_3','Error_Runge_Kutta_4'})
% Gráfica
% y = red circle; Euler = blue, Heun = green, Rnge_kutta_4 = yellow
plot(T.x,T.y,'r',T.x, T.Euler,'b', T.x, T.Heun,'g',T.x, T.Runge_Kutta_3,'k',T.x, T.Runge_Kutta_4,'y')
legend('Exacta','Euler','Heun','Runge3','Runge4')

% plot(T.x, T.Euler)
% hold on
% plot(T.x, T.Heun)
% hold off
