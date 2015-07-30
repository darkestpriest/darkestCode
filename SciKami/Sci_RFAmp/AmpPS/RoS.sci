//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Coeficiente de Reflexión de entrada

//Actualizado por Ing. Manuel Pérez P.
//Enero de 2011
function [R]=RoS(s11,s12,s21,s22,RL)
//Esta función realiza el cálculo del coeficiente de reflexion de un amplificador
//hacia la el generador, usando Parámetros S

  R=conj(s11+(s12*s21*RL)/(1-(RL*s22)))
  printf("Magnitud del coeficiente de reflexion hacia el generador: %e\n",abs(R))
  
  //Ra=atan(imag(R)/real(R));
  //printf("Parte real del coeficiente de reflexion hacia el generador: %e\n",real(R))
  //printf("Parte imaginaria del coeficiente de reflexion hacia el generador: %e\n",imag(R))
  //Ra2=180*(1/%pi)*Ra;
  //disp(Ra2)
  //printf("Fase del coeficiente de reflexion hacia el generador: %e\n",Ra2)
  
  //El cálculo de la fase de RoS se realiza ahora usando la función AtanDeg
  //Más información en el archivo AtanDeg.sci
  Ra=AtanDeg(real(R),imag(R))
  printf("Fase del coeficiente de reflexion hacia el generador: %e\n",Ra)

endfunction
