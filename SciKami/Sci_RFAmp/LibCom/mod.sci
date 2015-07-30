//Autor: Ing. Manuel Pérez P.
//Distribución Libre - 2006
function [mod]=mod(f,fc,s,bl,fo,ab)
select s,
  case 1 then
            //Modulación AM
            m=input('Introduzca el índice de modulación')
            mod=(1+m.*f).*sin(2*%pi*fc*t);
            subplot(211)
            fftgraf(mod,t)
            subplot(212)
            plot2d(t,mod)
            
    case 2 then
            //Modulación DBL-SP
            mod=f.*sin(2*%pi*fc*t);
            subplot(211)
            fftgraf(mod,t)
            subplot(212)
            plot2d(t,mod)
   
   case 3 then
            //Modulación BLU
            vam=f.*sin(2*%pi*fc*t)
            select bl
              case -1 then
                mod=fpba(vam,fc-fo,ab)
              case 1 then
                mod=fpba(vam,fc+fo,ab)
              end
            subplot(211)
            fftgraf(mod,t)
            subplot(212)
            plot2d(t,mod)
   case 4 then
            //Modulación FM
            m=input('Introduzca la desviación de Frecuencia')
            fm=ints(f)
            mod=cos(2*%pi*fc*t+2*%pi*m*fm)
            subplot(211)
            fftgraf(mod,t)
            subplot(212)
            plot2d(t,mod)    
   end
            
endfunction

