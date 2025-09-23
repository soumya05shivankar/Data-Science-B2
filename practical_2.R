#Soumya_Shivankar_22070521177
#Practical_02
#a. Create the vector
monster <- c(TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)
#Check type and datatype
typeof(monster)     
class(monster)

#b.Create character vector
yugioh <- c("DataScience", "RProgramming")
# Check type and class
typeof(yugioh)
class(yugioh)

#c.Combine the monster and yugioh vector
combined_vector <- c(monster, yugioh)
# Check type and class
typeof(combined_vector)
class(combined_vector)
# View the vector
print(combined_vector)

#d.Create coerce.check by combining all the above created vectors
atk <- c(1200, 1300, 1400, 1500, 1600)
coerce.check <- c(atk, monster)
# Check type and print
typeof(coerce.check)
class(coerce.check)
print(coerce.check)
