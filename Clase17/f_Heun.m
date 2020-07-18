function [y,x] = f_Heun(f,a,b,yin,N)
% MÉTODO HEUN

h = (b-a)/N;
x = a:h:b;

y(1) = yin;
for i = 1:length(x)-1
    k1 = y(i) + h*f(x(i),y(i));
    y(i+1) = y(i)+ h*( f(x(i),y(i)) + f(x(i+1),k1)  )/2 ;
end
end

