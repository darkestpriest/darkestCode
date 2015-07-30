// Autor: Ing. Manuel P�rez P.
// Libre Distribuci�n 2006
// Generador de pulsos no peri�dicos versi�n 2006
function [p]=pulso(d,t)
// Funci�n que genera un pulso rectangular finito en el tiempo
// Par�metros de entrada:
// d = Ancho de duraci�n del pulso en el tiempo
// t = Variable independiente
p=(sign(t)+sign(d-t))*0.5
endfunction
