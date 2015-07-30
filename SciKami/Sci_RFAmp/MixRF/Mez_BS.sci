//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Mezclador Balanceado Simple
function [v]=Mez_BS(t,vi,fvl)
//

  vl=squarewave(2*%pi*fvl*t);
  v=vi.*vl
  
  plot2d(t,v)

endfunction
