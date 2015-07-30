//Demostración
//
//Definición del Script
function [r,j,va]=funcion(a,b)
    
    //Multiplicar
    resultado=a*b
    
    //Parte real
    r=real(resultado)
    
    //Parte Imaginaria
    j=imag(resultado)

    //Valor absoluto
    va=abs(resultado)
    
    //Impresión de resultados sin formato
    disp(r)
    disp(j)
    disp(va)
    
    //Impresión de resultados con formato
    printf("El resultado de la multiplicación es:")
    disp(resultado)
    
    printf("La parte real del resultado es:%f\n",r)
    printf("La parte imaginaria del resultado es:%f\n",j)
    printf("El valor absoluto del resultado es:%f\n",va)



endfunction