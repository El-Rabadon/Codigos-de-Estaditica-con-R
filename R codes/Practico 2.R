#actividad 2
#histogramas + poligono de frecuencias + diagrama escalonado + ojiva
diametros = c(1.01,0.97, 1.03, 1.04, 0.99, 1.01, 1.03, 2.07, 1.08, 1.10, 2.09,
              2.00, 2.22, 1.99, 1.12, 2.89);
hist(diametros, main = "Histograma de los datos", xlab = "Valores",
     col = "skyblue", border = "black");
plot(density(diametros), main = "Grafico de densidad de los datos",
     xlab = "valores", col ="blue");
h = hist(diametros, plot = FALSE);
#Diagrama escalonado
plot(h$mids, cumsum(h$counts),type = "s", xlab = "Valores",
     ylab = "Frecuencia acumulada", main = "Diagrama escalonado");
#ojiva con frecuencia acumulada absoluta
plot(h$breaks[-1], cumsum(h$counts), type = "l",
     xlab = "Valores", ylab = "Frecuencia acumulada", main = "ojiva");