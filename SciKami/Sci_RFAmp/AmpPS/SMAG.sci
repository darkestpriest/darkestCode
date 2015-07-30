//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Máxima Ganancia Disponible (Parámetros S)
function [M]=SMAG(s11,s12,s21,s22,D,k)
//Cálculo de MAG (Parámetros S)

  B1=1+abs(s11)^2-abs(s22)^2-abs(D)^2;
    
  M=10*log10(abs(s21)/abs(s12))+10*log10(abs(k-sign(B1)*sqrt(k*k-1)))
  printf('La Maxima ganancia disponible para este amplificador es: %f\n',M);
  
endfunction
