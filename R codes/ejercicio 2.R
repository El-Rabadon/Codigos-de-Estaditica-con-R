lifeTime = c(2.2,3.4,2.5,3.3,4.7,4.1,1.6,4.3,3.1,3.8,3.5,3.1,3.4,3.7,3.2,4.5,3.3,
             3.6,4.4,2.6,3.2,3.8,2.9,3.2,3.9,3.7,3.1,3.3,4.1,3.0,3.0,4.7,3.9,
             1.9,4.2,2.6,3.7,3.1,3.4,3.5);

datos = c("A","B","A","C","A","B","B","C","A","B","C","C");

tablaFrecuencia = table(datos);
print(tablaFrecuencia);

print(table(lifeTime)); #no es recomendable por los decimales, quedara todo chueco

#install.packages("fdth")
library(fdth);

tablaLife = fdt(lifeTime,breaks="Sturges");
print(tablaLife);
#las instrucciones 15 y 16 son para crear una tabla de frecuencias

tablaLife = fdt(lifeTime,start=1.5, end=5, h=0.5);
print(tablaLife);