//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2006
//Muestreo de techo plano versión 2.0
function [mp]=muesid(fm)
//Función que permite el muestreo de techo plano de señales en el tiempo
//Esta función permite, no solo el muestreo de una señal, sino que genera un vector que permite el estudio posterior del comportamiento de la señal muestreada
//Para el correcto funcionamiento de esta función se requiere que se introduzca:
//fm = frecuencia de muestreo.
//ap = ancho de pulso de las muestras.
//la variable de la señal a muestrear debe ser t.
//Posteriormente se le debe introducir la señal a muestrear
getf pulso.sci
tf=t(size(t,'*'))
tm=1/fm;
tg=tf/(size(t,'*')-1)
t=0:tm:tf
g=input('Introduzca la Señal a Evaluar')
t1=0:tg:tf
N=size(t,'*')
mp=0
for xt=1:1:N
  mp=g(xt)*pulso(tg+0.01*tg,t1-tm*(xt-1))+mp
end
plot2d(t1,mp,9)
endfunction
