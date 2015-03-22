## functions take and cache a matrix, then give the inverse of the cache matrix

## This function caches an inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        cachem <- x  ##Set value in makeCacheMatrix function
        cacheinv <- solve(cachem)
        getfunction <- function() cacheinv  ##return value
        setfunction <- function(y = NULL) {       ##puts value in global
                ##environment        
                cacheinv <<- y 
        }
        
}


## This function returns an inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        cacheinv <- cachem$getfunction()  ##gets cache matrix
        
        solve(x) ##solves for inverse of matrix 
        cache$setfunction(x)  ##puts value in global environment
        print(cache$getfunction()) ##prints the inverse of the matrix
}
