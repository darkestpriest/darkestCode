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
//OHart 2.0 -2010
//Diseño de un oscilador Hartley
function [l1,c2,l3]=OHart(gm,f,rin,ro)
//Esta función realiza el cálculo de los componentes necesarios para la implementación
//de un Oscilador Hartley
  
  //Este criterio garantiza que la impedancia de entrada del amplificador a lazo abierto 
//sea mucho mayor que Z3 y no sea una carga para la red de retroalimentación
  x3=rin/100
//Cálculo de la velocidad angular de operación del circuito
  om=2*%pi*f
//Cálculo de L3
  l3=x3/om
//Cálculo de L1
  t=(gm*ro)/1.6  
  l1=l3*t
  le=l1+l3
//Cálculo de C2
  c2=1/(((om)^2)*le)
  
  printf('L1 = %e\n',l1)
  printf('C2 = %e\n',c2)
  printf('L3 = %e\n',l3)
  
  endfunction
