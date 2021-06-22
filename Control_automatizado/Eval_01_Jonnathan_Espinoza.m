%   EVALUACI�N 1

% Autor: Jonnathan Espinoza

% Un objeto que tiene una temperatura 50�F se coloca a las 10:00 horas en 
% un horno que se mantiene a 375�F. A las 11:15 horas su temperatura era 
% 125 �F. �A qu� hora estar� el objeto a 150�F?

% F�RMULA
%   dT/dt = k(T - TA)
%       T  -> temperatura del cuerpo en un instante de tiempo t
%       TA -> temperatura del ambiente constante
%       k  -> constante de proporcionalidad

clc, clear all;

% DEFINIMOS LAS VARIABLES SIMB�LICAS
syms T t TA k c;

% TA = 375�F es la temperatura ambiente
% Como de 10:00 a 11:15 transcurren 75 min, las condiciones son:
%   T(0)=50�F y T(75)=125�F

% DEFINNIMOS LOS DATOS DEL PROBLEMA
TA = 375; % temperatura ambiente
temp = 150; % tiempo en que deseo encontrar la temperatura
temperatura_in = 50; % temperatura inicial del agua
temperatura_end = 125; % temperatura final del agua
tiempoEnd = 75; % tiempo final en que se midio el agua
TIEMPO_IN = 0; % tiempo inicial es una constante = 0

% CONSTRUIMOS LA FORMULA PRINCIPAL
%       dT/dt = k(T - TA)
ED = 'DT = k*(T - TA)'; % definimos la E.D
T = dsolve(ED, 't'); % resolvemos la E.D en funnci�n de 't'
T = subs(T, 'TA', TA); % sustituimos 'TA'

% DESPEJAMOS 'C' CUANDO 'T(0) = 100'
c = subs(T - temperatura_in, 't', TIEMPO_IN); % sustituimos 't=0'
c = solve(c, c) % despejamos 'C'
T = subs(T, 'C1', c); % sustituimos 'C' en la f�rmula principal

% DESPEJAMOS 'k' CUANDO 'T(10) = 80'
k = subs(T - temperatura_end, 't', tiempoEnd); % sustituimos 't=10'
k = solve(k, k) % despejamos 'k'
T = subs(T, 'k', k) % sustituimos 'k' en la f�rmula principal

resultado = solve(T - temp, t)
