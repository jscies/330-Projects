library(tidyverse)

WHO <- read_csv("Life Expectancy Data.csv", col_names = TRUE) %>% 
  rename(Life_Exp = `Life expectancy`)
WHO
WHO_2015 <- WHO %>% filter(Year == 2015) %>% 
  select(Country, Life_Exp, Schooling) %>%
  filter(!(is.na(Schooling)))
WHO_2015

write_csv(WHO_2015, "School Life Data.csv")

ggplot(data=WHO_2015, aes(x = Life_Exp, y = Schooling)) + geom_point()

