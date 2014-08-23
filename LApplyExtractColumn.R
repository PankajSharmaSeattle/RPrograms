x <- list(a = matrix(1:4, 2,2), b=matrix(1:6, 3,2))
extractFirstCol <- lapply(x, function(etl) etl[,1])
