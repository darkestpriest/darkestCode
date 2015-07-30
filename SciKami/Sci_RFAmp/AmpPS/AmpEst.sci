//Autor: Ing. Manuel P�rez P.
//Libre distribuci�n - 2009
//Analizador de Amplificadores en RF
function AmpEst=AmpEst(yi,yo,yf,yr)
//Esta funci�n calcula los valores de M�xima ganancia Disponible, YL, YS y
//Ganancia de transconductancia de un amplificador RF usando par�metros Y

M=MAG(yi,yo,yf);
[sr,si]=YS(yi,yo,yf,yr);
[lr,li]=YL(yi,yo,yf,yr);
ys=sr+si;
yl=lr+li;
G=GT(yi,yo,yf,yr,ys,yl);
messagebox(["MAG="+string(M) "YS="+string(sr)+" + "+string(imag(si))+"j" "YL="+string(lr)+" + "+string(imag(li))+"j" "GT="+string(G)],"Resultados Obtenidos","info");
endfunction
