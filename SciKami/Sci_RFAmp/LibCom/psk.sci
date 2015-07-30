//Autor: Ing. Manuel Pérez P.
//Distribución Libre 2006
function [psk]=psk(f,fc)
//Función que genera una señal psk
//Esta función requiere de una señal digital f y la frecuencia de portadora fc en Hz
psk=f.*cos(2*%pi*fc*t)
endfunction
