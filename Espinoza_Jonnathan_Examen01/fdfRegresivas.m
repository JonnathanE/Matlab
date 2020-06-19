function [y] = fdfRegresivas(f,x,h)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
for i = 1:length(x)
    if i == 1
        
        a = x(i) - h;
        b = a - h;
        c = b - h;
        y(i) = ( -f(c) + (4*f(b)) - (5*f(a)) + (2*f(x(i))) )/(h^2);
        
    elseif i == 2
        
        y(i) = ( -f(b) + (4*f(a)) - (5*f(x(i-1))) + (2*f(x(i))) )/(h^2);
        
    elseif i == 3
        
        y(i) = ( -f(a) + (4*f(x(i-2))) - (5*f(x(i-1))) + (2*f(x(i))) )/(h^2);
        
    else
        y(i) = ( -f(x(i-3)) + (4*f(x(i-2))) - (5*f(x(i-1))) + (2*f(x(i))) )/(h^2);
    end
    
end
end

