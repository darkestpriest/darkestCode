//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Analizador de Amplificadores en RF
function AmpEst=AmpEst(yi,yo,yf,yr)
//Esta función calcula los valores de Máxima ganancia Disponible, YL, YS y
//Ganancia de transconductancia de un amplificador RF usando parámetros Y

M=MAG(yi,yo,yf);
[sr,si]=YS(yi,yo,yf,yr);
[lr,li]=YL(yi,yo,yf,yr);
ys=sr+si;
yl=lr+li;
G=GT(yi,yo,yf,yr,ys,yl);
messagebox(["MAG="+string(M) "YS="+string(sr)+" + "+string(imag(si))+"j" "YL="+string(lr)+" + "+string(imag(li))+"j" "GT="+string(G)],"Resultados Obtenidos","info");
endfunction
