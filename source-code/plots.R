#Day, Keven
rm(list = ls())
installed.packages("tidyverse")
library(tidyverse)
countriesData <- read.csv("datasets/countries.csv", stringsAsFactors = TRUE)
summary(countriesData)
# Part B 58 countries are missing from ecological footprint
#Part C there are 44 countries from Asia
# Part D Measles immunizations is numerical and discrete
# Part D fines for tobacco is categorical and non ordinal
head(countriesData)
ggplot(countriesData, aes(x=continent, y=measles_immunization_oneyearolds)) +
  geom_boxplot()
# Part E African seems to have the most symetrical box plot
# Part E The whiskers both being at a relativley equal length along with a median in the middle of the data is a good sign of being symetrical
ggplot(countriesData, aes(x=ecological_footprint_2000)) +
  geom_histogram()
#Part FThe distrubiton of ecological footprint in 2000 is skewed right
# PPart G The value you can tell that makes it skewed right is the max point which is at 15.99 which is almost triple the mean of 15.99 and way over the median of 2.140
