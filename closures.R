
makeMean <- function(x = numeric()) {
## flag which fn applied  
  message("BOOAOOOXOOAOOB")

m <- NULL
set <- function(y) {
x <<- y
m <<- NULL
}
get <- function() x
setmean <- function(mean) m <<- mean
getmean <- function() m
list(set = set, get = get,
setmean = setmean,
getmean = getmean)
}
cachemean <- function(x, ...) {
## flag which fn applied  
message("XOOZOOOBOOZOOX")  
m <- x$getmean()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
data <- x$get()
message("Gonna have to calculate from scratch.")
message("Bear with... Bear with...")
m <- mean(data, ...)
x$setmean(m)
m
}

