datos=['x','f'];
[ok,x,f]=getvalue(['<html><b>Cálculo de<i> C/I</i></b><br>a partir de la <i>Reactancia</i></html>'],datos,list("vec", 1,"vec", 1),["1000","1e6"]);
if ok==%t then
  [P]=P_reactancia(x,f);
  if x>1 then
    messagebox(["Inductor = "+string(P)],"Cálculo de Inductancia","info");
  else
    messagebox(["Capacitor = "+string(P)],"Cálculo de Capacitor","info");
  end
    
else
  messagebox("Proceso cancelado por el usuario","¡Atención!","warning","Aceptar");
end