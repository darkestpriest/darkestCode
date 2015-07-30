datos=['Rg','Rl'];
[ok,Rg,Rl]=getvalue(['<html><b>Diseño de una red de Adaptación<br><i>tipo L</i></b></html>'],datos,list("vec",1,"vec",1),["1000","100"]);
if ok==%t then
     [Xp,Xs]=RAL(Rg,Rl);
    messagebox(["Xp = "+string(Xp) "Xs = "+string(Xs) ],"Diseño Red L","info");
  
else
  messagebox("Proceso cancelado por el usuario","¡Atención!","warning","Aceptar");
end
