datos=['Rh','Rs'];
[ok,Rh,Rs]=getvalue(['<html><b>Cálculo del Factor de Calidad<br>de un circuito</b></html>'],datos,list("vec",1,"vec",1),["1000","100"]);
if ok==%t then
  if Rh>Rs then
    q=QRA(Rh,Rs);
    messagebox(["Q = "+string(q) ],"Factor Q","info");
  else
    messagebox("Rh no puede ser menor a Rs","¡Atención!","warning","Aceptar");
    end
else
  messagebox("Proceso cancelado por el usuario","¡Atención!","warning","Aceptar");
end
