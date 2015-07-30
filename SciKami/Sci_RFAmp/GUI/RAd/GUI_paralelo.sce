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
// Copyleft 2010 Darkest Priest - (Manuel Pérez P. darkpriestrelative@gmail.com)
datos=['Z1','Z2'];
[ok,z1,z2]=getvalue(['<html><b>Cálculo de Impedancias equivalentes en <i>paralelo</i></b></html>'],datos,list("vec",1,"vec",1),["1000+%i*0","100+%i*0"]);
if ok==%t then
     [Zeq]=paralelo(z1,z2);
    messagebox(["Zequivalente = "+string(Zeq) ],"Impedancia Equivalente","info");
  
else
  messagebox("Proceso cancelado por el usuario","¡Atención!","warning","Aceptar");
end
