#Day, Keven
rm(list = ls())
installed.packages("tidyverse")
library(tidyverse)
countriesData <- read.csv("datasets/countries.csv", stringsAsFactors = TRUE)
summary(countriesData)
#58 countries are missing from ecological footprint
#there are 44 countries from Asia
#Measles immunizations is numerical and discrete
#fines for tobacco is categorical and non ordinal
head(countriesData)
ggplot(countriesData, aes(x=continent, y=measles_immunization_oneyearolds)) +
  geom_boxplot()
#African seems to have the most symetrical box plot
#The whiskers both being at a relativley equal length along with a median in the middle of the data is a good sign of being symetrical
ggplot(countriesData, aes(x=ecological_footprint_2000)) +
  geom_histogram()
#The distrubiton of ecological footprint in 2000 is skewed right
# The value you can tell that makes it skewed right is the max point which is at 15.99 which is almost triple the mean of 15.99 and way over the median of 2.140
