//Autor: Ing. Manuel Pérez P.
//Distribución Libre 2006
function [fsk]=fsk(f,fc,df)
//Función que genera una señal fsk
//Esta función requiere de una señal digital f, la frecuencia de portadora fc en Hz y la desviación de frecuencia df en Hz
fsk=cos(2*%pi*(fc-f*df).*t)
endfunction
