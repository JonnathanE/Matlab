function [serie, a0, an, bn] = animateFourier(f, Lmin, Lmax, L, harmonic, grafic)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

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

if grafic
    parar=false;FCos=false;
    %Crea una figura, le establece nombre, posición y color
    fig(1)=figure('name','Fourier','menubar','none','position',[200 200 800 700],'color',[0 0 0]);
    %Comando que mueve la figura al Centro de la pantalla
    movegui(fig(1),'center');
    %Crea un AXE, dentro de la Figura, establece la posicion y los limites
    axe(1)=axes('parent',fig(1),'units','pixels','position',[60 80 600 550],'xlim',[0 40],'ylim',[-3 3],'xgrid','on','ygrid','on', 'color',[0 0 0], 'XColor',[1 1 1], 'YColor',[1 1 1]);
    %Modifica las etiquetas del eje x y y de el AXE
    set(get(axe(1),'XLabel'),'String','Tiempo (Seg)');
    set(get(axe(1),'YLabel'),'String','Función');
    %Crea las lineas que se van a graficar en el axe, con su color y grosor
    %correspondientes
    lin(1)=line('parent',axe(1),'xdata',[],'ydata',[],'Color','white','LineWidth',1);
    %lin(2)=line('parent',axe(1),'xdata',[],'ydata',[],'Color','r','LineWidth',2);
    txbx(1)=uicontrol('parent',fig(1),'style','text','string','Función Fourier','position',[680 170 100 50],'background',[0.9 0.6 0.3],'callback',@texto,'fontsize',11);
    txbx(2)=uicontrol('parent',fig(1),'style','text','string','Fourier','position',[680 150 100 50],'callback',@texto,'fontsize',11);
    txbx(3)=uicontrol('parent',fig(1),'style','text','string','Tiempo','position',[680 270 100 50],'background',[0.9 0.6 0.3],'callback',@texto,'fontsize',11);
    txbx(4)=uicontrol('parent',fig(1),'style','text','string','Teme','position',[680 250 100 50],'callback',@texto,'fontsize',11);

    %txbx(3)=uicontrol('parent',fig(1),'style','text','string','Función Coseno','position',[680 270 100 50],'background',[0.9 0.6 0.3],'callback',@texto,'fontsize',11);
    %Crea botones y cuadros de texto dentro de la figura.
    %bot(1)=uicontrol('parent',fig(1),'style','pushbutton','string','Detener','position',[680 50 100 50],'callback',@stop,'fontsize',11)
    %bot(2)=uicontrol('parent',fig(1),'style','pushbutton','string','Coseno','position',[680 250 100 50],'callback',@coseno,'fontsize',11)
    
    tiempo=[0];
    salida=[0];
    salida2=[0];
    %Cada cuanto se va graficando en el axe
    dt=0.1;
    %Limites iniciales en el AXE
    limx=[0 40];
    set(axe(1),'xlim',limx);

    k=1;nit = 800;
    
    while(~parar)
        Y=double(subs(serie, x, tiempo(k)));
        
        set(txbx(2),'string',Y);
        set(txbx(4),'string',tiempo(end));
        %Actualiza las variables del grafico
        tiempo=[tiempo tiempo(end)+dt];
        salida=[salida Y];
        
        %Grafico con las lineas creadas anteriormente
        set(lin(1),'xdata',tiempo,'ydata',salida);
        pause(dt); %% espera 0.1 seg para cada interación
        if tiempo(end)>=limx % actualizo grafica cuando llega a su limite en tiempo real
            limx=[0 limx(2)+40]
            set(axe(1),'xlim',limx) 
        end
        k=k+1;
        if(k==nit)
            parar=true;
        end

    end

end

end

