//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Constante Ds del Transistor (Parámetros S)
function [D]=Ds(s11,s12,s21,s22)
//Esta función realiza el cálculo de la constante Ds del Transistor

  D=(s11*s22)-(s12*s21)
 
endfunction
