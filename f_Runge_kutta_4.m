function [y,x] = f_Runge_kutta_4(f,a,b,yin,N)
% MÉTODO RUNGE KUTTA 4to ORDEN

h = (b-a)/N;
x = a:h:b;

y(1) = yin;
for i = 1:length(x)-1
    k1 = f( x(i), y(i) );
    k2 = f( x(i)+(h/2), y(i)+(h/2)*k1 );
    k3 = f( x(i)+(h/2), y(i)+(h/2)*k2 );
    k4 = f( x(i)+h, y(i)+h*k3 );
    y(i+1) = y(i)+(h*(k1+2*k2+2*k3+k4))/6;
end

end

