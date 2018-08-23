install.packages("pwt8")
library(pwt8)
data("pwt8.0")
View(pwt8.0)

br <- subset(pwt8.0, country=="Brazil", select = c("rgdpna","avh","xr"))
colnames(br) <-  c("PIB","Trabalho","Câmbio")

plot(br$PIB)
plot(br$PIB, type = "l") 
dados <- ts(br, start = 1950, frequency = 1)
plot(dados, main="Dados Brasileiros", xlab="Ano")
plot(dados, main="Dados Brasileiros",xlab = "Ano", plot.type = "single")
plot(dados, col="blue", main="Dados Brasileiros", xlab="Ano", plot.type = "single") 
plot(dados, col=c("blue","red","green"), main="Dados Brasileiros", xlab="Ano", plot.type = "single")

br <- br [,-1]
PIB <- ts(br$PIB, start = 1950, frequency = 1)
plot(PIB)
colnames (br) [3] <- "cambio"
hist(PIB)

