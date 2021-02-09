function [serie, a0, an, bn] = seriesFourier(f, Lmin, Lmax, L, harmonic, grafic)
% Fourier serie is a way of splitting something into a bunch of sine waves
%
%   INPUT PARAMETERS
%       (f)         -> Function with symbolic variables x and n, 
%                       Ej: 
%                           > f(x) = x.^2-x+3
%                           > f(x) = piecewise(-3<=x<0, f1, 0<=x<=3, f2)
%       (Lmin)      -> Lower limit 
%       (Lmax)      -> Upper limit 
%       (L)         -> Period
%                       Ej:
%                           > L = Lmax - Lmin
%       (harmonic)  -> Number of waves to calculate
%       (grafic)    -> true or false value to display the graph
%
%   OUTPUT PARAMETERS
%       [serie]    -> Result function when applying Fourier's series
%                       Ej:
%                           > (3*cos((pi*x)/6))/pi + sin((pi*x)/3)/pi + sin((pi*x)/6)/pi + 3/4
%       [a0]  -> Coefficient a0
%
%       [an]  -> Coefficient an
%
%       [bn]  -> Coefficient bn
%

% decalred symbolic variables x and n
syms n x;

% calculate the period
%L = Lmax - Lmin;

% calculate the coefficient a0
a0 = (1/L)*int(f, Lmin, Lmax);

% calculate the coefficient an
f_integral(x) = f*cos((n*pi*x)/L);
an = (1/L)*int(f_integral, Lmin, Lmax);

% calculate the coefficient bn
f_integral(x) = f*sin((n*pi*x)/L);
bn = (1/L)*int(f_integral, Lmin, Lmax);

% calculate the serie Fourier
serie = 0;
for i = 1:(harmonic)
    % evaluate the coefficients for each harmonic
    an_c = subs(an, n, i);
    bn_c = subs(bn, n, i);
    
%     if abs(an_c) < 0.0001
%         an_c = 0;
%     elseif abs(bn_c) < 0.0001
%         bn_c = 0;
%     end
    
    serie = serie + an_c * cos((i*pi*x)/L); % Cosine terms of the series
    serie = serie + bn_c * sin((i*pi*x)/L); % Sin terms of the series
end
serie = (a0/2)+ serie; % Final series expansion

% if graph is true the fourier series is graphed
if grafic
    t = linspace(Lmin,Lmax,200); % time vector
    t = linspace(Lmin,15,200);
    fG = double(subs(f, x, t));
    fserieG = subs(serie, x, t);

    plot(t,fG,'b','LineWidth',1)
    hold on
    grid on
    plot(t,fserieG, 'r')
    %pause(0.1)
end

end

