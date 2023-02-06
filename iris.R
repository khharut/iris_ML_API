data(iris)

iris_model <- lm(Species ~ ., data=iris)
save(iris_model, file='iris.RDATA')
