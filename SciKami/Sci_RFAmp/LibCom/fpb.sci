//Autor: Ing. Manuel Pérez P.
//Distribución Libre 2006
function [fpb]=fpb(f,fc)

N=size(t,'*')
tf=t(N)
tm=tf/(N-1)
tme=tf/2
h=sin(2*%pi*fc*(t-tme+tm*0.1))./(t-tme+tm*0.1)
hh=fft(h)
g=fft(f,1)
fpb=ifft(g.*hh)
endfunction
