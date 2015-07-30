datos=['S11','S12','S21','S22'];
[ok,s11,s12,s21,s22]=getvalue(['<html><b>Análisis de Amplificadores</b><br> Parámetros S</html>'],datos,list("vec",2,"vec",2,"vec",2,"vec",2),["0 0","0 0","0 0","0 0"]);
if ok==%t then
  [rl,rs,g]=analizoTRFS(s11(1),s11(2),s12(1),s12(2),s21(1),s21(2),s22(1),s22(2));
  messagebox(["RoL = "+string(rl) "RoS = "+string(rs) "GT = "+string(g)],"Resultados obtenidos","info");
else
  messagebox("Proceso cancelado por el usuario","!Atención!","warning","Aceptar");
end
