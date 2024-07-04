install.packages("dplyr")
install.packages("gapminder")
install.packages("gganimate")
install.packages("ggplot2")
install.packages("fivethirtyeight")
install.packages("tidyverse")
install.packages("devtools")
devtools::install_github("rstudio-education/dsbox")

library(tidyverse)  #also loads ggplot2
library(dplyr)
library(dsbox)
library(fivethirtyeight)
library(gapminder)
library(gganimate)

#######STARWARS#######

ggplot(data = starwars) +
  geom_point(mapping = aes(x = height, y = mass)) +
  geom_smooth(mapping = aes(x = height, y=mass), method='lm')

mycols= c('fair','white','light','brown','dark')
starwars$human_skincolor= ifelse(starwars$skin_color %in% mycols, 'human', 'non-human')

ggplot(data = starwars, aes(x = height, y = mass)) +
  geom_point(aes(color= human_skincolor, shape= human_skincolor)) +
  geom_smooth(method='lm', se=FALSE)

boxplot(height ~ human_skincolor, data=starwars, names=c('No','Yes'), xlab='Human skin color')

ggplot(starwars, aes(x=human_skincolor, y=height)) +
  geom_point() +
  geom_violin()

ggplot(starwars, aes(x=height, fill=human_skincolor)) +
  geom_histogram(alpha=0.2, color='black')  #alpha is the color transparency

ggplot(starwars, aes(x=height, color=human_skincolor)) +
  geom_freqpoly()  

########DIAMONDS########

?diamonds

ggplot(diamonds, aes(x=carat, y=price)) +
  geom_point() + 
  scale_x_log10() + scale_y_log10()
  
ggplot(diamonds, aes(x=carat, y=price)) +
  geom_bin2d() +
  scale_x_log10() + scale_y_log10()

?diamonds

ggplot(diamonds) + 
  geom_bar(aes(x = cut, y=after_stat(prop), group=1)) +
  scale_y_continuous(labels = scales::percent_format()) +
  labs(x='Diamond cut', y='Percentage') +
  theme(axis.text=element_text(size=12), axis.title=element_text(size=14,face="bold"))

ggplot(diamonds) + 
  geom_bar(aes(x = cut, fill = clarity))

ggplot(diamonds) + 
  geom_bar(aes(x = cut, fill = clarity), position = "dodge")

ggplot(diamonds) + 
  geom_bar(aes(x = cut, fill = clarity), position = "fill")  

ggplot(diamonds) + 
  geom_bar(aes(x = cut, fill = color), position = "fill")  

ggplot(diamonds) +
  geom_point(aes(x=carat, y=price,color = cut()) + 
  scale_x_log10() + scale_y_log10()
 
#####VITMAMIN GUINE PIGS######


  


