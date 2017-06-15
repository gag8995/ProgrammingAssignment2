## Put comments here that give an overall description of what your
## functions do

## makeCachematrix function takes x as a input matrix which is inversible
##i is initially assigned to NULL
##get is assigned to matrix x
##set function is caching x
##list returns the list

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function() {
    x <<- y
    i <<- NULL
  }
  get <- function() {
    x
  }
  setinv <- function(inv) {
    i <<- inv
  }  
  getinv <- function() {
    i
  }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## accepts a matrix, if inverse is there then get it else calculate it

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <-x$get()
  i <- solve(data,...)
  x$setinv(i)
  return(i)
}
