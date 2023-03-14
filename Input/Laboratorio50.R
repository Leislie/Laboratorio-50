# Hecho con gusto por Leislie R. Manjarrez O.

# Laboratorio 50- Manipulando leyendas

# Instalar paqueterias
install.packages("gapminder")
install.packages("ggplot2")

# Llamar la librerias
library(gapminder)
library(ggplot2)

# Cargar los datos al entorno
data("gapminder")

# Filtrado por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007',]

# Colocando texto base
p<- ggplot(data = gapminder2007,
       mapping = aes(x= gdpPercap,
                     y = lifeExp,
                     color = continent))+
  geom_point()

# Visualizar el grafico
p

# Quitar el titulo de la leyenda
p + theme(legend.title = element_blank())

# Quitar toda la leyenda
p + theme(legend.position = "none")

# Cambiar posicion de la leyenda (right, left, bottom, top)
p + theme(legend.position = "top")

# Cambiar coordenadas de la leyenda (de 0 a 1)
p + theme(legend.position = c(0.5,0.5))

# Volver a cambiar coordenadas de la leyenda (de 0 a 1)
p + theme(legend.position = c(0.8,0.3))