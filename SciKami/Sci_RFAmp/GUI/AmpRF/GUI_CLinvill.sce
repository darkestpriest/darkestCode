mmho=1e-3;
datos=['yi','yo','yf','yr'];
[ok,yi,yo,yf,yr]=getvalue(['<html><b>Estabilidad de Linvill</b><br>Parámetros Y <i>(mmho)</i></html>'],datos,list("vec",1,"vec",1,"vec",1,"vec",1),["0+%i*0","0+%i*0","0+%i*0","0+%i*0"]);
if ok==%t then
  C=CLinvill(yi*mmho,yo*mmho,yf*mmho,yr*mmho);
  if C<1 then
    mens="<html><font color=''blue''><b>Amplificador incondicionalmente estable</b></font></html>";
  else
    mens="<html><font color=''red''><b>Amplificador potencialmente inestable</b></font></html>";
  end
  messagebox(["C = "+string(C) string(mens)],"Estabilidad de Linvill","info");
else
  messagebox("Proceso cancelado por el usuario","!Atención!","warning","Aceptar");
end
