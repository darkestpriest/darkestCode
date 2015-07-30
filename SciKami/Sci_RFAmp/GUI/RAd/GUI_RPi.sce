datos=['Rg','Rl','Q'];
[ok,Rg,Rl,Q]=getvalue(['<html><b>Diseño de una red de Adaptación<br><i>tipo Pi</i></b></html>'],datos,list("vec",1,"vec",1,"vec",1),["1000","100","10"]);
if ok==%t then
     [Xp1,Xs1,Xp2,Xs2]=RPi(Rg,Rl,Q);
    messagebox(["Xp1 = "+string(Xp1) "Xs1 = "+string(Xs1) "Xp2 = "+string(Xp2) "Xs2 = "+string(Xs2)],"Diseño Red Pi","info");
  
else
  messagebox("Proceso cancelado por el usuario","¡Atención!","warning","Aceptar");
end
