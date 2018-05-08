

fish_data <- read.csv("data/Gaeta_etal_CLC_data_1.csv")

#this addsa a category to the table that categorizes fish by size
library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small")) %>% 
  filter(scalelength > 1)


library(tidyverse)

ggplot(fish_data, aes(x = length, y = scalelength, color = lakeid)) +
         geom_point()