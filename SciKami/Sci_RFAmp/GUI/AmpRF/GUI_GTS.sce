datos=['s11','s12','s21','s22','RoS','RoL'];
[ok,s11,s12,s21,s22,rs,rl]=getvalue(['<html><b>Cálculo de la Ganancia de<br>Transconductancia</b><br> Parámetros S</html>'],datos,list("vec",2,"vec",2,"vec",2,"vec",2,"vec",2,"vec",2),["0 0","0 0","0 0","0 0","0 0","0 0"]);
if ok==%t then
  gts=GTS(PolarCompl(s11(1),s11(2)),PolarCompl(s12(1),s12(2)),PolarCompl(s21(1),s21(2)),PolarCompl(s22(1),s22(2)),PolarCompl(rs(1),rs(2)),PolarCompl(rl(1),rl(2)));
  messagebox(["GT = "+string(gts) ],"Constante Ds","info");
else
  messagebox("Proceso cancelado por el usuario","!Atención!","warning","Aceptar");
end
