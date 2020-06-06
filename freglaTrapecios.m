function [I] = freglaTrapecios(f,x,h)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
sum = 0;
for i = 1:length(x)
    if i == 1 || i == length(x)
        sum = sum + f(x(i));
    else
        sum = sum + ( 2*f(x(i)) );
    end
end
I = (h/2)*sum;
end

