x <- matrix(rnorm(200), 20, 10) ## 20 rows, 10 columns
resultmean <- apply(x,2, mean) ## mean of column (margin is 2)
resultmean2 <- colMeans(x,2) ## mean of column (margin is 2)
resultsum <- apply(x,1, sum)  ## sum of rows (margin is 1)
resultsum2 <- rowSums(x,1)  ## sum of rows (margin is 1)
resultsd <- apply(x,2, sd)  ## standard deviation of columns (margin is 2)
