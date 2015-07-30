//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de la R visrtual de una red T
function [R]=RVirtT(Rs,Q)
//Esta función calcula la R Virtual de una Red T
  
  R=Rs*(Q*Q+1)
  
  endfunction
