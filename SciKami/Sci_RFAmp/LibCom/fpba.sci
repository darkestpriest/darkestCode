//Autor: Ing. Manuel Pérez P.
//Distribución Libre 2006
function [fpba]=fpba(f,fo,bw)

N=size(t,'*')
tf=t(N)
tm=tf/(N-1)
tme=tf/2
h=2*sin(2*%pi*(bw)*(t-tme+tm*0.1))./(t-tme+tm*0.1).*sin(2*%pi*fo*t)
hh=fft(h)
g=fft(f,1)
fpba=ifft(g.*hh)
endfunction
