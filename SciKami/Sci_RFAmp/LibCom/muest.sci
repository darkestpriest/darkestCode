//Autor: Ing. Manuel P�rez P.
//Libre distribuci�n - 2006
//Muestreo en la pr�ctica Versi�n 1.0
function [m]=muest(f,fm,ap)
//Funci�n que permite el muestreo de se�ales en el tiempo
//Esta funci�n permite, no solo el muestreo de una se�al, sino que genera un vector que permite el estudio posterior del comportamiento de la se�al muestreada
//Para el correcto funcionamiento de esta funci�n se requiere que se introduzca:
//fm = frecuencia de muestreo.
//ap = ancho de pulso de las muestras.
//f = se�al a muestrear. 
//la variable de la se�al a muestrear debe ser t.
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

