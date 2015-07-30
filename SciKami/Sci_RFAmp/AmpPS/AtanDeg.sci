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
// Copyleft 2011 Darkest Priest - (Manuel Pérez P. darkpriestrelative@gmail.com)

//Función que permite calcular el arcotangente de un componente X y un 
//componente Y y devuelve el resultado en Grados.
//Así mismo, identifica el cuadrante en el que se encuentra el punto en cuestión
//y proporciona el ángulo correcto

//Declaración de la función
function angulo=AtanDeg(x,y)
    
    //Cálculo del arcotangente del punto x,y
    rad=atan(y/x)
    
    //Transformación del ángulo de radianes a grados
    angulo=rad*180/%pi
    
    //Corrección del ángulo
    
    if x<0 then
        //Caso 1: x negativo y y positivo
        if y>0 then
            angulo=angulo+180
        //Caso 2: x negativo y y negativo
        else
            angulo=angulo-180
        end
    end   
    
//Fin de la función
endfunction