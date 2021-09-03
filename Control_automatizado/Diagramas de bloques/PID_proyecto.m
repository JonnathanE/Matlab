%% Sintonia del Controlador Ziegler y Nichols (Metodo 2)

close all
clear all
clc
%Funcion de transferencia (V�lvula - Planta)
G=tf(1,[1 3 3 3]);
num=[1]; den=[1 3 3 3];

%Animaci�n del incremento de la acci�n proporcional del controlador
ts=0.1;
nit=10/ts;
t = 0:ts:(nit-1)*ts;
R=ones(1,length(t)); %Escalon unitario
set(figure,'Color', [1 1 1] );
for k=0:1:6
    %Lazo Cerrado
    [numretr1,denretr1]=cloop(k*num,den,-1);
    Gc=tf(numretr1,denretr1);
    y=lsim(Gc,R,t);
    for i=1:length(t)
        plot(t(1:i),y(1:i),'-r','Linewidth',4)
        xlabel('Time','interpreter','latex','FontSize',22);
        ylabel('Output','interpreter','latex','FontSize',22);
        title(strcat("K=", num2str(k)),'FontSize',22);
        set(gca,'XTick', [] ,'YTick', [] )
        box off
        axis([0 t(end) min(y)-0.1 max(y)+0.1])
        hold on
        pause(1e-5);
    end
    hold off
end

% Func�n de transferencia con la ecuacion caracter�stica
G_eq=tf(1,[1 3 3 3]);

figure
[C1,Kc1,ti1,td1,Ku1,Tu1] = PID_Ku(G_eq,'P',1,1); %Planta, control, tipo, graficar
title('Control P - Ganancia Limite')

figure
[C2,Kc2,ti2,td2,Ku2,Tu2] = PID_Ku(G_eq,'PI',1,1); %Planta, control, tipo, graficar
title('Control PI - Ganancia Limite')

figure
[C3,Kc3,ti3,td3,Ku3,Tu3] = PID_Ku(G_eq,'PID',1,1); %Planta, control, tipo, graficar
title('Control PID - Ganancia Limite')