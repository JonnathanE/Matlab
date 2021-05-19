function [y] = fdfProgresivas(f,x,h)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
for i = 1:length(x)
    
    if i == (length(x) - 2)
        
        a = x(end) + h;
        y(i) = ( (2*f(x(i))) - (5*f(x(i+1))) + (4*f(x(i+2))) - f(a) )/(h^2);
        
    elseif i == (length(x) - 1)
        b = a + h;
        y(i) = ( (2*f(x(i))) - (5*f(x(i+1))) + (4*f(a)) - f(b) )/(h^2);
    elseif i == length(x)
        c = b + h;
        y(i) = ( (2*f(x(i))) - (5*f(a)) + (4*f(b)) - f(c) )/(h^2);
    else
        
        y(i) = ( (2*f(x(i))) - (5*f(x(i+1))) + (4*f(x(i+2))) - f(x(i+3)) )/(h^2);
        
    end
    
end
end

