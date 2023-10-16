
install.packages(c("ggplot2", "ggpubr", "tidyverse", "broom"))

library(ggplot2)
library(ggpubr)
library(tidyverse)
library(broom)


data1 <- read_csv('data/health.csv', show_col_types = FALSE)

#One way ANOVA
one.way <- aov(sport ~ condition_of_living, data = data1)

summary(one.way)

TukeyHSD(one.way)

plot(TukeyHSD(one.way))

