//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Transformación de Polar a complejo
function [C]=PolarCompl(m,p)
//Esta función realiza la conversión de polar a complejo

  p=p*%pi/180
  r=m*cos(p)
  im=%i*m*sin(p)
  C=r+im
  
endfunction
