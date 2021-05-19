clc, clear all;
% https://youtu.be/polQqqASZXw
% https://youtu.be/X5svTz8cOT0

% y' = x

f = inline('x', 'x', 'y');
paso=0.5;
iz=-3;
der=3;
[x, y] = meshgrid(iz:paso:der, iz:paso:der);
[n, m] = size(x);
dx = ones(n,m);
dy = f(x, y);
quiver(x, y, dx, dy)

hold on % permite superponer los graficos
dsolve('Dy=x', 'y(0)=0', 'x')
fplot(@(x) 1/2*x^2, [-2.5, 2.5], 'r');
plot(0, 0, '*g')
grid on