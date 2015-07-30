//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de YS de un amplificador RF
function [Gs,Bs]=YS(yi,yo,yf,yr)
//Esta función realiza el cálculo de la admitancia del generador que garantiza la estabilidad
//del amplificador

Gs=sqrt((2*real(yi)*real(yo)-real(yr*yf))*(2*real(yi)*real(yo)-real(yr*yf))-abs(yf*yr)*abs(yr*yf))/(2*real(yo))
Bs=-%i*imag(yi)+%i*imag(yf*yr)/(2*real(yo));
Zs=1/(Gs+Bs);
printf('YS = %f + %fj\n',Gs,imag(Bs))
printf('ZS = %f + %fj\n',real(Zs),imag(Zs))

endfunction
