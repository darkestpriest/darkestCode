//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Coeficiente de Reflexión de salida

//Actualizado por Ing. Manuel Pérez P.
//Enero de 2011
function [R]=RoL(s11,s22,D)
//Esta función realiza el cálculo del coeficiente de reflexión de un amplificador
//hacia la carga, usando Parámetros S

  C=s22-(D*conj(s11))
  
  B=1+abs(s22)^2-abs(s11)^2-abs(D)^2
    
  Rm=(B-sign(B)*sqrt(B^2-4*abs(C)^2))/(2*abs(C))
  
  printf("Magnitud del coeficiente de reflexion hacia la carga: %e\n",Rm)
  
  //Ra=-atan(imag(C)/real(C));
  //Esta función se sustituye por AtanDeg
  //Más información en el archivo AtanDeg.sci
  Ra=-AtanDeg(real(C),imag(C))
  //printf("Fase del coeficiente de reflexion hacia la carga: %e\n",180*(1/%pi)*Ra)
  printf("Fase del coeficiente de reflexion hacia la carga: %e\n",Ra)
  
  R=Rm*cos(Ra)+%i*Rm*sin(Ra)

endfunction
