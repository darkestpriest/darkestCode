//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Mezclador Balanceado Doble
function [v]=Mez_BD(t,vi,fvl,RL,rd)
//

  vl=squarewave(2*%pi*fvl*t);
  v=vi.*vl*RL/(RL+rd/2);
  
  plot2d(t,v)

endfunction
