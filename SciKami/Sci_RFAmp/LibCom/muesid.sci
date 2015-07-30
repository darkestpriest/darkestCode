//Autor: Ing. Manuel P�rez P.
//Libre distribuci�n - 2006
//Muestreo de techo plano versi�n 2.0
function [mp]=muesid(fm)
//Funci�n que permite el muestreo de techo plano de se�ales en el tiempo
//Esta funci�n permite, no solo el muestreo de una se�al, sino que genera un vector que permite el estudio posterior del comportamiento de la se�al muestreada
//Para el correcto funcionamiento de esta funci�n se requiere que se introduzca:
//fm = frecuencia de muestreo.
//ap = ancho de pulso de las muestras.
//la variable de la se�al a muestrear debe ser t.
//Posteriormente se le debe introducir la se�al a muestrear
getf pulso.sci
tf=t(size(t,'*'))
tm=1/fm;
tg=tf/(size(t,'*')-1)
t=0:tm:tf
g=input('Introduzca la Se�al a Evaluar')
t1=0:tg:tf
N=size(t,'*')
mp=0
for xt=1:1:N
  mp=g(xt)*pulso(tg+0.01*tg,t1-tm*(xt-1))+mp
end
plot2d(t1,mp,9)
endfunction
