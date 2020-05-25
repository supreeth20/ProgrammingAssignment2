## This function calculates the inverse of a square matrix if the inverse of this 
## matrix was already calculated then it gets the value of inverse from the cache
## and returns it ,if it was not already calculted then it calculates and
## stores it in the cache

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x<<- y
    m<<- NULL
  }
  get<- fucntion(x) x
  setinverse <- function(inverse) m<<- inverse
  getinverse <- function() m
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
  ## Return a matrix that is the inverse of 'x'
}