// Autor: Ing. Manuel P�rez P.
// Libre Distribuci�n 2006
// Generador del espectro de una se�al variable en el tiempo versi�n 2.0
function fftgraf(f,t)
//Funci�n dise�ada para la graficaci�n del espectro unilateral de una se�al evaluada en el tiempo.
//f es la funci�n a evaluar, t representa la variable de dicha funci�n.
N=size(t,'*');
tm=t(N)/(N-1);
y=2*fft(f,1);
  p=(1/tm)*(0:(N/2))/N; 
  n=size(p,'*');
plot2d(p,abs(y(1:n)),14)
endfunction
