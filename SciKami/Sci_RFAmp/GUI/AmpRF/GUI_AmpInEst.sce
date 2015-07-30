mmho=1e-3;
datos=['yi','yo','yf','yr','R para Óptima NF','k Stern'];
[ok,yi,yo,yf,yr,nf,k]=getvalue(['<html><b>Análisis de Amplificadores Inestables</b><br>Parámetros Y <i>(mmho)</i></html>'],datos,list("vec",1,"vec",1,"vec",1,"vec",1,"vec",1,"vec",1),["0+%i*0","0+%i*0","0+%i*0","0+%i*0","0","3"]);
if ok==%t then
  AmpInEst(yi*mmho,yo*mmho,yf*mmho,yr*mmho,nf,k);
  else
    messagebox("Proceso cancelado por el usuario","!Atención!","warning","Aceptar");
end
