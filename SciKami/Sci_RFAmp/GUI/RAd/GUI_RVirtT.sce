datos=['Rs','Q'];
[ok,Rh,Q]=getvalue(['<html><b>Cálculo de R Virtual<br><i>tipo T</i></b></html>'],datos,list("vec",1,"vec",1),["1000","10"]);
if ok==%t then
     [R]=RVirtT(Rh,Q);
    messagebox(["R Virtual = "+string(R)],"Cálculo de R Virtual - Red T","info");
  
else
  messagebox("Proceso cancelado por el usuario","¡Atención!","warning","Aceptar");
end
