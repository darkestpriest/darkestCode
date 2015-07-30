//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Criterio de estabilidad de Linvill
function [C]=CLinvill(yi,yo,yf,yr)
//Esta función realiza el cálculo de estabilidad de Linvill

  C=abs(yr*yf)/(2*real(yi)*real(yo)-real(yf*yr));
  printf('C = %f\n',C);
 

endfunction
