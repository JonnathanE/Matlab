function [serie, a0, an, bn] = seriesFourier(f, Lmin, Lmax, L, harmonic, grafic)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
syms n x;
%L = Lmax - Lmin;

% calculate a0
a0 = (1/L)*int(f, Lmin, Lmax);

% calculate an
f_integral(x) = f*cos((n*pi*x)/L);
an = (1/L)*int(f_integral, Lmin, Lmax);

% calculate bn
f_integral(x) = f*sin((n*pi*x)/L);
bn = (1/L)*int(f_integral, Lmin, Lmax);

% calculate the serie
serie = 0;
for i = 1:(harmonic)
    % We evaluate the coefficients for each harmonic
    an_c = subs(an, n, i);
    bn_c = subs(bn, n, i);
    
    if abs(an_c) < 0.0001
        an_c = 0;
    elseif abs(bn_c) < 0.0001
        bn_c = 0;
    end
    
    serie = serie + an_c * cos((i*pi*x)/L); % Cosine terms of the series
    serie = serie + bn_c * sin((i*pi*x)/L); % Sin terms of the series
end
serie = (a0/2)+ serie; % Final series expansion

if grafic
    t = linspace(Lmin,Lmax,200); % time vector
    fG = double(subs(f, x, t));
    fserieG = subs(serie, x, t);

    plot(t,fG,'b','LineWidth',1)
    hold on
    grid on
    plot(t,fserieG, 'r')
end

end

