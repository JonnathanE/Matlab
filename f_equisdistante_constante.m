function [res] = f_equisdistante_constante(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
res = true;
err = 0.01;
h(1)=0;
for i = 1:length(x)-1
%     var = x(i+1)-x(i)
    h(i) = x(i+1)-x(i);
end
% h
for i = 1:length(h)-1
    dif = h(i+1)-h(i);
    if abs(dif) > 0.01
%         disp('No es quisdistante')
        res = false;
    end
end

if res
    disp('Es quisdistante')
else
    disp('No es quisdistante')
end
end

