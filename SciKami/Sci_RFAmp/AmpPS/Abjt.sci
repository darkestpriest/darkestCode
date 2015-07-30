//Este script Scilab es Software Libre y se distribuye gratuitamente bajo
//licencia GPL, por lo que está permitida su copia o distribución bajo los
//criterios de la misma.
//Ante cualquier problema, consulta, sugerencia, etc, puede escribir a
//darkpriestrelative@gmail.com, o dejar un mensaje en el sitio
//http://jingmap.blogspot.com
//Para descargar actualizaciones u obtener mayor documentación consulte la
//ayuda en línea del programa o visite la página oficial del proyecto
//(http://jingmap.blogspot.com).
//
//Libre distribución - 2009
//Diseño de Circuito de Polarización de un Amplificador Emisor Común Autopolarizado
function [Vce,Ib,Ic,Vbe]=Abjt(R1,R2,Rc,Re,Vcc,hfe)
//Esta función realiza el diseño de un circuito de Polarización de un Amplificador Emisor Común Autopolarizado
//Ofreciendo como resultado Rc, Re, R1 y R2
  Vc=(Vce+2.5);
  Vcc=2*Vc;
  printf('Vcc=%f\n',Vcc);
  Re=2.5/Ic;
  Rc=Vc/Ic;
  Ib=Ic/hfe;
  printf('Ib=%f\n',Ib);
  Ibb=8*Ib;
  R1=3.2/Ibb;
  R2=(Vcc-3.2)/(Ib+Ibb)
  messagebox(["Vcc="+string(Vcc) "Ib="+string(Ib) "Rc="+string(Rc) "Re="+string(Re) "R1="+string(R1) "R2="+string(R2)],"Resultados Obtenidos","info");
  endfunction
