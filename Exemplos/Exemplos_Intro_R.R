library(tidyverse)

library(tidyverse)

#Exemplo mtcars

carros <- mtcars

mtcars %>% 
  filter(cyl >= 6) %>% 
  summarize(media_mpg = mean(mpg))

mean(carros[carros$cyl >= 6,]$mpg)

#Exemplo iris

flores <- as_tibble(iris)

print(flores)

ggplot(data = flores, aes(x=Sepal.Length, y = Sepal.Width, color = Species))+
  geom_point()+
  theme_bw()+
  labs(x= "Comprimento da Sépala", y= "Grossura da Sépala", color = "Espécie")+
  ggtitle("Grossura e tamanho de Sépalas separadas por espécies")