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
// Copyleft 2010 Darkest Priest - (Manuel Pérez P. darkpriestrelative@gmail.com).
//Libre Distribución 2006
function [c]= cuadrada(fc,ct,t)
//Generador de ondas cuadradas bipolares Versión 3.0
//Función que permite la generación de una onda cuadrada en el tiempo
//la función pide como requisito la frecuencia en Hz de la onda cuadrada
//la función requiere que la variable t se encuantre definida previamente
p=ct/100;
f=p+cos(2*%pi*fc*t);
N=size(t,'*');
for xt=1:1:N
  if f(xt)<0 then
    c(xt)=-1
  else
    c(xt)=1
  end
end 
endfunction
