//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Cálculo de YS de un amplificador RF
function [Gl,Bl]=YL(yi,yo,yf,yr)
//Esta función realiza el cálculo de la admitancia de la carga que garantiza la estabilidad
//del amplificador

Gl=sqrt((2*real(yi)*real(yo)-real(yr*yf))*(2*real(yi)*real(yo)-real(yr*yf))-abs(yf*yr)*abs(yr*yf))/(2*real(yi))
Bl=-%i*imag(yo)+%i*imag(yf*yr)/(2*real(yi));
Zl=1/(Gl+Bl);
printf('YL = %f + %fj\n',Gl,imag(Bl))
printf('ZL = %f + %fj\n',real(Zl),imag(Zl))

endfunction
