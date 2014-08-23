x <- c(rnorm(10), runif(10), rnorm(10,1))
f<- gl(3,10)
f
resultsplit <- split(x, f)

library(datasets)
resultdata <- head(airquality)

s <- split(airquality, airquality$Month)
resultlappysplit <- sapply(s, function(x) 
    colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))

## splitting on more than one level
x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
resultsplit <- str(split(x, list(f1,f2), drop=TRUE))



