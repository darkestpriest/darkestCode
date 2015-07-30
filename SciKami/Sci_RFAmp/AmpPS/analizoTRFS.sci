//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Analizador de Transistores en RF
function [RL,RS,G]=analizoTRFS(a11,p11,a12,p12,a21,p21,a22,p22)
//Esta función analiza la estabilidad de un transistor usado como
//amplificador de señales de alta frecuencia y da como resultado YS y YL
//Usando Parámetros S

C=DRollett(a11,p11,a12,p12,a21,p21,a22,p22)
  RL=0
	RS=0
	G=0
   
  if C>1 then
    
    printf("El amplificador es incondicionalmente estable\n");
    
    s11=PolarCompl(a11,p11)
    s12=PolarCompl(a12,p12)
    s21=PolarCompl(a21,p21)
    s22=PolarCompl(a22,p22)
    
    D=Ds(s11,s12,s21,s22)
    
    M=SMAG(s11,s12,s21,s22,D,C)
    
    RL=RoL(s11,s22,D)
    
    RS=RoS(s11,s12,s21,s22,RL)
    
    G=GTS(s11,s12,s21,s22,RL,RS)
        
  else
    printf("El amplificador es potencialmente inestable\nDebe seleccionar otro transistor o cambiar el punto Q del mismo");
    
end 

endfunction
