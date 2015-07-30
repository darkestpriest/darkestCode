//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Criterio de estabilidad de Rollett
function [K]=DRollett(a11,p11,a12,p12,a21,p21,a22,p22)
//Esta función realiza el cálculo de estabilidad de Rollett

  s11=PolarCompl(a11,p11)
  s12=PolarCompl(a12,p12)
  s21=PolarCompl(a21,p21)
  s22=PolarCompl(a22,p22)
    
  D=Ds(s11,s12,s21,s22)
    
  K=(1+abs(D)^2-abs(s11)^2-abs(s22)^2)/(2*abs(s21)*abs(s12))
  
  printf("K = %f\n",K)

endfunction
