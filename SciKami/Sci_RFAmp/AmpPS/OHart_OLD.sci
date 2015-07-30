//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Diseño de un oscilador Hartley
function [c1,c2,l3]=OHart(gm,f,rin)
//Esta función realiza el cálculo de los componentes necesarios para la implementación
//de un Oscilador Hartley
  
  x1=rin*100
  om=2*%pi*f
  l1=x1/om
  ctemp=1/(om*x1)
  printf('L1 = %e\n',l1)
  printf('X2 debe ser mayor que %e para cumplir con el primer criterio de oscilacion\n',x1)
  printf('Por lo tanto C3 debe ser menor a %e paraa que se cumpla dicho criterio\n',ctemp)
  d=1
  while d==1,
    c3=input('Introduzca el valor de C3: ');
    x3=1/(om*c3)
    l2=(x3-x1)/om
    printf('Para C3 = %e el valor de L2 es: %e\n',c3,l2);
    printf('Comprobando si los valores obtenidos de C3 y L2 cumplen con el segundo criterio de oscilacion\n')
    xtemp=om*om*c3*l2
    if xtemp<1 then
      printf('Los valores de L2 y C3 cumplen con el segundo criterio de oscilacion\n')
      printf('C1= %e\nC2= %e\nL3= %e\n',l1,l2,c3)
      d=2
    else
      printf('Los valores de L2 y C3 no cumplen con el segundo criterio de oscilacion%e\n',xtemp)
      printf('Debe seleccionar otro valor de C3\n')
    end
  end
  
  endfunction
