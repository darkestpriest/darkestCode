//Autor: Ing. Manuel P�rez P.
//Distribuci�n Libre 2006
function [ints]=ints(f)
//Integral de una se�al
g=sign(t)
N=size(t,'*')
tf=t(N)
tm=tf/(N-1)
[in,d]=convol(g,f)
ints=in*tm
endfunction
