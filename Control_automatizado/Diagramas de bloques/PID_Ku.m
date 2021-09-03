function [C,Kc,ti,td,Ku,Tu] = PID_Ku(varargin)
% Controlador P,PI,PID por Ziegler & Nichols
% Los parámetros Ku y Tu se pueden evaluar mediante el diagrama de Bode del sistema
% Todavía estoy en circuito abierto
% [C,Kc,ti,td,Ku,Tu] = PID_Ku(P,Controller,MF)
% C   =  función de transferencia del controlador
% Kc  =  Acción proporcional
% ti  =  Tiempo integral
% td  =  tiempo derivado
% Ku  =  ganancia final
% Tu  =  Último período de ganancia
% P   =  Función de transferencia de proceso
% Controller= Seleccione el tipo de control 'P', 'PI' (predeterminado), 'PID'
% type = 1(default)- Controlador normal, 2 - Controlador lento
% MF   =  Gráfico del controlador en lazo cerrado (1 gráfico, 0-No graficar)
% ______________________________________________________________________


ni = nargin;
no = nargout;
titlewin='PID Ultimate Gain Ziegler and Nichols';
 if ni ==0
     error('Sin parámetros tipo >> ayuda PID_Ku')
 end   
 if ni == 1
    P=varargin{1};
    Controller='PI';
    type=1;
    MF=0;
 end
 
 if ni == 2
    P=varargin{1};
    Controller=varargin{2};
    type=1;
    MF=0;
 end
 
 if ni == 3
    P=varargin{1};
    Controller=varargin{2};
    type=varargin{3};
    MF=0;
 end
 
 if ni == 4
    P=varargin{1};
    Controller=varargin{2};
    type=varargin{3};
    MF=varargin{4};
 end

 
 if ni > 5
    error('Muchos parámetros de entrada escriben >> ayuda PID_Ku')
 end
 
[Ku,~,Wcg1,~] = margin(P);
Tu=2*pi/Wcg1;
if strcmp(Controller,'P')
        Kc=0.5*Ku/type; ti=0; td=0;
        C=tf(Kc,1);
end
 if strcmp(Controller,'PI')
        Kc=(0.45*Ku)/type; ti=Tu/1.2; td=0;
        C=tf(Kc*[ti*td ti 1],[ti 0]);
 end
 if strcmp(Controller,'PID')
        Kc=0.6*Ku/type; ti=Tu/2; td=Tu/8;
        C=tf(Kc*[ti*td ti 1],[ti 0]);
 end
 
 if MF==1
     step((C*P)/(1+C*P));
 end
    
end