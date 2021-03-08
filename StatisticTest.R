library(dplyr)
library(tidyr)
tsla<-read.csv("C:/Users/nikag/Downloads/TSLA1.csv")
str(tsla)
summary(tsla)

table(tsla$Open)

table(tsla$Close)

table(tsla$Close, tsla$Open)


# Quantile with 5% probablity
quantile(tsla$Adj.Close, .05)

# Quantile with 5% and 95% probablity
quantile(tsla$Adj.Close, c(.05, .95))

# Quantile for adjusted closing value with an interval of 25% in the probabilties
quantile(tsla$Adj.Close)

# Converting Points to Z-Scores
scale(tsla$Volume)

# Using the t.test and asking if the mean of volume can be 60
t.test(tsla$Volume, mu = 60)

# Using the t.test and asking if the mean of volume can be 70 with a confidence level of 99%
t.test(tsla$Volume, conf.level = 0.99, mu = 70)

# Calculating the confidence interval for the median of volume using the Wilcox Test
wilcox.test(tsla$Volume, conf.int = TRUE)

# Using the Shapiro Test for normality
shapiro.test(tsla$Volume)

# Checking if the correlation between volume and opening value is significant
cor.test(tsla$Volume, tsla$Open)

# Checking if the correlation between volume and closing value is significant
cor.test(tsla$Volume, tsla$Close)

