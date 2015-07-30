//Autor: Ing. Manuel P�rez P.
//Libre distribuci�n - 2009
//C�lculo de par�metros de una reactancia
function [P]=P_reactancia(x,f)
//Esta funci�n calcula el valor del par�metro correspondiente a la reactancia
//en cuesti�n.
//Adem�s identifica si es una inductor o un capacitor

  w=2*%pi*f
  if x>1 then
    P=x/w
    printf("El valor del inductor es: %e\n",P);
  else
    P=-1/(x*w)
    printf("El valor del capacitor es: %e\n",P);
  end
  
endfunction
