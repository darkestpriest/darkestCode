mmho=1e-3;
datos=['yi','yo','yf','yr','ys','yl'];
[ok,yi,yo,yf,yr,ys,yl]=getvalue(['<html><b>Cálculo de la Ganancia de<br>Transconductancia</b><br>Amplificadores Estables<br>Parámetros Y <i>(mmho)</i></html>'],datos,list("vec",1,"vec",1,"vec",1,"vec",1,"vec",1,"vec",1),["0+%i*0","0+%i*0","0+%i*0","0+%i*0","0+%i*0","0+%i*0"]);
if ok==%t then
  GT(yi*mmho,yo*mmho,yf*mmho,yr*mmho,ys*mmho,yl*mmho);
else
  messagebox("Proceso cancelado por el usuario","¡Atención!","warning","Aceptar");
end
