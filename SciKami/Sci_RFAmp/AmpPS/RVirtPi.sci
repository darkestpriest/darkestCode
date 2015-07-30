//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de la R visrtual de una red Pi
function [R]=RVirtPi(Rh,Q)
//Esta función calcula la R Virtual de una Red Pi

  R=Rh/(Q*Q+1)
  
  endfunction
