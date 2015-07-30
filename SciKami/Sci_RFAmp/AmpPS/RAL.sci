//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Diseño de Red de Adaptación tipo L
function [Xp,Xs]=RAL(Rg,Rl)
//Calcula las impedancias necesarias para adaptar dos impedancias
//Usando una red L
  
  if Rg==Rl then
    printf('La red ya está adaptada\n');
    
    elseif Rl>Rg then
      Q=QRA(Rl,Rg)
      Xs=Q*Rg
      Xp=Rl/Q
    else
      Q=QRA(Rg,Rl)
      Xs=Q*Rl
      Xp=Rg/Q
    end
  
    
  endfunction
