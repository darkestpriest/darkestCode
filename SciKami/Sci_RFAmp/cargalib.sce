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
//cargalib 1.1.1 (2010)
//Guión de carga de las funciones de la librería de Diseño y Analisis de Amplificadores RF
winId=waitbar("Cargando Librería de Electrónica de las Comunicaciones...");
printf('Cargando Librería de Electrónica de las Comunicaciones...\n');
ta=29;
i=0;
realtimeinit(1/9);
realtime(0);
waitbar(i/ta,"AmpPS/AmpEst.sci",winId);
exec AmpPS/AmpEst.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/AmpInEst.sci",winId);
exec AmpPS/AmpInEst.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/AnalizoTRF.sci",winId);
exec AmpPS/analizoTRF.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/AnalizoTRFS.sci",winId);
exec AmpPS/analizoTRFS.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/CLinvill.sci",winId);
exec AmpPS/CLinvill.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/DRollett.sci",winId);
exec AmpPS/DRollett.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/Ds.sci",winId);
exec AmpPS/Ds.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/ECap.sci",winId);
exec AmpPS/ECap.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/GmRp.sci",winId);
exec AmpPS/GmRp.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/GT.sci",winId);
exec AmpPS/GT.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/GTS.sci",winId);
exec AmpPS/GTS.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/KStern.sci",winId);
exec AmpPS/KStern.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/MAG.sci",winId);
exec AmpPS/MAG.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/OColp.sci",winId);
exec AmpPS/OColp.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/OHart.sci",winId);
exec AmpPS/OHart.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/PolarCompl.sci",winId);
exec AmpPS/PolarCompl.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/QRA.sci",winId);
exec AmpPS/QRA.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/RAL.sci",winId);
exec AmpPS/RAL.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/RoL.sci",winId);
exec AmpPS/RoL.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/RoS.sci",winId);
exec AmpPS/RoS.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/RPi.sci",winId);
exec AmpPS/RPi.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/RT.sci",winId);
exec AmpPS/RT.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/RVirtPi.sci",winId);
exec AmpPS/RVirtPi.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/RVirtT.sci",winId);
exec AmpPS/RVirtT.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/SMAG.sci",winId);
exec AmpPS/SMAG.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/YL.sci",winId);
exec AmpPS/YL.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/YS.sci",winId);
exec AmpPS/YS.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"AmpPS/AtanDeg.sci",winId);
exec AmpPS/AtanDeg.sci;
i=i+1;
realtime(i);
waitbar(i/ta,"LibCom...",winId);
exec("LibCom/cargacom.sce");
winclose(winId);
printf('Librería cargada con éxito!!\n');
messagebox("Librería cargada con éxito!!","Información","info");
