x <- as.Date("1970-01-01")
x

unclass(x)
unclass(as.Date("1999-03-31"))
unclass(as.Date("1999-03-35"))

x <- Sys.time()
x
p <- as.POSIXlt(x)
names(unclass(p))

p$sec

p$year

p$yday

?strptime