// Autor: Ing. Manuel Pérez P.
// Libre Distribución 2006
// Generador del espectro de una señal variable en el tiempo versión 2.0
function fftgraf(f,t)
//Función diseñada para la graficación del espectro unilateral de una señal evaluada en el tiempo.
//f es la función a evaluar, t representa la variable de dicha función.
N=size(t,'*');
tm=t(N)/(N-1);
y=2*fft(f,1);
  p=(1/tm)*(0:(N/2))/N; 
  n=size(p,'*');
plot2d(p,abs(y(1:n)),14)
endfunction
