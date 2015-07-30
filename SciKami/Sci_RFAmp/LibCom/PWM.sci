//Autor: Ing. Manuel P�rez P.
//Libre distribuci�n - 2006
//Generador PWM (Modulaci�n de Ancho de Pulso) 1.0
function [pwm]=pwm(fm)
//Generador de Se�ales PWM
//Esta funci�n realiza la modulaci�n de ancho de pulso de una funci�n cualquiera.
//La salida obtenida con esta funci�n es la gr�fica de la se�al modulada por ancho de pulso, as� como un vector PWM que contiene la informaci�n num�rica de esta se�al, totalmente disponible para c�lculos posteriores
tt=size(t,'*')
tf=t(tt)
tg=tf/(tt-1)
tm=1/fm
fg=1/tg
getf pulso.sci
getf dsierra.sci
t=0:tm:tf
g=input('Introduzca la funci�n a muestrear')
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
