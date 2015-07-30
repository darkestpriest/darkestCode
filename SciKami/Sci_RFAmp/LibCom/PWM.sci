//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2006
//Generador PWM (Modulación de Ancho de Pulso) 1.0
function [pwm]=pwm(fm)
//Generador de Señales PWM
//Esta función realiza la modulación de ancho de pulso de una función cualquiera.
//La salida obtenida con esta función es la gráfica de la señal modulada por ancho de pulso, así como un vector PWM que contiene la información numérica de esta señal, totalmente disponible para cálculos posteriores
tt=size(t,'*')
tf=t(tt)
tg=tf/(tt-1)
tm=1/fm
fg=1/tg
getf pulso.sci
getf dsierra.sci
t=0:tm:tf
g=input('Introduzca la función a muestrear')
t1=0:tg:tf
N=size(t,'*')
mp=0
for xt=1:1:N
  mp=g(xt)*pulso(tm-0.001*tm,t1-tm*(xt-1))+mp
end
h=dsierra(-t1,1,fm)
sc=mp+h
pwm=0
x=size(t1,'*')
for mm=1:1:x
  if sc(mm)>1 then
    pwm(mm)=1
  else
    pwm(mm)=0
  end
end
plot2d(t1,pwm,19,rect=[0,-0.5,tf,1.5])
endfunction
