Proceso Carniceria
	Definir cantidad_clientes Como Entero
	Definir promedio Como Entero
	promedio=0
	Definir identificacion_cli, venta Como Entero
	Definir nombre Como Caracter
	Definir i Como Entero
	Definir id, ven Como Entero
	Definir nom Como Caracter
	
	Escribir "Ingrese la cantidad de clientes"
	Leer cantidad_clientes
	
	Dimension  identificacion_cli[60], nombre[50], venta[50]
	
	Para i=1 Hasta cantidad_clientes Con Paso 1 Hacer
		Escribir "ingrese identiicacion del cliente", i
		leer id
		identificacion_cli[i]=id
		
		Escribir "ingrese nombre del cliente", i
		leer nom
		nombre[i]=nom
		
		Escribir "ingrese valor de compra del cliente", i
		leer ven
		venta[i]=ven
	Fin Para
	
	Para i=1 Hasta cantidad_clientes Con Paso 1 Hacer
		promedio=promedio+venta[i]
	Fin Para
	
	promedio=promedio/cantidad_clientes
	Escribir "Promedio de ventas del dia = ", promedio
	
FinProceso
