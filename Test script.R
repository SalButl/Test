# test

library(tidyverse)
library(here)

test <- gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours = mean(tvhours, na.rm = T))

write_csv(test, here("Testcsv"))
