#Soumya_Shivankar_22070521177
#Practical_09
#a) Load libraries
install.packages("readr")
install.packages("tibble")
install.packages("dplyr")
install.packages("ggplot2")
library(readr)
library(tibble)
library(dplyr)
library(ggplot2)

#b) create data using vectors
size <- c(1000, 1200, 1500, 1800, 2000, 2200, 2500, 2700, 3000, 3200)
price <- c(150000, 180000, 210000, 250000, 280000, 300000, 340000, 360000, 400000, 420000)
#combine into tibble 
data <- tibble(size, price)
print(data)

#c) get descriptive statistics
summary(data)
glimpse(data)

#d) explore the data (quick scatter plot)
ggplot(data, aes(x = size, y = price)) + geom_point(color = "blue") + ggtitle("Scatterplot of Size vs Price")

#e) define and fit the linear regression model
model <- lm(price ~ size, data = data)

#f) plot the regression line
ggplot(data, aes(x = size, y = price)) + geom_point(color = "blue") + geom_smooth(method = "lm", se = FALSE, color = "red") 
+ ggtitle("Regression Line: Price vs Size")

#g) Print the result of the model
summary(model)

#h) Number of observations
nrow(data)

#i) R-squared values
summary(model)$r.squared

#j) check if 'size is a statistically significant predictor of 'price'
# (look at the p-value in summary(model))
#if p-value < 0.05, then it is significant

# k) regression equation
coef(model) 
