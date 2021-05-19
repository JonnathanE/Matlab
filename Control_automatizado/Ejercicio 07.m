% EJERCICIOS DE PROGRAMACIÓN - SCRIPTS EN MATLAB PARA RESOLVER EDO
%
%   Autor: Jonnathan Damián Espinoza Erráez
%   Fecha: 24 de mayo de 2021

% Resolver el ejercicio de Ley de enfriamiento de Newton:
%   Agua a temperatura de 100° C se enfría en 10 minutos a 80° C, en un cuarto cuya temperatura 
%   es de 25° C. Encuentre la temperatura del agua después de 20 minutos 


% FÓRMULA
%   dT/dt = k(T - TA)
%       T  -> temperatura del cuerpo en un instante de tiempo t
%       TA -> temperatura del ambiente constante
%       k  -> constante de proporcionalidad

clc, clear all;

syms T t TA k;

% PRIMERA FORMA
ED = 'DT = -0.03101*(T - 25)'; % definicion de la Ecuacion Diferencial
ci = 'T(0) = 100'; % condicion inicial
T = dsolve(ED, ci, 't'); % Resolucion de la E.D.
t = 20; % establecemos el tiempo que queremos obtener
vy = eval(T) % evaluamos
% graficamos
hold on
fplot(T, [0, 200], 'r'); 
plot(t, vy, '*g');
title('Ejercicio 07: Ley de Enfriamiento de Newton')
xlabel('tiempo(min)')
ylabel('temperatura(°C)')
leyenda01 = ['T=', char(T)];
leyenda02 = ['( ' num2str(t) ' , ' num2str(vy) ' )'];
legend( leyenda01, leyenda02 );
grid on
hold off


% SEGUNDA FORMA
% TAin = 25;
% kin = -0.03101;
% ci = 'T(0) = 100'; % condicion inicial
% LN = k*(T - TA); % definicion de la Ecuacion de la Ley de Enfriamiento
% LEN = subs(LN, [TA, k], [TAin, kin]); % sustituimos los valores de TA y K en la ecuacion
% ED = strcat('DT = ', string(LEN)); % definimos la E.D.
% T = dsolve(ED, ci, 't'); % Resolucion de la E.D.
% t = 20; % establecemos el tiempo que queremos obtener
% vy = eval(T) % evaluamos

% TERCERA FORMA
% ED = 'DT = K*(T-TA)';
% T = dsolve(ED, 't')


