//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de la Máxima Ganancia del Amplificador
function [M]=MAG(yi,yo,yf)
//Cálculo de MAG

  M=(abs(yf)*abs(yf))/(4*real(yi)*real(yo));
  printf('La Maxima ganancia disponible para este amplificador es: %f\n',M);

endfunction
