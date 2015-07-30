//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Analizador de Transistores en RF
function analizoTRF=analizoTRF(yi,yo,yf,yr)
//Esta función analiza la estabilidad de un transistor usado como
//amplificador de señales de alta frecuencia y da como resultado YS y YL
//Usando Parámetros Y
  
  C=CLinvill(yi,yo,yf,yr);
  
   
  if C<1 then
    
    printf("El amplificador es incondicionalmente estable\n");
    AmpEst(yi,yo,yf,yr);  
    
    
  else
    printf("El amplificador es potencialmente inestable\n");
    nf=input("Introduzca la resistencia para obtener una optima figura de ruido:")
    k=input("Introduzca K para la estabilidad de Stern:")
    AmpInEst(yi,yo,yf,yr,nf,k)
  end 

endfunction
