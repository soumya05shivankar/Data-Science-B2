#Soumya_Shivankar_22070521177
#Practical_08
pets <- data.frame(
  Name = c("Flipper", "Bromley", "Nox", "Orion", "Dagger", "Zizi", "Carrie"),
  Months_old = c(53, 19, 34, 41, 84, 140, 109),
  Size = c("medium", "small", "medium", "large", "small", "extra small", "large"),
  Weight = c(21, 8, 4, 6, 7, 2, 36),
  Breed = c("dog", "dog", "cat", "cat", "dog", "cat", "dog"),
  stringsAsFactors = TRUE  
)
print(pets)

#a & b
levels(pets$Breed)
levels(pets$Breed) <- c("dog", "cat")
print(pets)

#c
# Method 1
pets$Weight
# Method 2
pets[, "Weight"]

#d
pets$Age_in_years <- pets$Months_old / 12
print(pets)

#e
table(pets$Breed, pets$Size)

#f
aggregate(Weight ~ Breed, data = pets, FUN = mean)

#g
boxplot(Weight ~ Breed, data = pets,
        main = "Weight Distribution by Breed",
        xlab = "Breed", ylab = "Weight",
        col = c("black", "pink"))
