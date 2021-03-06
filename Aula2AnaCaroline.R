#2 - S�ries Temporais

#Aula 2

x <- 1:20                 #Cria objeto x cujos elementos s�o os valores inteiros de 1 a 20
y <- 20:30                #Cria objeto y cujos elementos s�o os valores inteiros de 20 a 30


#Operadores de Compara��o

x>10                      #Retorna como verdaeiros (TRUE)  os valores maiores que 10
x<10                      #Retorna como verdaeiros (TRUE)  os valores menores que 10
x>=3                      #Retorna como verdaeiros (TRUE)  os valores maiores e iguais a 3
x<=2                      #Retorna como verdaeiros (TRUE)  os valores menores ou iguais a 2
x==5                      #Retorna como verdaeiros (TRUE)  os valores iaguais a 5

#No��es B�sicas - Continua��o

ls()                      #Retorna uma lista de todos objetos criados
rm(x)                     #Apaga objeto x
rm(list = "x","y")        #Apaga uma lista de objetos, no caso os objetos listados foram x e y
rm(list=ls())             #Apaga todos os objetos
getwd()                   #Retorno o atual diret�rio de trabalho do R
setwd("c:/EconometriaA")  #Altera a pasta de trabalho do R

#Carregando e Instalando Pacotes

install.packages("pwt8")                       #Instala o Pacote PWT8.0
library(pwt8)                                  #Carrega o pacote PWT8.0
data("pwt8.0")                                 #Carrega os dados elencados "pwt8.0" dispoin�veis no pacote
View(pwt8.0)                                   #Visualiza os dados na tabela pwt8.0

#Extraindo dados de tabelas e renomeando colunas

br <- subset(pwt8.0, country=="Brazil", select = c("rgdpna","avh","xr"))  #Cria a tabela "br" com dados das linhas que assumem o valor "country" (pa�s) igual a "Brazil", selecionando as colunas cujas vari�veis s�o "rgdpna" (PIB), "avh" (TRABALHO)  e "xr" (C�MBIO)
colnames(br) <-  c("PIB","Trabalho","C�mbio")  #Renomeia as colunas para PIB, Trabalho e C�mbio

#Criando Gr�ficos

plot(br$PIB)                                   #Plota(cria um gr�fico) dos valores da coluna PIB da tabela br
plot(br$PIB, type = "l")                       #Plota os valores  coluna PIB da tabela br em forma de linha.
dados <- ts(br, start = 1950, frequency = 1)   #Cria uma tabela denominada "dados" cuja estrutura � um s�rie temporal com in�cio em 1950, com peridiocidade anual(1)
plot(dados, main="Dados Barsileiros", xlab="Ano")                                #Cria um gr�fico para cada uma das tr�s vari�veis
plot(dados, main="Dados Barsileiros", xlab="Ano", plot.type = "single")          #Cria um �nico gr�fico com as tr�s s�ries juntas
plot(dados, col="blue", main="Dados Barsileiros", xlab="Ano", plot.type = "single")                   #Cria um �nico gr�fico com as tr�s s�ries juntas, com linhas azuis
plot(dados, col=c("blue","red","green"), main="Dados Barsileiros", xlab="Ano", plot.type = "single")   #Cria um �nico gr�fico com as tr�s s�ries juntas, com linhas azuis para  PIB, vermelha para trabalho e verde para o c�mbio
write.csv(br,file = "br.csv")                 #Grava os dados da tabela br no arquivo br.csv
