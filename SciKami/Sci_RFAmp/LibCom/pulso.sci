// Autor: Ing. Manuel Pérez P.
// Libre Distribución 2006
// Generador de pulsos no periódicos versión 2006
function [p]=pulso(d,t)
// Función que genera un pulso rectangular finito en el tiempo
// Parámetros de entrada:
// d = Ancho de duración del pulso en el tiempo
// t = Variable independiente
p=(sign(t)+sign(d-t))*0.5
endfunction
