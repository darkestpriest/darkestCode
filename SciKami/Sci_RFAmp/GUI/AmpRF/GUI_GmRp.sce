datos=['hfe','ic','vt'];
[ok,hfe,ic,vt]=getvalue(['<html><b>Análisis de Circuitos</b><br>Amplificador emisor común<br><i>Gm y Rpi<html></i>'],datos,list("vec",1,"vec",1,"vec",1),["100","5e-3","25e-3"]);
if ok==%t then
  [gm,rpi]=GmRp(hfe,ic,vt);
  messagebox(["Gm = "+string(gm) "RPi = "+string(rpi)],"Resultados Obtenidos","info");
else
  messagebox("Proceso cancelado por el usuario","!Atención!","warning","Aceptar");
end
