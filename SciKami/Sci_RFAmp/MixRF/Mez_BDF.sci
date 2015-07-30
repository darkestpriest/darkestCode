//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Mezclador Balanceado Doble con salida filtrada
function [v]=Mez_BDF(t,vi,fvl,RL,rd,ab)
//

  vl=squarewave(2*%pi*fvl*t);
  vt=vi.*vl*RL/(RL+rd/2);
  v=fpba(vt,fvl,ab)
  
  plot2d(t,v)

endfunction
