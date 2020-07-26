## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatr <- function(matr) m <<- matr
  getmatr <- function() m
  list(set = set, get = get,
       setmatr = setmatr,
       getmatr = getmatr)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getmatr()
  if(!is.null(m)) {
    message("getting cached inverse matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatr(m)
  m
}
