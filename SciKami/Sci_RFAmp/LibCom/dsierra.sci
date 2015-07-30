// Autor: Ing. Manuel Pérez P.
// Libre Distribución 2006
// Generador de señales diente de sierra versión 1.0
function [d] = dsierra(t,a,fr)
//Función que genera una onda diente de sierra en función de la variable t, designada por el usuario
//  Descripción de las variables de entrada
//  t = Variable independiente designada de la onda diente de sierra
//  a = Amplitud pico de la señal diente de sierra.
//  fr = Frecuencia de la señal Diente de sierra.
//
d=a*fr*t-a*(ceil(t*fr)-1)
endfunction
