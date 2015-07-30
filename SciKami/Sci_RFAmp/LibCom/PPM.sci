//Autor: Ing. Manuel P�rez P.
//Libre distribuci�n - 2006
//Generador PWM (Modulaci�n de Ancho de Pulso) 1.0
function [ppm]=ppm(fm,ap,d)
//Generador de Se�ales PpM
//Esta funci�n realiza la modulaci�n por posici�n de pulso de una funci�n cualquiera.
//La salida obtenida con esta funci�n es la gr�fica de la se�al modulada por posici�n de pulso, as� como un vector PPM que contiene la informaci�n num�rica de esta se�al, totalmente disponible para c�lculos posteriores
//Las variables de entrada:
//  fm = frecuencia de muestreo
//  ap = ancho del pulso
//  d = desplazamiento relativo con respecto al pulso de referencia
tt=size(t,'*')
tf=t(tt)
tg=tf/(tt-1)
tm=1/fm
fg=1/tg
getf pulso.sci
t=0:tm:tf
g=input('Introduzca la funci�n a muestrear')
t1=0:tg:tf
N=size(t,'*')
mp=0
for xt=1:1:N
  mp=pulso(ap,t1-d*tm*g(xt)-xt*tm)+mp
end
ppm=mp
plot2d(t1,ppm,19,rect=[0,-0.5,tf,1.5])
endfunction
