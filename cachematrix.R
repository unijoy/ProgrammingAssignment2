## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse_m <- NULL
    set <- function(y) {
        x <<- y
        inverse_m <<- NULL
    }
    get <- function() x
    setInverse <- function(m) inverse_m <<- m
    getInverse <- function() inverse_m
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    inversed_m <- solve(data,...)
    x$setInverse(inversed_m)
    inversed_m
}
