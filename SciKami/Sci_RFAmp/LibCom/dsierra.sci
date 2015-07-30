// Autor: Ing. Manuel P�rez P.
// Libre Distribuci�n 2006
// Generador de se�ales diente de sierra versi�n 1.0
function [d] = dsierra(t,a,fr)
//Funci�n que genera una onda diente de sierra en funci�n de la variable t, designada por el usuario
//  Descripci�n de las variables de entrada
//  t = Variable independiente designada de la onda diente de sierra
//  a = Amplitud pico de la se�al diente de sierra.
//  fr = Frecuencia de la se�al Diente de sierra.
//
d=a*fr*t-a*(ceil(t*fr)-1)
endfunction
