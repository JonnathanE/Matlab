clc, clear all;

disp('El ejemplo ejecuta el archivo Ejemplo_01_simulink')
[num, den] = linmod('Ejemplo_01_simulink');
G = tf(num, den)