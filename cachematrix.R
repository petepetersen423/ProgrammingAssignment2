#  In this example we introduce the <<- operator which can be used to assign a value to an object in an environment 
#  that is different from the current environment. Below are two functions that are used to create a special object
# that stores a numeric vector and cache's it.
#
# The first function, makeVector creates a special "vector", which is really a list containing a function to

# set the inverse matrix
# get the inverse matrix
# set the value of the inverse
# get the value of the inverse

# This function creates a special "matrix" object that can cache its 
#inverse.

makeCacheMatrix <- function(inv = matrix()) {
      inv <- NULL
    set <- function(y) {
      inv <<- y      
    inv <<- NULL
    }
    get <- function() inv
      setinverse <- function(inverse) inv <<- inverse
      getinverse <- function() inv
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


#This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated (and the matrix has not changed), then the cachesolve
#should retrieve the inverse from the cache.

cacheSolve <- function(inv, ...) {
    inv <- x$getinverse()
        if (!is.null(inv)) {
          message("getting cached data")
          return(inv)
    }
    data <- inv$get()
      inv <- solve(data, ...)
      inv$setinverse(m)
      inv
  
  }
