% Resolucion de E.D. de Variables Separables
% E.D: y'=-2xy
% C.I: y(0)=1

clc, clear all;

syms x y c;
g = -2*x; h = 1/y;
x0= 0; y0 = 2;
G = int(g);
H = int(h);
%Solucion General de ED
sol_general = solve(H-G-c, y) % solve resuelve ecuaciones
y = subs(sol_general, 'x', x0)
c = solve(subs(sol_general, 'x', x0)-y0)
%Solucion Particular de ED
y = subs(sol_general, 'c', c)
ezplot(y, [-1,1])

% https://la.mathworks.com/discovery/integral.html
