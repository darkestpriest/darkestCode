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
//Libre distribución - 2009
//Ocolp 2.0 -2010
//Diseño de un oscilador Colpitts
function [c1,l2,c3]=OColp(gm,f,rin,ro)
//Esta función realiza el cálculo de los componentes necesarios para la implementación
//de un Oscilador Colpitts
//Argumentos:
//gm del Amplificador a lazo abierto
//f frecuencia de operación
//rin Z de entrada del amplificador a lazo abierto
//ro Z de salida del amplificador a lazo abierto

//Este criterio garantiza que la impedancia de entrada del amplificador a lazo abierto 
//sea mucho mayor que Z3 y no sea una carga para la red de retroalimentación
  x3=rin/100
//Cálculo de la velocidad angular de operación del circuito
  om=2*%pi*f
//Cálculo de C3
  c3=1/(om*x3)
//Cálculo de C1
  t=(gm*ro)/1.6  
  c1=c3/t
  ce=c1*c3/(c1+c3)
//Cálculo de L2
  l2=1/(((om)^2)*ce)
  
  printf('C1 = %e\n',c1)
  printf('l2 = %e\n',l2)
  printf('C3 = %e\n',c3)
   
  endfunction
