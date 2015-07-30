//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Mezclador Balanceado Simple con Salida Filtrada
function [v]=Mez_BSF(t,vi,fvl,ab)
//

  vl=squarewave(2*%pi*fvl*t);
  vt=vi.*vl
  v=fpba(vt,fvl,ab)
  plot2d(t,v)

endfunction
