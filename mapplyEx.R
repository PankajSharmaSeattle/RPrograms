resultList <- list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
resultmapply <- mapply(rep, 1:4, 4:1)

noise <- function(n, mean, sd) {
    rnorm(n, mean, sd)
}

resultvectorise <- noise(1:5, 1:5, 2)



