mmho=1e-3;
datos=['yi','yo','yf','yr'];
[ok,yi,yo,yf,yr]=getvalue(['<html><b>Análisis de Amplificadores</b><br>Parámetros Y <i>(mmho)</i></html>'],datos,list("vec",1,"vec",1,"vec",1,"vec",1),["0+%i*0","0+%i*0","0+%i*0","0+%i*0"]);
if ok==%t then
  analizoTRF(yi*mmho,yo*mmho,yf*mmho,yr*mmho);
else
  messagebox("Proceso cancelado por el usuario","!Atención!","warning","Aceptar");
end
