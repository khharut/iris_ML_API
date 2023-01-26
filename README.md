## Simple docker ML API

This is a very simple REST API example written with R for classifying well known 'iris' dataset. For that purposes we used 'plumber' R package and main funcionality of R. We used simple linear regression model to do the job. We know that it is not good and even wrong solution to use linear regression for classification problem, but this simple ML API was created as demonstration of how one can use R along with Docker for creating ML API.

## How to run this example

To build Docker image one can run in root folder of this repository, i.e. where the Dockerfile is:

```docker build -t iris .```

And then to run a docker conatainer just run this:

```docker run -p 9000:9000 iris```

R 'plumber' package comes with Swagger UI support. One can open on browser the link 

```http://127.0.0.1:9000/__docs__/```

and try POST API request with different values of iris flowers properties: Sepal.Length, Sepal.Width, Petal.Length, Petal.Width. Default values for this parameters in API are 0. For some cases one can get response value as NA, since the model (linear regression) is choosen very badly. But again it was done for simplicity and on purpose.