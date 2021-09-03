
clc; clear all;

ng=[1];
dg=[1 3 3 3];
G=tf(ng,dg);

clf,rlocus(G);
[km,pole]=rlocfind(G)
wm=max(imag(pole))
kp=0.6*km
kd=(kp*pi)/(4*wm)
ki=(kp*wm)/pi

nk=[kd kp ki];
dk=[1 0];
gc=tf(nk,dk)
gd=series(G,gc)
GT=feedback(gd,1)
step(GT,'r') %Escalon rojo para la función de transferencia con el regulador

hold on
GS=feedback(G,1)
step(GS,'g') %Escalon Verde para la funcion de transferencia sola
legend({'Función de transferencia regulada','Función de transferencia no regulada'},'Location','southwest')
