function [c]= cuadradal(t)
//Generador de ondas cuadradas bipolares aleatorias versi�n 1.0
//Funci�n que permite la generaci�n de una onda cuadrada en el tiempo
//la funci�n requiere que la variable t se encuantre definida previamente
N=size(t,'*')
al=grand(1,N,'nor',0.5,0.5)
c=cos(%pi*(round(al)))
endfunction
// Autor: Ing. Manuel P�rez P.
// Libre Distribuci�n 2006
