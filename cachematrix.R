## The makeCacheMatrix function creates a special matrix object that can cache its inverse
## The cacheSolve function calculates the inverse of the special matrix returned by the makeCacheMatrix.

## This function creates a special matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

 m <- NULL
        set <- function(y) { ## defines 'set'
                x <<- y
                m <<- NULL
        }
        get <- function() x ## defines 'get'
        setmean <- function(solve) m <<- solve
        getmean <- function() m
        list(set = set, get = get) ## sets and gets the value of the matrix
        }


## This function inverts the makeCacheMatrix object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data") ## to return messgae when data is chached
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}

