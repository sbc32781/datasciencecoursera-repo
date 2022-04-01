## I did not understand this assignment at all. I read all Alan's links
## I am posting this because I understand how to create a repository
## After reading Len Greski's Demystifying post 4 times, I am done.
## This material was not covered and I need real examples to learn.

## This function was required but not taught. 

makeCacheMatrix <- function(x = numeric()) {
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


## Again, I can read all the articles online. I need a real example. 

cacheSolve <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
            message("getting cached data")
            return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
}
