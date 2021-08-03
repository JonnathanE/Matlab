% PRUEBA SEGUNDA UNIDAD
% Autor: Jonnathan Espinoza
% Fecha: 03/08/2021

clc; clear all;
% serie 1 
num01=[1]; den01=[1 0];
num02=[0.05]; den02=1;
[numr1, denr1]=series(num01,den01,num02,den02);
disp('T(s) de la serie 1 es: ')
printsys(numr1,denr1)
% retroalimentación unitaria negativa en la serie 1
disp('T(s) con retroalimentacion unitaria negativa de la serie 1: ')
[numretr1,denretr1]=cloop(numr1,denr1,-1);
printsys(numretr1,denretr1)

% serie 2
num03=[1 1]; den03=[4 0];
num04=[8]; den04=[1 0];
[numr2, denr2]=series(num03,den03,num04,den04);
disp('T(s) de la serie 2: ')
printsys(numr2,denr2)
% retroalimentación unitaria negativa en la serie 2
disp('T(s) con retroalimentacion unitaria negativa de la serie 2: ')
[numretr2,denretr2]=cloop(numr2,denr2,-1);
printsys(numretr2,denretr2)

% serie 3 (serie1 * serie2)
[numr3, denr3]=series(numretr1,denretr1,numretr2,denretr2);
disp('T(s) entre la serie 1 y serie 2: ')
printsys(numr3,denr3)

%retroalimentación no unitaria final 
disp ('T(s) con retroalimnetacion NO unitaria negativa = ')
num05=[1 0]; den05=[1 0 20];
[numretrfinal,denretrfinal]=feedback(numr3,denr3,num05,den05,-1);
printsys(numretrfinal,denretrfinal)

