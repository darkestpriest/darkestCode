//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Criterio de estabilidad de Stern
function [k]=KStern(yi,yo,yf,yr,ys,yl)
//Esta función realiza el cálculo de estabilidad de Stern

  k=2*(real(yi)+real(ys))*(real(yo)+real(yl))/(abs(yr*yf)+real(yr*yf));
  printf('k = %f\n',k);
 

endfunction
