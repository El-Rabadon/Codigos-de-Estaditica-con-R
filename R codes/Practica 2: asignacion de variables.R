######################################
#PRÁCTICA 2: ASIGNACIÓN DE VARIABLES
######################################

celu = 80000;
tablet = 60000;
compu = 45000;

cat("Suma estos valores para calcular cuánto ganarás si vendes 2 celulares, 5 tablets y 8
computadores asignando a una nueva variable venta: ")

venta = 2*celu + 5*tablet + 8*compu;

cat("El total vendido es: ", venta);

cat("\n Asigna las siguientes notas: Nota 1 = 5,8 Nota 2 = 3,2 Nota 3 = 2,4 Nota 4 = 4.4")

nota1 = 5.8;
nota2 = 3.2;
nota3 = 2.4;
nota4 = 4.4;
promedio = (nota1+nota2+nota3+nota4)/4;
if (4.0<=promedio) {
  cat("\n el alumno aprobo con un: ", promedio);
} else {
  cat("\n el alumno reprobo con un: ", promedio);
}
