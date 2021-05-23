% EJERCICIOS DE PROGRAMACIÓN - SCRIPTS EN MATLAB PARA RESOLVER EDO
%
%   Autor: Jonnathan Damián Espinoza Erráez
%   Fecha: 24 de mayo de 2021

% Resolver el ejercicio de Ley de enfriamiento de Newton:
%   Agua a temperatura de 100° C se enfría en 10 minutos a 80° C, en un cuarto cuya temperatura 
%   es de 25° C. Encuentre la temperatura del agua después de 20 minutos. 
%
% FÓRMULA
%   dT/dt = k(T - TA)
%       T  -> temperatura del cuerpo en un instante de tiempo t
%       TA -> temperatura del ambiente constante
%       k  -> constante de proporcionalidad

clc, clear all;

% DEFINIMOS LAS VARIABLES SIMBÓLICAS
syms T t TA k c;

% DEFINNIMOS LOS DATOS DEL PROBLEMA
TA = 25; % temperatura ambiente
t = 20; % tiempo en que deseo encontrar la temperatura
temperatura_in = 100; % temperatura inicial del agua
temperatura_end = 80; % temperatura final del agua
tiempoEnd = 10; % tiempo final en que se midio el agua
TIEMPO_IN = 0; % tiempo inicial es una constante = 0

% CONSTRUIMOS LA FORMULA PRINCIPAL
%       dT/dt = k(T - TA)
ED = 'DT = k*(T - TA)'; % definimos la E.D
T = dsolve(ED, 't'); % resolvemos la E.D en funnción de 't'
T = subs(T, 'TA', TA); % sustituimos 'TA'

% DESPEJAMOS 'C' CUANDO 'T(0) = 100'
c = subs(T - temperatura_in, 't', TIEMPO_IN); % sustituimos 't=0'
c = solve(c, c) % despejamos 'C'
T = subs(T, 'C1', c); % sustituimos 'C' en la fórmula principal

% DESPEJAMOS 'k' CUANDO 'T(10) = 80'
k = subs(T - temperatura_end, 't', tiempoEnd); % sustituimos 't=10'
k = solve(k, k) % despejamos 'k'
T = subs(T, 'k', k) % sustituimos 'k' en la fórmula principal

% EVALUAMOS t=20
resultado = eval(T)

% GRAFICAMOS
hold on
fplot(T, [0, 200], 'r'); % graficamos la función
plot(t, resultado, '*g'); % graficamos la respuesta
title('Ejercicio 07: Ley de Enfriamiento de Newton')
xlabel('tiempo(min)')
ylabel('temperatura(°C)')
leyenda01 = ['T=', char(T)];
leyenda02 = ['( ' num2str(t) ' , ' num2str(resultado) ' )'];
legend( leyenda01, leyenda02 );
grid on
hold off
