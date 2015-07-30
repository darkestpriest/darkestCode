//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de RL para un Amplificador de Potencia RF
function [R]=RLo(Vcc,Vsat,P)
//Función que realiza el cálculo de la Resistencia Óptima de Carga
//que debe ver el amplificador de potencia RF

  RL=((Vcc-Vsat)^2)/(2*P)

endfunction
