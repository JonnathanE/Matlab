% AUTOR: Jonnathan Espinoza

% 2. Reduzca el sistema a su función de transferencia de lazo cerrado usando un script en MatLab.

clc, clear all;

% Definir H(s)
numh=[1]; denh=[1 1];
% Definir Gc(s)
numgc=[1]; dengc=[1 0];
% Definir Gp(s)
numgp=[1]; dengp=[1 2];
% Definir Gr(s)
numgr=[1]; dengr=[1 2];

% Funcion de Trasnferencia bloques 
% agrupación en serie de H(S) y Gc(s)= H(S)Gc(S)
[num_s, den_s] = series(numh, denh, numgc, dengc);
printsys(num_s, den_s)
% bucle de retroalimentación negativa entre H(S)Gc(S) y Gr(s) = H(S)Gc(S)/(1+ (H(S)Gc(S)Gr(s)))
[num_ts, den_ts] = feedback(num_s, den_s, numgr, dengr, -1);
printsys(num_ts, den_ts)
% agrupación en series entre H(S)Gc(S)/(1+ (H(S)Gc(S)Gr(s))) y Gp(s)
[num_s1, den_s1] = series(num_ts, den_ts, numgp, dengp);
printsys(num_s1, den_s1)
% bucle de retroalimentación directa(unidad) negativa
[num_c, den_c] = cloop(num_s1, den_s1, -1);
disp('G(s)=');
printsys(num_c, den_c);



