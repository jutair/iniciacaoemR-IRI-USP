#Instalando as bibliotecas necessárias
install.packages("readxl")
install.packages("ggplot2")

#Importando o Dataset
library(readxl)
Entrada_Venezuela_CN <- read_excel("C:\Users\jutai\Documents/Entrada_Venezuela_CN.xls")
View(Entrada_Venezuela_CN)

#Plotando o Gráfico
library(ggplot2)
ggplot(Entrada_Venezuela_CN, aes(fill=Partido, y=UF, x=Voto)) +
  geom_bar(position="stack", stat="identity") +
  labs(title = "Entrada da Venezuela",
       subtitle = "Número votos por partidos de cada unidade federativa",
       x = "Número de votos",
       y = "Estados")+theme(plot.title = element_text(color = "blue"))+
       theme(plot.title = element_text(hjust = 0.5))+
       theme(plot.title = element_text(size = 18))
