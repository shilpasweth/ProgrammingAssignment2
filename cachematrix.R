## Put comments here that give an overall description of what your
## functions do
##The functions take an invertible square matrix and finds it's inverse.
##Instead of repeatedly going through the matrix calculation, it checks if it's is stored in cache
##and displays that matrix instead, hence making the process quicker.

## Write a short comment describing this function
##The following function stores the matrix and caches it's inverse.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL

}
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}
## Write a short comment describing this function
##The following function checks if the matrix's inverse is stored in the cache.
##If it is not stored it finds the inverse of the matrix using the solve() function.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data)
  x$setinverse(i)
  i
}       ## Return a matrix that is the inverse of 'x'

''