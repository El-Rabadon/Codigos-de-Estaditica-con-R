#PRÁCTICO 1
#BAIN 091
#Prof.  Magaly Moraga

#En RStudio en el menú desplegable superior elija: file->New File->R Script. En la ventana del script ingresamos la variable vida útil de las baterias con el nombre life_times (pueden usar cualquier nombre - incluir puntos - guines - mayúsculas - minúsculas y números ):

life_times<-c(2.2,3.4,2.5,3.3,4.7,4.1,1.6,4.3,3.1,3.8,3.5,3.1,3.4,3.7,3.2,4.5,3.3,3.6,4.4,2.6,3.2,3.8,2.9,3.2,3.9,3.7,3.1,3.3,4.1,3.0,3.0,4.7,3.9,1.9,4.2,2.6,3.7,3.1,3.4,3.5)
#En R cada dato se separa con una coma y los decimales con punto. Esta variable tiene 40 observaciones las que se pueden visualizar con la función dim(life_times). Para el ingreso de una variable categórica se deben ingresar las categorias entre ““, por ejemplo:

datos <- c("A", "B", "A", "C", "A", "B", "B", "C", "A", "B", "C", "C")

#Tablas de Distribución de frecuencias
#Para la variable categórica podemos resumir la información en una tabla usando la función table:
  
# Crear la tabla de distribución de frecuencia
tabla_frecuencia <- table(datos)
# Mostrar la tabla de frecuencia
print(tabla_frecuencia)

#Prueba hacer lo mismo con la variable life_times:
table(life_times)

#Para la variable life_times no es recomendable utilizar la función table. Se requiere resumir la variable en una tabla de distribución de frecuencias por intervalos para ello podemos utilizar el paquete fdth que incluye la función fdt que nos permite construir tablas de distribución de frecuencias agrupadas en intervalos. Se debe instalar la librería fdth:
install.packages("fdth")
library(fdth)

#Ahora, podemos construir una tabla de distribución de frecuencias utilizando regla de Sturges. La función na.rm=TRUE se utiliza cuando hay observaciones faltantes (no es el caso, se puede omitir)

tablaLife <-fdt(life_times,breaks="Sturges")
tablaLife

#Como la tabla obtenida contiene muchos decimales, podemos personalizarla indicando valor de inicio, valor final y la amplitud del intervalo:

tablaLife1 <- fdt(life_times, start=1.5, end=5, h=0.5)
tablaLife1
