//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2006
//Generador PWM (Modulación de Ancho de Pulso) 1.0
function [ppm]=ppm(fm,ap,d)
//Generador de Señales PpM
//Esta función realiza la modulación por posición de pulso de una función cualquiera.
//La salida obtenida con esta función es la gráfica de la señal modulada por posición de pulso, así como un vector PPM que contiene la información numérica de esta señal, totalmente disponible para cálculos posteriores
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
g=input('Introduzca la función a muestrear')
t1=0:tg:tf
N=size(t,'*')
mp=0
for xt=1:1:N
  mp=pulso(ap,t1-d*tm*g(xt)-xt*tm)+mp
end
ppm=mp
plot2d(t1,ppm,19,rect=[0,-0.5,tf,1.5])
endfunction
