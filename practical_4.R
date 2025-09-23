#Soumya_Shivankar_1177
#Practical_04
install.packages("mlbench")
install.packages("caret")
install.packages("randomForest")
install.packages("e1071")
install.packages("class")
install.packages("ROCR")

#Load libraries
library(mlbench)
library(caret)
library(randomForest)
library(e1071)
library(class)
library(ROCR)

#Load the data set
data("PimaIndiansDiabetes")  

#Check if it loaded correctly
head(PimaIndiansDiabetes)
names(PimaIndiansDiabetes)  

set.seed(123)
split <- createDataPartition(PimaIndiansDiabetes$diabetes, p = 0.7, list = FALSE)
train <- PimaIndiansDiabetes[split, ]
test  <- PimaIndiansDiabetes[-split, ]

# a) Random Forest
rf_model <- randomForest(diabetes ~ ., data = train)

# Use iris data set
data(iris)

# Make train and test data (70% train)
set.seed(123)
train_index <- sample(1:nrow(iris), 0.7 * nrow(iris))
train <- iris[train_index, ]
test <- iris[-train_index, ]

# Random Forest model
rf <- randomForest(Species ~ ., data=train)
rf_pred <- predict(rf, test)

# SVM model
svm_model <- svm(Species ~ ., data=train)
svm_pred <- predict(svm_model, test)

# Normalize function for KNN
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

# Normalize train and test data for KNN
train_norm <- as.data.frame(lapply(train[1:4], normalize))
test_norm <- as.data.frame(lapply(test[1:4], normalize))

# KNN prediction with k=5
knn_pred <- knn(train_norm, test_norm, train$Species, k=5)

# Calculate accuracy
rf_acc <- mean(rf_pred == test$Species)
svm_acc <- mean(svm_pred == test$Species)
knn_acc <- mean(knn_pred == test$Species)

# Print results
print(paste("Random Forest Accuracy:", round(rf_acc, 2)))
print(paste("SVM Accuracy:", round(svm_acc, 2)))
print(paste("KNN Accuracy:", round(knn_acc, 2)))_