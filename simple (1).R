install.packages("tidyverse",dependencies = TRUE)
data <-(iris)
View(data)
library(tidyverse)



# simple linear regression in r

#check the number of variables
str(iris)

#addtional function
dim(iris)
nrow(iris)
ncol(iris)

#ploting

install.packages('caTools')
library(caTools)

set.seed(123)

split = sample.split(iris, SplitRatio = 0.7)

training_set <- subset(data, split == TRUE)
test_set <- subset(data, split == FALSE)

regressor = lm(formula = Sepal.Length~Sepal.Width, data = training_set)
summary(regressor)

y_pred = predict(regressor, newdata = test_set)

library(ggplot2)

ggplot() +
  geom_point(aes(x = training_set$Sepal.Width,
                 y = training_set$Sepal.Length), colour = 'red') +
  geom_line(aes(x = training_set$Sepal.Width,
                y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Sepal.Length vs Sepal.Width (Training Set)') +
  xlab('Sepal.Width ') +
  ylab('Sepal.Length')











