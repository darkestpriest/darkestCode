//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de Q de una red de Adaptación
function [Q]=QRA(Rh,Rs)
//Cálculo del Factor de Calidad de una red de adaptación cualquiera
//independiente de su constitución
  if Rh<Rs then
    printf('Rh debe ser mayor a Rs\n');
  else
    Q=sqrt((Rh/Rs)-1);
    end
  
  endfunction  
