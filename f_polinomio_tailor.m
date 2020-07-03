function [y] = f_polinomio_tailor(f, x, n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y = f(0);
for i = 1:n
    y = y + (f(0)/factorial(i))*(x-0)^i;
end
end

