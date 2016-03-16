## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cacheInvMatrix <- NULL
  set <- function(y) {
    x <<- y
    cacheInvMatrix <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) cacheInvMatrix <<- inverse
  getInverse <- function() cacheInvMatrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
invFunc <- x$getInverse()
  if(!is.null(invFunc)) {
    message("<< cached data >>")
    return(invFunc)
  }
  data <- x$get()
  invFunc <- solve(data, ...)
  x$setInverse(invFunc)
  invFunc		
}
