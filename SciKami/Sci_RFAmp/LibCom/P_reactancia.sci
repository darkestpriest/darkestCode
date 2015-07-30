//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de parámetros de una reactancia
function [P]=P_reactancia(x,f)
//Esta función calcula el valor del parámetro correspondiente a la reactancia
//en cuestión.
//Además identifica si es una inductor o un capacitor

  w=2*%pi*f
  if x>1 then
    P=x/w
    printf("El valor del inductor es: %e\n",P);
  else
    P=-1/(x*w)
    printf("El valor del capacitor es: %e\n",P);
  end
  
endfunction
