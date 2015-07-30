//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de la ganancia de un amplificador (Parámetros S)
function [G]=GTS(s11,s12,s21,s22,rol,ros)
//Esta función realiza el cálculo de ganancia de un amplificador usando parametros S

G=(1-abs(ros)^2)*(1-abs(rol)^2)*(abs(s21)^2)/(abs((1-s11*ros)*(1-s22*rol)-s12*s21*rol*ros)^2)
printf('La ganancia del amplificador es: %f\n',G)
endfunction
