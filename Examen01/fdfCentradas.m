function [y] = fdfCentradas(f,x,h)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
for i = 1:length(x)
    if i == 1
        
        a = x(i) - h;
        b = a - h;
        y(i) = ( -f(b) + (16*f(a)) - (30*f(x(i))) + (16*f(x(i+1))) - f(x(i+2)) )/(12*h^2);
        
    elseif i == 2
        
        y(i) = ( -f(a) + (16*f(x(i-1))) - (30*f(x(i))) + (16*f(x(i+1))) - f(x(i+2)) )/(12*h^2);
        
    elseif i == (length(x)-1)
        a = x(end) + h;
        y(i) = ( -f( x(i-2) ) + (16*f( x(i-1) )) - (30*f(x(i))) + (16*f(x(i+1))) - f(a) )/(12*h^2);
        
    elseif i == length(x)
        
        b = a + h;
        y(i) = ( -f( x(i-2) ) + (16*f( x(i-1) )) - (30*f(x(i))) + (16*f(a)) - f(b) )/(12*h^2);
        
    else
        y(i) = ( -f( x(i-2) ) + (16*f( x(i-1) )) - (30*f(x(i))) + (16*f(x(i+1))) - f(x(i+2)) )/(12*h^2);
    end
    
end
end

