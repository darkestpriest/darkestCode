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
//Menú AMP_RF
//Sub menus - funciones
o='GUI/AmpRF/';
m1=['Amplificadores Estables(Y)' 'exec(o+''GUI_AmpEst.sce'');'];
m2=['Amplificadores Inestables(Y)' 'exec(o+''GUI_AmpInEst.sce'');'];
m3=['Analizar Transistor(Y)' 'exec(o+''GUI_analizoTRF.sce'');'];
m4=['Analizar Transistor(S)' 'exec(o+''GUI_analizoTRFS.sce'');'];
m5=['Estabilidad de Linvill' 'exec(o+''GUI_CLinvill.sce'');'];
m6=['Estabilidad de Rollett' 'exec(o+''GUI_DRollett.sce'');'];
m7=['Constante DS (S)' 'exec(o+''GUI_Ds.sce'');'];
m8=['Polarización Emisor C.' 'exec(o+''GUI_ECap.sce'');'];
m9=['Cálculo de Gm y RPi' 'exec(o+''GUI_GmRp.sce'');'];
m10=['Ganancia de Transconductancia (Y)' 'exec(o+''GUI_GT.sce'');'];
m11=['Ganancia de Transconductancia (S)' 'exec(o+''GUI_GTS.sce'');'];
m12=['Estabilidad de Stern' 'exec(o+''GUI_KStern.sce'');'];

submenu=[m1(1),m2(1),m3(1),m4(1),m9(1),m7(1),m5(1),m6(1),m12(1),m10(1),m11(1),m8(1)];

addmenu('Amp_RF',submenu);
//chdir(p+'/AmpRF');

Amp_RF=[m1(2);m2(2);m3(2);m4(2);m9(2);m7(2);m5(2);m6(2);m12(2);m10(2);m11(2);m8(2)];
//Fin Menú AMP_RF
