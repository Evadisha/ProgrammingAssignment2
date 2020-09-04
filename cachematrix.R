## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
inv<-NULL
get<-function() {x}
set<-function(y){
x<<-y
inv<<-NULL
}
setinv<-function(inverse) {inv<<-inverse}
getinv<-function(){inv}
list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
inv<-x$getinv()
if(!is.null(inv)){
message("get cache data")
return(inv)
}
mat<-x$get()
inv<-solve(mat,...)
x$setinv(inv)
inv
        ## Return a matrix that is the inverse of 'x'

}
