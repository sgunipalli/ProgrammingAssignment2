## Below functions code demonstrate the flow to cache the inverse of a matrix

## Below function creates a object of matrix type that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
                   }
get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, 
       get = get, 
	   setInverse = setInverse, 
	   getInverse = getInverse)
                                         }
										 
## function computes the inverse of the special "matrix" returned by makeCacheMatrix above

  cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
                   }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
                              }
