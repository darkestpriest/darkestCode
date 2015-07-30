mmho=1e-3;
datos=['yi','yo','yf','yr','ys','yl'];
[ok,yi,yo,yf,yr,ys,yl]=getvalue(['<html><b>Estabilidad de Stern</b><br>Parámetros Y <i>(mmho)</i></html>'],datos,list("vec",1,"vec",1,"vec",1,"vec",1,"vec",1,"vec",1),["0+%i*0","0+%i*0","0+%i*0","0+%i*0","0+%i*0","0+%i*0"]);
if ok==%t then
  K=KStern(yi*mmho,yo*mmho,yf*mmho,yr*mmho,ys*mmho,yl*mmho);
  if K>1 then
    mens="<html><font color=''blue''><b>Amplificador incondicionalmente estable</b></font></html>";
  else
    mens="<html><font color=''red''><b>Amplificador potencialmente inestable</b></font></html>";
  end
  messagebox(["K = "+string(K) string(mens)],"Estabilidad de Stern","info");
else
  messagebox("Proceso cancelado por el usuario","¡Atención!","warning","Aceptar");
end
