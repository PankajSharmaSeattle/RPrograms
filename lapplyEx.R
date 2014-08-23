x <- list(a = 1:5, b = rnorm(10), c = rnorm(20,1), d= rnorm(100,5))
resultmean <- lapply(x,mean)

x <- 1:4
resultrunif1 <- lapply(x, runif)

x <- 1:4
resultrunif2 <- lapply(x, runif)
resultrunifminmax <- lapply(x, runif, min=0, max=10)


