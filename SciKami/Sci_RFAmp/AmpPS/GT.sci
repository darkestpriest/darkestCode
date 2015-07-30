//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de la ganancia de un amplificador
function [G]=GT(yi,yo,yf,yr,ys,yl)
//Esta función realiza el cálculo de la ganancia de transconductancia de un amplificador
//usando parámetros Y

G=(4*real(ys)*real(yl)*abs(yf)*abs(yf))/(abs((yi+ys)*(yo+yl)-yf*yr)*abs((yi+ys)*(yo+yl)-yf*yr))
printf('La ganancia del amplificador es: %f\n',G)
endfunction
