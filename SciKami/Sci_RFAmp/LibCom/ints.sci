//Autor: Ing. Manuel Pérez P.
//Distribución Libre 2006
function [ints]=ints(f)
//Integral de una señal
g=sign(t)
N=size(t,'*')
tf=t(N)
tm=tf/(N-1)
[in,d]=convol(g,f)
ints=in*tm
endfunction
