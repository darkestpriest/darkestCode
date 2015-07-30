//Autor: Ing. Manuel Pérez P.
//Distribución Libre - 2006
function [dpsk]=dpsk(f,fc,fm)


tf=size(t,'*')
txm=t(tf)/(tf-1)
txf=t(tf)*fm
for m=1:1:txf
  tmm=(m-0.5)/fm
  tc=tmm*(tf-1)
  if f(tc)>f(tc then
  bp=pulso(0.5/fm,t+(m-1)*/fm)
  
