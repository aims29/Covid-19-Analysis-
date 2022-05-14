library(datarium)


Covid19Data <- Covid19.Data...Sheet1.2


# view the head of the dataset 


head(Covid19Data)

# is there a correlation between COVID.19.Deaths and Pneumonia.Deaths? 

cor(Covid19Data$COVID.19.Deaths, Covid19Data$Pneumonia.Deaths)
## there is a high correlation between COVID.19.Deaths and Pneumonia.Deaths: correlation matrix is 0.95
### correlation matrix is positive so as COVID.19.Deaths increase, so do Pneumonia Deaths
#### The relationship between COVID.19.Deaths and Pneumonia.Deaths is strong- if you have had COVID, you will most likely develop pneumonia.  

# What is the correlation between age and COVID19.Deaths? 

cor(Covid19Data$COVID.19.Deaths, Covid19Data$Age.GroupR, use = "complete.obs")
## There is a strong relationship between age group and COVID.19.Deaths: correlation matrix is 0.59
### correlation matrix is positive which means as age increases, the death rate of Covid.19 increases too 

#What is the correlation between age and pneumonia deaths? 

cor(Covid19Data$Pneumonia.Deaths, Covid19Data$Age.GroupR, use = "complete.obs")
## There is a strong relationship between age group and COVID.19.Deaths: correlation matrix is 0.74
### correlation matrix is positive which means as age increases, death rate of pneumonia increases as well 

# What is the correlation between Sex and COVID.19.Deaths?

cor(Covid19Data$COVID.19.Deaths, Covid19Data$Sex)
## There is a weak relationship between Sex and COVID.19 Deaths: correlation matrix is -0.08
### correlation matrix is negative which means that whether you are female of male, the number of COVID.19 deahts is going to increase

# What is the correlation between Year and Covid.19 deaths? 

cor(Covid19Data$COVID.19.Deaths, Covid19Data$Year)

## there is a weak relationship between the year and the number of covid.19.deaths: correlation matrix 0.09
### the relationship is positive meaning that as time goes on, of course the number of deaths increases
#### b/c the relationship is weak, this means that time does not play a factor in the amount of deaths. people are still dying at the same rate they were in 2020... 



library("dplyr")
library("ISLR")

# find the sum of covid deaths for each year 

sum(Covid19Data$COVID.19.Deaths)
## the sum of covid deaths from jan 2020- jan 2022 is 944650

sum(Covid19Data$Pneumonia.Deaths)
## the sum of pnuemonia deaths from jan 2020 - jan 2022 is 830505 

# Display the summary statistics of data 

summary(Covid19Data)

# make sure there are no missing values in data set (removed them but want to be sure)

sum(is.na(Covid19Data))
##  there is one missing value in dataset 

# get rid of missing value 

na.omit(Covid19Data)

# make sure that na is gone 

sum(is.na(Covid19Data))

# na is not gone: find where na is 

is.na(Covid19Data)

# Remove column "x" to see if that gets rid of NAs

Covid19Data <- Covid19Data[-c( ,1)]




















