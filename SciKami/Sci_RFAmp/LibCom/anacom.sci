function [] = anacom()
//función que permite la graficación de sistemas de comunicaciones analógicos, tanto en el tiempo como en el dominio de la frecuencia
disp("============================================================================================")
disp("UNEFA - 2006. Diseñado por: Ing. Manuel Pérez P.")
disp("Comunicaciones I - Graficación de señales moduladas en sistemas de comunicaciones analógicos")
disp("============================================================================================")
disp("Seleccione una opción:")
disp("     1  -  AM (DBL-GP)")
disp("     2  -  DBL-SP")
disp("     3  -  BLU")
disp("     4  -  FM")
disp("============================================================================================")
itype=input("")
select itype,
    case 1 then
            disp("Graficación de señales AM")
            labels=["Frecuencia de Portadora";"Tiempo máximo de graficación";"Índice de Modulación"];
            [ok,fc,tm,m]=getvalue("Modulación AM",labels,list("vec",1,"vec",1,"vec",1),["455000";"0.001";"0.5"]);
            tc=1/(10*fc);
            t=0:tc:tm;
            vm=input("Introduzca la señal Moduladora (mensaje)");
            //Modulación AM
            vam=(1+m.*vm).*sin(2*%pi*fc*t);
            N=size(t,'*');
            fam=fft(vam);
            f=(1/tc)*(0:(N/2))/N; 
            n=size(f,'*');
            subplot(211)
            plot2d(t,vam)
            subplot(212)
            plot2d(f,abs(fam(1:n)))
            disp("El cálculo ha finalizado con éxito")

     case 2 then
             disp("Graficación de señales DBL-SP")
             labels=["Frecuencia de Portadora";"Tiempo máximo de graficación"];
             [ok,fc,tm]=getvalue("Modulación DBL-SP",labels,list("vec",1,"vec",1),["455000";"0.001"]);
             tc=1/(10*fc);
             t=0:tc:tm;
             vm=input("Introduzca la señal Moduladora (mensaje)");
             //Modulación DBL-SP
             vam=vm.*sin(2*%pi*fc*t);
             N=size(t,'*');
             fam=fft(vam);
             f=(1/tc)*(0:(N/2))/N; 
             n=size(f,'*');
             subplot(211)
             plot2d(t,vam)
             subplot(212)
             plot2d(f,abs(fam(1:n)))
             disp("El cálculo ha finalizado con éxito")
     case 3 then
             disp("Graficación de señales BLU")
             labels=["Frecuencia de Portadora";"Tiempo máximo de graficación";"Ancho de banda del filtro de salida";"Frecuencia central del filtro de salida"];
             [ok,fc,tm,bw,fo]=getvalue("Modulación BLU",labels,list("vec",1,"vec",1,"vec",1,"vec",1),["20";"4";"2";"30"]);
             tc=1/(25*fc);
             t=0:tc:tm;
             vm=input("Introduzca la señal Moduladora (mensaje)");
             //Modulación BLU
             vam=vm.*sin(2*%pi*fc*t);
             N=size(t,'*');
             fam=fft(vam);
             d=poly(0,'f');
             pa=poly([(fo-0.5*bw)*(-0.5-0.866*%i) (-fo+0.5*bw) (fo-0.5*bw)*(-0.5+0.866*%i) ],'f')
             pb=poly([(fo+0.5*bw)*(-0.5-0.866*%i) (-fo-0.5*bw) (fo+0.5*bw)*(-0.5+0.866*%i) ],'f')
             d=poly(0,'f')
             gba=((fo-0.5*bw)^3)*d^6/pa^2
             gpb=((fo+0.5*bw)^3)/pb^2
             f=(1/tc)*(0:(N/2))/N; 
             n=size(f,'*');
             ff=abs(fam(1:n));
             fpb=horner(gpb,f)
             fpa=horner(gba,f)
             fblu=ff.*abs(fpb^58).*abs(fpa^58)
             plot2d(f,abs(fblu(1:n)))
             disp("El cálculo ha finalizado con éxito")
     end
endfunction
