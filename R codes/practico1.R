#vector ejemplo
cate = c("a","c","a","c","a","d","b","c","a","b","d","c");
#crear tabla de frecuencias
frecuencia = table(cate); #table crea la tabla de frecuencias
porcentaje = prop.table(frecuencia)*100; #prop.table crea los porcentajes
tabla_frecuencias = data.frame(categorias = names(frecuencia),
                               frecuencia = as.vector(frecuencia),
                               porcentaje = round(as.vector(porcentaje),2));
cat("para imprimir tabla escribe 'tabla_frecuencias'");

#grafico de barras
#barplot crea grafico de barras, xlab ylab crean labbels para el eje
#col es de colour
barplot(frecuencia, main = "estudiantes segun nota", xlab = "notas",
        ylab = "frecuencia", col = "gold");
#agregar los valores sobre las barras
text(x = seq_along(frecuencia), y = frecuencia, label = frecuencia, pos = 1);
pie(frecuencia, labels = paste(names(frecuencia), "\n", round(porcentaje,1),"%"),
    main = "estudiantes segun nota", 
    col = c("turquoise", "gold", "olivedrab1","violetred1"));
#install.packages("ggplot2");
library(ggplot2);
ggplot(tabla_frecuencias, aes(x = cate, y = frecuencia))+
  geom_bar(stat = "identity")+
  geom_text(aes(label = frecuencia), vjust = -1, colour = "black");
ylim(c(0,6.5));