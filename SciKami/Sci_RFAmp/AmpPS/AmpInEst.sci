//Autor: Ing. Manuel Pérez P.
//Libre distribución - 2009
//Diseño de Amplificadores Inestables en RF
function AmpEst=AmpInEst(yi,yo,yf,yr,nf,k)
//Esta función realiza el Cálculo de Amplificadores Inestables en RF
//Esta función calcula los valores de Máxima ganancia Disponible, YL, YS y
//Ganancia de transconductancia de un amplificador RF usando parámetros Y

M=MAG(yi,yo,yf);
Gl=k*(abs(yr*yf)+real(yr*yf))/(2*(real(yi)+(1/nf)))-real(yo)
Bl=-imag(yo)*%i
Zl=1/(Gl+Bl)
Bs=-imag(yi-(yr*yf)/(yo+Gl+Bl))*%i
Gs=1/nf
Zs=1/(Gs+Bs)
printf('YL = %f + %fj\n',Gl,imag(Bl))
printf('ZL = %f + %fj\n',real(Zl),imag(Zl))
printf('YS = %f + %fj\n',Gs,imag(Bs))
printf('ZS = %f + %fj\n',real(Zs),imag(Zs))
G=GT(yi,yo,yf,yr,1/Zs,1/Zl);
messagebox(["MAG="+string(M) "YS="+string(Gl)+" + "+string(imag(Bl))+"j" "YL="+string(Gs)+" + "+string(imag(Bs))+"j" "GT="+string(G)],"Resultados Obtenidos","info");
endfunction
