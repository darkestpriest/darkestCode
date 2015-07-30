//Autor: Ing. Manuel Pérez P.
//Distribución Libre - 2006
function [pcm] = pcm(fm,u)
//Función que permite la obtención de señales PCM a partir de una señal analógica
//Esta función realiza el muestreo de techo plano de una señal analógica y genera una señal digital serial utilizando el código binario de 4 bits
//Esta modulación logra diferenciar entre valores negativos y positivos de la señal en estudio, la diferencia en el código binario es colocar en el MSB de cada número generado un uno para las señales negativas y cero para las señales positivas
//Para el funcnionamiento correcto de esta función es necesario la introducción de los siguientes valores:
//fm = Frecuencia de Muestreo de Techo Plano
//u = factor de compansión
//Una vez introducidos estos valores en la función PCM, esta necesitará la introducción de la señal a estudiar.
//Terminado la generación de la señal PCM se produce un gráfico mostrando la señal generada y a su vez se guarda en la memoria del Scilab una matríz PCM con toda la información numérica del resultado, quedando disponible para cualquier cálculo posterior
tm=1/fm
g=mutepla(fm,0.95*tm)
f=15*log(1+u*(g+8)/15)/log(1+u)
N=size(t,'*')
tf=t(N)
fg=(size(t,'*')-1)/tf
tx=0:tm:tf
nd=size(tx,'*')
pcm=0
for td=1:1:nd
  cont=floor(f(floor(N*td/nd)))
  fg(td)=cont
  xcc=(td-1)*tm
  itype = cont
    select itype,
      case 1 then
        mcp=pulso(tm,t-xcc)

      case 2 then
        mcp=pulso(0.75*tm,t-xcc)

      case 3 then
        mcp=pulso(0.5*tm,t-xcc)+pulso(0.25*tm,t-xcc-0.75*tm)

      case 4 then
        mcp=pulso(0.5*tm,t-xcc)

      case 5 then
        mcp=pulso(0.25*tm,t-xcc)+pulso(0.5*tm,t-xcc-0.5*tm)

      case 6 then
        mcp=pulso(0.25*tm,t-xcc)+pulso(0.25*tm,t-xcc-0.5*tm)

      case 7 then
        mcp=pulso(0.25*tm,t-xcc)+pulso(0.25*tm,t-xcc-0.75*tm)

      case 8 then
        mcp=pulso(0.25*tm,t-xcc)

      case 9 then
        mcp=pulso(0.25*tm,t-xcc-0.75*tm)

      case 10 then
        mcp=pulso(0.25*tm,t-xcc-0.5*tm)

      case 11 then
        mcp=pulso(0.5*tm,t-xcc-0.5*tm)

      case 12 then
        mcp=pulso(0.25*tm,t-xcc-0.25*tm)

      case 13 then
        mcp=pulso(0.25*tm,t-xcc-0.25*tm)+pulso(0.25*tm,t-xcc-0.75*tm)

      case 14 then
        mcp=pulso(0.5*tm,t-xcc-0.25*tm)

      case 15 then
        mcp=pulso(0.75*tm,t-xcc-0.25*tm)
      else
      if itype<1  then
      mcp=pulso(tm,t-xcc)
      else 
      mcp=pulso(0.75*tm,t-xcc-0.25*tm)
      end
      end
    pcm=pcm + mcp
  
  end
clf()
plot2d(t,pcm,20,rect=[0,-0.5,tf,1.5])
endfunction
