//Autor: Ing. Manuel P�rez P.
//Libre distribuci�n - 2009
//Constante Ds del Transistor (Par�metros S)
function [D]=Ds(s11,s12,s21,s22)
//Esta funci�n realiza el c�lculo de la constante Ds del Transistor

  D=(s11*s22)-(s12*s21)
 
endfunction
