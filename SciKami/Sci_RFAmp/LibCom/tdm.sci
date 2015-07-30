//Autor: Ing. Manuel P�rez P.
//Libre distribuci�n - 2006
//Multiplexado por Divisi�n de Tiempo Versi�n 1.0
function [tdm]=tdm(nc,fm,ap)
//Funci�n que permite la multiplexaci�n de se�ales por divis�n de tiempo
//Esta funci�n permite, no solo el multiplexado de una se�al, sino que genera un vector que permite el estudio posterior del comportamiento de la se�al multiplexada
//Para el correcto funcionamiento de esta funci�n se requiere que se introduzca:
//nc = N�mero de canales o se�ales a multiplexar
//fm = frecuencia de muestreo
getf pulso.sci
tm=1/fm;
N=size(t,'*')
tdm=0
for mc=1:1:nc
mp=0
disp('Introduzca la se�al del canal')
printf("%5d",mc)
f=input(' ')
for xt=1:1:N
  mp=f.*pulso(ap,t-tm*(xt-1)-(mc-1)*tm/nc)+mp
end
plot2d(t,mp,mc)
tdm=tdm+mp
end
endfunction

