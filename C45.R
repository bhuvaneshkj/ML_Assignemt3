install.packages('rpart')
install.packages('rpart.plot')
# load the package
install.packages('modeldata')
library(RWeka)
library(rpart)
library(rpart.plot)
# load data
data(iris)



View(data)
# fit model
fit <- J48(Species~., data=iris)
# summarize the fit
summary(fit)
# make predictions
predictions <- predict(fit, iris[,1:4])
# summarize accuracy
table(predictions, iris$Species)



rpart.plot(tree, box.palette="RdBu", shadow.col="gray", nn=TRUE)
library(modeldata)
#install.packages('J48')
library(C50)

library(dplyr)
install.packages('RWeka')
library(RWeka)

install.packages('partykit')
install.packages('grid')
install.packages('libcoin')
install.packages('mvtnorm')
install.packages('Rgraphviz')
install.packages('yardstick')
install.packages('Metrics')
library('yardstick')
library('partykit')
library('grid')
library('libcoin')
library('mvtnorm')
library('RWeka')
library('Metrics')

setwd("C:/Users/chat2/OneDrive/Desktop/MachineLearning/HW-3")


datatrain<- read.csv("task5_train.csv")
datatest<- read.csv("task5_test.csv")
df<-select(datatest, -Label)
str(df)

fit <- J48(Label~., data=datatrain)
# summarize the fit
summary(fit)
# make predictions
predictions <- predict(fit,df)
# summarize accuracy
predictions
table(datatrain$Label, predict(fit))
e<-plot(fit)
write_to_dot(fit)

accuracy <- accuracy_vec(datatest$Label,predictions)
precision <- precision_vec(datatest$Label,predictions)
recall <- recall_vec(datatest$Label,predictions)
accuracy
precision
recall

datatrain_4_1<- read.csv("task_4_1_train.csv")
datatest_4_1<- read.csv("task_4_1_test.csv")
str(datatest_4_1)
str(datatrain_4_1)

fit_4_1 <- J48(Label~., data=datatrain_4_1)
# summarize the fit
summary(fit_4_1)
# make predictions
predictions_4_1 <- predict(fit_4_1,datatest_4_1)
# summarize accuracy
predictions_4_1
table(datatrain_4_1$Label, predict(fit_4_1))
e1<-plot(fit_4_1)
write_to_dot(fit_4_1)


datatrain_4_2<- read.csv("task_4_2_train.csv")
datatest_4_2<- read.csv("task_4_2_test.csv")
names(datatrain_4_2) [1] <- "Outlook"
str(datatest_4_2)
str(datatrain_4_2)

fit_4_2 <- J48(Label~., data=datatrain_4_2)
# summarize the fit
summary(fit_4_2)
# make predictions
predictions_4_2 <- predict(fit_4_2,datatest_4_2)
# summarize accuracy
predictions_4_2
table(datatrain_4_2$Label, predict(fit_4_2))
e1<-plot(fit_4_2)
write_to_dot(fit_4_2)
