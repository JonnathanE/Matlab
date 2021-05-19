function [x, y] = f_rk4ordenNEcuaciones(f,a, b, y0, N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h = (b-a)/N;
x = a:h:b;
x = x(:);
y = zeros(N+1, length(y0));
y(1,:) = y0;
for k = 1:N
    k1 = feval(f, x(k), y(k,:) )';
    k2 = feval(f, x(k)+h/2, y(k,:)+(h/2)*k1 )';
    k3 = feval(f, x(k)+h/2, y(k,:)+(h/2)*k2 )';
    k4 = feval(f, x(k+1), y(k,:)+h*k3 )';
    y(k+1,:) = y(k,:)+h/6 * (k1+2*k2+2*k3+k4);
end
end

