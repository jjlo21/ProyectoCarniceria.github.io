# Proyecto_carniceria
#PROMEDIO DE VENTAS CARNICERIA
***
 En su labor como programador de software ha sido elegido para el desarrollo de una aplicación que necesita un administrador de una carniceria, que desea calcular el promedio de ventas diarias de su negocio. Como información básica de cada cliente se debe registrar el numero de identificación, su nombre y la compra realizada.
\
**Aclaraciones:**
+ Se supondrá que la aplicación solo se requiere para calcular el promedio de un dia en especifico. 
+ Para efectos de mantener la simplicidad del ejemplo no se contemplan manejar persistencia en el almacenamiento de los datos. 
+ No se realiza validación, ni se verifica calidad en los datos ingresados 

**Historia de usuario**
\
![](https://github.com/jjlo21/Pro_carniceria/blob/main/2023-06-15%20(6).png?raw=true)

***

**Diagrama de flujo**
\
![](https://github.com/jjlo21/Pro_carniceria/blob/main/2023-06-15%20(5).png?raw=true)

***
## CASO DE USO

**Nombre:** Calculador del Promedio de ventas diario
\
**Actores:** Administrador carniceria
\
**Propósito:** Guardar identificación, nombre, compra
\
**Curso Normal de Eventos:**
1. El administrador de la carniceria ingresa la cantidad de clientes.
2. El administrador de la carniceria ingresa la identificación, nombre, valor de la compra.
3. Se calcula el promedio a partir de:
(Total ventas) / Cantidad clientes
4. Se Muestra el promedio de las ventas obtenidas en el dia
![](https://github.com/jjlo21/Pro_carniceria/blob/main/CASO%20DE%20USO.jpeg?raw=true)

***
##Aproximación Seudocódigo
\

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

***

##Codigo java 
\

import java.util.Scanner;
public class por_carniceria
{
    
    
    public static void main(String args[]){
        Scanner leer = new Scanner(System.in);
        int cantidad_clientes;
        int i;
        int id;
        int identificacion_cli[];
        String nom;
        String nombre[];
        int promedio;
        int ven;
        int venta[];
        promedio = 0;
        System.out.println("Ingrese la cantidad de clientes");
        cantidad_clientes = leer.nextInt();
        identificacion_cli = new int[60];
        nombre = new String[50];
        venta = new int[50];
        for (i=1;i<=cantidad_clientes;i++) {
            System.out.println("ingrese identiicacion del cliente "+i);
            id = leer.nextInt();
            identificacion_cli[i] = id;
            System.out.println("ingrese nombre del cliente "+i);
            nom = leer.next();
            nombre[i] = nom;
            System.out.println("ingrese valor de compra del cliente "+i);
            ven = leer.nextInt();
            venta[i] = ven;
        }
        for (i=1;i<=cantidad_clientes;i++) {
            promedio = promedio+venta[i];
        }
        promedio = promedio/cantidad_clientes;
        System.out.println("Promedio de ventas del dia = "+promedio);
    }

}

