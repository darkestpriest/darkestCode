//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Diseño de Red de Adaptación tipo T
function [Xp1,Xs1,Xp2,Xs2]=RT(Rg,Rl,Q)
//Calcula las impedancias necesarias para adaptar dos impedancias
//Usando una red T
  
  if Rl>Rg then
    R=RVirtT(Rg,Q)
    [Xp2,Xs2]=RAL(Rl,R)
    [Xp1,Xs1]=RAL(Rg,R)
  else
    R=RVirtT(Rl,Q)
    [Xp1,Xs1]=RAL(Rg,R)
    [Xp2,Xs2]=RAL(Rl,R)
  end
  endfunction
