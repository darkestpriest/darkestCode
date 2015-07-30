//Este script Scilab es Software Libre y se distribuye gratuitamente bajo
//licencia GPL, por lo que está permitida su copia o distribución bajo los
//criterios de la misma.
//Ante cualquier problema, consulta, sugerencia, etc, puede escribir a
//darkpriestrelative@gmail.com, o dejar un mensaje en el sitio
//http://jingmap.blogspot.com
//Para descargar actualizaciones u obtener mayor documentación consulte la
//ayuda en línea del programa o visite la página oficial del proyecto
//(http://jingmap.blogspot.com).
//
// Copyleft 2010 Darkest Priest - (Manuel Pérez P. darkpriestrelative@gmail.com)

function [dB,dBm,dBK,dBu] = calculardB(P1,P2,u)
  //Argumentos:
  //P1 potencia a calcular
  //P2 potencia de referencia
  //u=1 para cálculos en W, u=2 para cálculos en V
  dB=u*10*log10(P1/P2);
  printf('dB=%f\n',dB);
  dBm=dB+30;
  printf('dBm=%f\n',dBm);
  dBK=dB-30;
  printf('dBK=%f\n',dBK);
  dBu=dB-60;
  printf('dBu=%f\n',dBu);
endfunction