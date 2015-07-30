function [c]= cuadradal(t)
//Generador de ondas cuadradas bipolares aleatorias versión 1.0
//Función que permite la generación de una onda cuadrada en el tiempo
//la función requiere que la variable t se encuantre definida previamente
N=size(t,'*')
al=grand(1,N,'nor',0.5,0.5)
c=cos(%pi*(round(al)))
endfunction
// Autor: Ing. Manuel Pérez P.
// Libre Distribución 2006
