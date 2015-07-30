//Autor: Ing. Manuel P�rez P.
//Distribuci�n Libre 2006
function [fsk]=fsk(f,fc,df)
//Funci�n que genera una se�al fsk
//Esta funci�n requiere de una se�al digital f, la frecuencia de portadora fc en Hz y la desviaci�n de frecuencia df en Hz
fsk=cos(2*%pi*(fc-f*df).*t)
endfunction
