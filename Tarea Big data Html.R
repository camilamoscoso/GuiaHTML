rm(list=ls())
library(xml2)
library(rvest)
readHtml <-read_html("Animalitos.html")
TablaExtraida <- html_table(readHtml)
print(TablaExtraida)
Precio<-TablaExtraida[[1]][2]
print(Precio[[1]][1])
print(length(Precio[[1]]))
Suma<-0
for(i in 1:length(Precio[[1]])){Suma<-Suma+Precio[[1]][i]}
Promedio<-Suma/i
Mediana<-Precio[[1]][i/2]      
print(paste("Promedio =", Promedio, "Mediana =", Mediana))