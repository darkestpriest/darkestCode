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

//Obtener la ruta de ejecución de este archivo
Cactual=get_absolute_file_path('inicio.sce');
//cambiar el directorio de trabajo de Scilab
chdir(Cactual);
//Ejecutar cargalib.sce (carga de la librería)
exec('cargalib.sce');
//Creación de los elementos de Menú en la GUI
p="GUI/Menu/";
//Menú AMP_RF
printf('Cargando Menú Amp_RF\n');
//Sub menus - funciones
exec(p+'Amp_RF.sce');
//Fin Menú AMP_RF
//Menú RAd
printf('Cargando Menú RAd\n');
//Sub menus - funciones
exec(p+'RAd.sce');
//Fin Menú AMP_RF
chdir(Cactual);
//Fin del archivo
