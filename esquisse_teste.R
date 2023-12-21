library("esquisse")
# options(shiny.useragg = FALSE)
library(readr)
library(ggplot2)

esquisser(dados,viewer = "browser")

# Idade x salário segundo o grau de instrução:
# gráfico de linhas
# Boxplot theme_economist()
# Grafico de pontos theme_minimal()



#-------- Gráficos interativos ---------------------
library(tidyverse)
library(plotly)
library(gapminder)

p <- gapminder %>% 
  filter(year == 2007) %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color = continent))

# converter para interativo
ggplotly(p)

#------- visualizações de séries temporais
library(dygraphs)
lungDeaths <- cbind(mdeaths, fdeaths)
dygraph(lungDeaths, 
        main = "Mortes por Doenças Pulmonares - Reino Unido - 1874-1979",
        ylab = "Número de Morets") %>%
  dySeries("mdeaths", color = "blue", label = "Homens") %>%
  dySeries("fdeaths", color = "green", label = "Mulheres") %>% 
  dyRangeSelector()

#--------------- visualizações interativas de mapas ------
library(dplyr)
library(leaflet)
leaflet() %>%
  addTiles()
