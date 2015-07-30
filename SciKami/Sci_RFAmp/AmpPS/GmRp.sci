//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Calculo de Gm y Rpi de un Amplificador Emisor Común
function [gm,rpi]=GmRp(hfe,Ic,vt)
//Esta función realiza el cálculo de la Transcoductancia de un BJT y de Rpi
//Parámetros dependientes de la polarización

  gm=Ic/vt;
  rpi=hfe/gm
  
  endfunction
