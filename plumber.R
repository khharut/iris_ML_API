load('/app/iris.RDATA')
iris_labels <- c("setosa", "versicolor", "virginica")

#* Return the sum of two numbers
#* @param Sepal.Length sepal length of iris
#* @param Sepal.Width sepal width of iris
#* @param Petal.Length petal length of iris
#* @param Petal.Width petal width of iris
#* @post /iris
function(Sepal.Length=0, Sepal.Width=0, Petal.Length=0, Petal.Width=0)
{
  flower_properties <- as.data.frame(list(Sepal.Length=as.numeric(Sepal.Length),
                                          Sepal.Width=as.numeric(Sepal.Width),
                                          Petal.Length=as.numeric(Petal.Length),
                                          Petal.Width=as.numeric(Petal.Width)))

  iris_pred <- predict(iris_model, flower_properties)
  iris_pred <- ceiling(iris_pred)
  iris_pred <- iris_labels[iris_pred]
  return(iris_pred)
}
