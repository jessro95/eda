# Exploratory data analysis (see readme for more detail)
# Feel free to follow these steps, or complete your own EDA

# Set up (install packages if you don't have them)
library(dplyr)
library(tidyr)
library(ggplot2)
library(plotly)
library(vioplot)
setwd('~/info370/eda/health-burden/')
risk.data <- read.csv('./data/prepped/risk-data.csv', stringsAsFactors = FALSE) 

View(risk.data)
######################
### Data Structure ###
######################

## Using a variety of functions, investigate the structure of your data, such as:

# Dimensions, column names, structure, summaries, etc.

##Dimensions
dim(risk.data)

##Column Names
colnames (risk.data)

##Structure
str(risk.data)

##Summaries
summary(risk.data)

which(duplicated(risk.data[1:5],))
unique (risk.data$age)

# Replacing missing values...? omitted the missing values
risk.data[!complete.cases(risk.data),]
noNA.data <- na.omit(risk.data)
dim(noNA.data)

###########################
### Univariate Analysis ###
###########################

## Using a variety of approaches, investigate the structure each (risk column) individually
colnames(noNA.data)

##by.alcohol.use <- noNA.data %>%
  #                summarize(avg.death = mean(alcohol.use, na.rm = T))

# Summarize data
# Create histograms, violin plots, boxplots


####################################
### Univariate Analysis (by age) ###
####################################

# Investiage how each risk-variable varies by **age group**

# Create histograms, violin plots, boxplots. Calculate values as needed. 
aggregate()

View(by_age)

hist(risk.data$drug.use)

barplot(sectors.average$average)

vioplot(
  risk.data$smoking,
  risk.data$alcohol.use,
  names=c('smoking', 'alcohol')
)

##boxplot
long.data <- gather(risk.data, risk, value, smoking, alcohol.use, drug.use)
boxplot(value ~risk)

####################################
### Univariate Analysis (by sex) ###
####################################

# Investiage how each risk-variable varies by **sex**

# Compare male to female values -- requires reshaping (and dropping population)!


########################################
### Univariate Analysis (by country) ###
########################################

## Investiage how each risk-variable varies by **country**

# Aggregate by country

# Create a choropleth map (see https://plot.ly/r/choropleth-maps/)

###########################
### Bivariate Analysis ####
###########################

# Compare risks-variables to one another (visually)
