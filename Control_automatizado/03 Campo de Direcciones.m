% Resolución de un Campo de Direcciones

% ED: y' = sin(x+y)
clc, clear all;

f = inline('sin(x+y)', 'x', 'y');

[x, y] = meshgrid(-3:0.5:3, -3:0.5:3);
[n, m] = size(x);
dx = ones(n,m);
dy = f(x, y);
quiver(x, y, dx, dy)