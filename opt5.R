# You can use this to clear all environment variables
rm(list = ls())

# Loading the excel reading library
library(readxl)

input_file = ""
input_sheet = ""

# Some combination of getwd() and setwd()
data <- read_excel(input_file, sheet = input_sheet)

varstaF <- subset(x = data, subset = SEX == "F", select = c(VARSTA))
varstaM <- subset(x = data, subset = SEX == "M", select = c(VARSTA))

# You can get the means this way
mean(varstaF$VARSTA)
mean(varstaM$VARSTA)

# To get the variance use the var() function
var(varstaF$VARSTA)
var(varstaM$VARSTA)

# Running an independent samples t-test (Welch's t) - does NOT assume equal variances
t.test(varstaF$VARSTA, varstaM$VARSTA, alternative = "two.sided", var.equal = FALSE)

# Sample output
#
#        Welch Two Sample t-test
#
#data:  varstaF$VARSTA and varstaM$VARSTA
#t = -5.3489, df = 591.57, p-value = 1.266e-07
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  -7.204928 -3.334960
#sample estimates:
#  mean of x mean of y 
#49.08574  54.35569 