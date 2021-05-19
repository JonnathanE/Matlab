clear all
clc
format shortg

x = [150 160 170 180 190 200 210];
y = [35.5, 37.8, 43.6, 45.7, 47.3, 50.1, 51.2];
% x = [150 160 170 180];
% y = [35.5 37.8 43.6 45.7];
% x = [1 -3 5 7];
% y = [-2 1 2 -3];

valor = [181];

resultado = f_lagrange(x, y, valor);

X = [x valor]
Y = [y resultado]

% plot(X,Y,'-o',...
%     'Color',[0,0.7,0.9],...
%     'LineWidth',2,...
%     'MarkerSize',10,...
%     'MarkerEdgeColor',[0.5,0.5,0.5])

resultados = f_lagrangeGrafica(x, y, valor, true)