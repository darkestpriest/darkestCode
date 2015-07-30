//Autor: Ing. Manuel Pérez P.
//Distribución Libre 2006
function [ask]=ask(f,fc)
//Función que genera una señal ask
//Esta función requiere de una señal digital f y la frecuencia de portadora fc en Hz
ask=(f+1).*cos(2*%pi*fc*t)*0.5
endfunction
