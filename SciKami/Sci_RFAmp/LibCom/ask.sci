//Autor: Ing. Manuel P�rez P.
//Distribuci�n Libre 2006
function [ask]=ask(f,fc)
//Funci�n que genera una se�al ask
//Esta funci�n requiere de una se�al digital f y la frecuencia de portadora fc en Hz
ask=(f+1).*cos(2*%pi*fc*t)*0.5
endfunction
