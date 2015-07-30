datos=['s11','s12','s21','s22'];
[ok,s11,s12,s21,s22]=getvalue(['<html><b>Constante Ds</b><br> Parámetros S</html>'],datos,list("vec",2,"vec",2,"vec",2,"vec",2),["0 0","0 0","0 0","0 0"]);
if ok==%t then
  DS=Ds(PolarCompl(s11(1),s11(2)),PolarCompl(s12(1),s12(2)),PolarCompl(s21(1),s21(2)),PolarCompl(s22(1),s22(2)));
  messagebox(["Ds = "+string(DS) ],"Constante Ds","info");
else
  messagebox("Proceso cancelado por el usuario","!Atención!","warning","Aceptar");
end
