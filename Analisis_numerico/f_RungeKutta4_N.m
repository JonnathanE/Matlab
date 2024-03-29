function [y] = f_RungeKutta4_N(f,a,b,yin,N)
% M�todo de RUNGE KUTTA 4
%
%   PAR�METROS DE ENTRADA
%       (f)     ->  Sistema de ecuaciones 
%                       Ej: dy = [y1; y2; y3;...n];;
%       (a)     ->  Limite inferior en X 
%                       Ej: x = 0;
%       (b)     ->  L�mite superior en X
%                       Ej: x = 10
%       (yin)   ->  Y inicial
%                       Ej: yin = [1, 2, 3,..n]
%       (N)     ->  Total de X
%
%   PAR�METROS DE SALIDA
%       [y]    ->   Matriz con los resultados de Y
%                       Primera fila.- resultados de Y de la primera
%                           funcion
%                       Segunda fila.- resultados de Y de la segunda
%                           funcion

h = (b-a)/N;
x = a:h:b;
limite = f(0,0);

if length(yin) >= length(limite)

    for j = 1:length(limite)
        yaux(1) = yin(j);
        for i = 1:length(x)-1
            k1 = f( x(i), yaux(i) );
            k2 = f( x(i)+(h/2), yaux(i)+(h/2)*k1(j) );
            k3 = f( x(i)+(h/2), yaux(i)+(h/2)*k2(j) );
            k4 = f( x(i)+h, yaux(i)+h*k3(j) );
            yaux(i+1) = yaux(i)+(h*(k1(j)+2*k2(j)+2*k3(j)+k4(j) ))/6;
        end
        y(j,:) = yaux;
    end
else
    disp('Y inicial, insuficientes para cada ecuaci�n. Ingrese la misma cantidad de Y inicial que ecuaciones')
end
end

