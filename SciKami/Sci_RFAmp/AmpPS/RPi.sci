//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Diseño de Red de Adaptación tipo Pi
function [Xp1,Xs1,Xp2,Xs2]=RPi(Rg,Rl,Q)
//Calcula las impedancias necesarias para adaptar dos impedancias
//Usando una red Pi
  
  if Rl>Rg then
    R=RVirtPi(Rl,Q)
    [Xp2,Xs2]=RAL(Rl,R)
    [Xp1,Xs1]=RAL(Rg,R)
  else
    R=RVirtPi(Rg,Q)
    [Xp1,Xs1]=RAL(Rg,R)
    [Xp2,Xs2]=RAL(Rl,R)
  end
  endfunction
