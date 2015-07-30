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
//Menú Redes de Adaptación
//Sub menus - funciones
p='GUI/RAd/';
m1=['Factor Q' 'exec(p+''GUI_QRA.sce'');'];
m2=['Red L' 'exec(p+''GUI_RAL.sce'');'];
m3=['Red Pi' 'exec(p+''GUI_RPi.sce'');'];
m4=['Red T' 'exec(p+''GUI_RT.sce'');'];
m5=['R Virtual Pi' 'exec(p+''GUI_RVirtPi.sce'');'];
m6=['R Virtual T' 'exec(p+''GUI_RVirtT.sce'');'];
m7=['Cálculo de C/I' 'exec(p+''GUI_P_reactancia.sce'');'];
m8=['Cálculo Z Paralelas' 'exec(p+''GUI_paralelo.sce'');'];

submenu=[m1(1), m2(1), m3(1), m4(1), m5(1),m6(1), m7(1), m8(1)];

addmenu('RAd',submenu);
//chdir(p+'/AmpRF');

RAd=[m1(2);m2(2);m3(2);m4(2);m5(2);m6(2);m7(2); m8(2)];
//Fin Menú RAd