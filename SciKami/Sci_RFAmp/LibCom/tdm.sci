//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2006
//Multiplexado por División de Tiempo Versión 1.0
function [tdm]=tdm(nc,fm,ap)
//Función que permite la multiplexación de señales por divisón de tiempo
//Esta función permite, no solo el multiplexado de una señal, sino que genera un vector que permite el estudio posterior del comportamiento de la señal multiplexada
//Para el correcto funcionamiento de esta función se requiere que se introduzca:
//nc = Número de canales o señales a multiplexar
//fm = frecuencia de muestreo
getf pulso.sci
tm=1/fm;
N=size(t,'*')
tdm=0
for mc=1:1:nc
mp=0
disp('Introduzca la señal del canal')
printf("%5d",mc)
f=input(' ')
for xt=1:1:N
  mp=f.*pulso(ap,t-tm*(xt-1)-(mc-1)*tm/nc)+mp
end
plot2d(t,mp,mc)
tdm=tdm+mp
end
endfunction

