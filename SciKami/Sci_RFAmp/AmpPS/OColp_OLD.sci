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
//Ocolp 1.0.1 -2010
//Diseño de un oscilador Colpitts
function [c1,c2,l3]=OColp(gm,f,rin)
//Esta función realiza el cálculo de los componentes necesarios para la implementación
//de un Oscilador Colpitts
  
  x1=rin/100
  om=2*%pi*f
  c1=1/(om*x1)
  ltemp=x1/om
  printf('C1 = %e\n',c1)
  printf('X2 debe ser mayor que %e para cumplir con el primer criterio de oscilacion\n',x1)
  printf('Por lo tanto L3 debe ser mayor a %e para que se cumpla dicho criterio\n',ltemp)
  d=1
  while d==1,
    l3=input('Introduzca el valor de L3: ');
    x3=om*l3
    c2=1/(om*(x3-x1))
    printf('Para L3 = %e el valor de C2 es: %e\n',l3,c2);
    printf('Comprobando si los valores obtenidos de L3 y C2 cumplen con el segundo criterio de oscilacion\n')
    xtemp=om*om*l3*c2
    if xtemp>1 then
      printf('Los valores de C2 y L3 cumplen con el segundo criterio de oscilacion\n')
      printf('C1= %e\nC2= %e\nL3= %e\n',c1,c2,l3)
      d=2
    else
      printf('Los valores de C2 y L3 no cumplen con el segundo criterio de oscilacion\n')
      printf('Debe seleccionar otro valor de L3\n')
    end
  end
  
  endfunction
