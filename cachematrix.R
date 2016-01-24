## Put comments here that give an overall description of what your
## functions do
## Ravi 23Jan16
## calculates the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set <-function(y) {
    x <<- y; inv<-null
  }
  get <- function() x
  setinv<-function(i) inv<<-i
  getinv<-function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## if inverse is present then it returns it else calculates

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}
