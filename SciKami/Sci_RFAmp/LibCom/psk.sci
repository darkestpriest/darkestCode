//Autor: Ing. Manuel P�rez P.
//Distribuci�n Libre 2006
function [psk]=psk(f,fc)
//Funci�n que genera una se�al psk
//Esta funci�n requiere de una se�al digital f y la frecuencia de portadora fc en Hz
psk=f.*cos(2*%pi*fc*t)
endfunction
