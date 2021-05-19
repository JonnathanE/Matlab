function [x,y] = f_eulerNEcuaciones(f,a, b, y0, N)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
h = (b-a)/N;
x = a:h:b;
x = x(:);
y = zeros(N+1, length(y0));
y(1,:) = y0;
for k = 1:N
    y(k+1,:)= y(k,:) + h*feval(f, x(k), y(k,:))';
end
end

