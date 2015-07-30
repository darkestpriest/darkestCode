//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2006
//Muestreo en la práctica Versión 1.0
function [m]=muest(f,fm,ap)
//Función que permite el muestreo de señales en el tiempo
//Esta función permite, no solo el muestreo de una señal, sino que genera un vector que permite el estudio posterior del comportamiento de la señal muestreada
//Para el correcto funcionamiento de esta función se requiere que se introduzca:
//fm = frecuencia de muestreo.
//ap = ancho de pulso de las muestras.
//f = señal a muestrear. 
//la variable de la señal a muestrear debe ser t.
getf pulso.sci
tm=1/fm;
N=size(t,'*')
mp=0
for xt=1:1:N
  mp=f.*pulso(ap,t-tm*(xt-1))+mp
end
m=mp
plot2d(t,m,9)
endfunction

