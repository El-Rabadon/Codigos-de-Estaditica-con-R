#Práctico 3: BAIN091
#Prof. Magaly Moraga
2024-04-02
#Estadística descriptiva con RStudioMedidas de tendencia central: media, mediana y moda
#Para el cálculo de una media simple o bien el cálculo de una media recortada se utiliza el comando mean, indicando la variable sobre la cual se desea hacer el cálculo. Para el caso de la media recortada, se agrega el argumento trim, que permite indicar la proporción de casos que se eliminan en cada extremo de la distribución de datos. Por ejemplo, Se registran las siguientes mediciones para el tiempo de secado (en horas) de cierta marca de pintura esmaltada.

# ingreso de datos
secado<-c(3.4,2.5,4.8,2.9,3.6,2.8,3.3,5.6,3.7,2.8,4.4,4.0,5.2,3.0,
          4.8, 3.4,2.5,4.8,2.9,3.6)

#Para saber cuántos datos tiene el vector:
length(secado)

#MEDIA ARITMÉTICA
# media simple

mean(secado)

# media recortada al 10% (elimina el 10% de los datos en cada extremo, en este caso los dos mayore sy los dos menores)
mean(secado,trim = 0.1)

#Si los datos contienen algún NA, la función mean se acompaña del argumento na.rm = TRUE para excluir del cálculo a los casos dados como perdidos (valores NA que ya fueron codificados al preparar las variables). Por ejemplo:
  
# ingreso de datos
secado1 <- c(3.4,2.5,4.8,2.9,3.6,2.8,3.3,5.6,3.7,2.7,4.4,NA,5.2,3.0,
            4.8)
  
#Prueba calcular la media usando mean:
  
# media simple
mean(secado1,na.rm = TRUE)

#MEDIANA
median(secado1, na.rm = TRUE)

#Para el cálculo de la moda, se debe instalar previamente el paquete modeest y haberlo cargado en la sesión de trabajo; esto permitirá contar con una función que calculará de forma automática el o los valores más frecuentes de la distribución, herramienta que no existe en los paquetes básicos de R. Se utiliza el comando mfv para calcular la moda:
  
install.packages("modeest")

library(modeest)

mfv(secado1, na.rm = TRUE)

#MEDIDAS DE DISPERSIÓN
#Usemos el dataframe que viene con R airquality que contiene mediciones atmosféricas de la ciudad de Nueva York entre mayo y septiembre de 1973

airquality

#Podemos ver el encabezado de la base (las primeras 6 observaciones) utilizando la función head(airquality) 

head(airquality)

#Si queremos determinar la radiación solar media, debemos utilizar la función:
#mean(airquality$Solar.R) primero nombramos la base, luego signo de dólar y luego la variable:
mean(airquality$Solar.R, na.rm = TRUE)

#DESVIACIÓN ESTÁNDAR
#Una variable
sd(airquality$Ozone, na.rm = TRUE)

#Todas las variables
sapply(airquality, sd, na.rm = TRUE)

#Algunas variables
sapply(airquality[c("Ozone", "Wind")], sd, na.rm = TRUE)

#COEFICIENTE DE VARIACIÓN: DEBEMOS CALCULARLO

coef.var=sd(airquality$Ozone, na.rm = TRUE)/mean(airquality$Ozone, na.rm = TRUE)*100
coef.var

#Resumen estadítico
#Podemos utilizar la función summary que entrega una tabla de estadísticos de resumen: valores mínimo y máximo, primer cuartil, mediana, media, tercer cuartil y cantidad de valores codificados como perdidos (valores NA).

summary(airquality)

#Al realizar el resumen, vemos que la variable Ozone presenta 37 observaciones perdidas y la variable Solar.R presenta 7 observaciones perdidas. Las demás variables no tienen observaciones faltantes.


#PRÁCTICA CLASE ANTERIOR
  
#Construya una tabla de distribución de frecuencias para la variable Ozone y Temp. Con la regla de Sturges y luego creando sus propios intervalos.


#Graficar Ozono 

hist(airquality$Ozone,
     main = "Ozono en New York 1973",
     xlab = "Ozono",
     ylab = "Casos",
     col = "darkblue")


