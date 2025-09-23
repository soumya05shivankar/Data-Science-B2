#Soumya_Shivankar_22070521177
#Practical_03
# a) Check what sample() function does
?sample  

# b) Example using sample()
# Pick 3 random fruits from a list
fruits <- c("apple", "banana", "mango", "pineapple", "grape")
sample(fruits, size = 3)

# c) Check what median() function does
?median  
# Example with NA values
lvl <- c(10, 20, NA, 30)
median(lvl)             
median(lvl, na.rm = TRUE)  

# d) Is the result different with na.rm = TRUE?
# Yes! With na.rm = FALSE, result is NA
# With na.rm = TRUE, NA is ignored

# e) Use of which()
x <- c(5, 10, 15, 20)
which(x > 10)   # Tells which positions are greater than 10

# f) Frequency table of categorical data
colors <- c("red", "blue", "red", "green", "blue")
table(colors)  

# g) Use of subset()
subset(mtcars, mpg > 25)

# h) Use of ifelse()
age <- c(10, 20, 70)
ifelse(age < 18, "Minor", ifelse(age >= 65, "Senior", "Adult"))
