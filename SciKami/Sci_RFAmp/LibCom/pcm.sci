//Autor: Ing. Manuel P�rez P.
//Distribuci�n Libre - 2006
function [pcm] = pcm(fm,u)
//Funci�n que permite la obtenci�n de se�ales PCM a partir de una se�al anal�gica
//Esta funci�n realiza el muestreo de techo plano de una se�al anal�gica y genera una se�al digital serial utilizando el c�digo binario de 4 bits
//Esta modulaci�n logra diferenciar entre valores negativos y positivos de la se�al en estudio, la diferencia en el c�digo binario es colocar en el MSB de cada n�mero generado un uno para las se�ales negativas y cero para las se�ales positivas
//Para el funcnionamiento correcto de esta funci�n es necesario la introducci�n de los siguientes valores:
//fm = Frecuencia de Muestreo de Techo Plano
//u = factor de compansi�n
//Una vez introducidos estos valores en la funci�n PCM, esta necesitar� la introducci�n de la se�al a estudiar.
//Terminado la generaci�n de la se�al PCM se produce un gr�fico mostrando la se�al generada y a su vez se guarda en la memoria del Scilab una matr�z PCM con toda la informaci�n num�rica del resultado, quedando disponible para cualquier c�lculo posterior
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
