a <- array(rnorm(2*2*10), c(2,2,10))
result <- apply(a,c(1,2), mean)
result2 <- rowMeans(a, dims = 2)
