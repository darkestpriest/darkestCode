datos=['vce','ic','hfe'];
[ok,vce,ic,hfe]=getvalue(['<html><b>Diseño de Circuitos</b><br><i>Amplificador emisor común</i></html>'],datos,list("vec",1,"vec",1,"vec",1),["5","5e-3","500"]);
if ok==%t then
  [rc,re,r1,r2]=ECap(vce,ic,hfe);
else
  messagebox("Proceso cancelado por el usuario","!Atención!","warning","Aceptar");
end
