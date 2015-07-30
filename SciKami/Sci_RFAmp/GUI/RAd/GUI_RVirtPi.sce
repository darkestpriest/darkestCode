datos=['Rh','Q'];
[ok,Rh,Q]=getvalue(['<html><b>Cálculo de R Virtual<br><i>tipo Pi</i></b></html>'],datos,list("vec",1,"vec",1),["1000","10"]);
if ok==%t then
     [R]=RVirtPi(Rh,Q);
    messagebox(["R Virtual = "+string(R)],"Cálculo de R Virtual - Red Pi","info");
  
else
  messagebox("Proceso cancelado por el usuario","¡Atención!","warning","Aceptar");
end
