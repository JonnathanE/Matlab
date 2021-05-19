function [y,x] = f_Euler(f,a,b,yin,N)
% MÉTODO DE EULER

h = (b-a)/N;
x = a:h:b;

y(1) = yin;
for i = 1:length(x)-1
    y(i+1) = y(i) + h*f(x(i),y(i));
end
end

