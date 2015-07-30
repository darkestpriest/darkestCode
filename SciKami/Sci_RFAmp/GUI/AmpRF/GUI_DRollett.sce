datos=['S11','S12','S21','S22'];
[ok,s11,s12,s21,s22]=getvalue(['<html><b>Estabilidad de Rollett</b><br> Parámetros S</html>'],datos,list("vec",2,"vec",2,"vec",2,"vec",2),["0 0","0 0","0 0","0 0"]);
if ok==%t then
  D=DRollett(s11(1),s11(2),s12(1),s12(2),s21(1),s21(2),s22(1),s22(2));
  if D>1 then
    mens="<html><font color=''blue''><b>Amplificador incondicionalmente estable</b></font></html>";
  else
    mens="<html><font color=''red''><b>Amplificador potencialmente inestable</b></font></html>";
  end
  messagebox(["K = "+string(D) string(mens)],"Estabilidad de Rollett","info");
else
  messagebox("Proceso cancelado por el usuario","!Atención!","warning","Aceptar");
end
