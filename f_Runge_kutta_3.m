function [y,x] = f_Runge_kutta_3(f,a,b,yin,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h = (b-a)/N;
x = a:h:b;

y(1) = yin;
for i = 1:length(x)-1
    k1 = f( x(i), y(i) );
    k2 = f( x(i)+(h/2), y(i)+(h/2)*k1 );
    k3 = f( x(i)+ h, y(i)- h*k1 + 2*h*k2 );
    y(i+1) = y(i)+ (h*(k1+4*k2+k3))/6;
end

end

