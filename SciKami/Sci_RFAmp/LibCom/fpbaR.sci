function f=fpbaR(t,fin,bw,fo)
  filtro=cos(2*%pi*fo*t).*exp(-2*%pi*bw*t)
  [f,d]=convol(filtro,fin)
endfunction

