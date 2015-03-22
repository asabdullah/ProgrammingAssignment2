## This code consist of two part, 1. Set the matrix, 2. Find the invser value of the matrix. The purpose is to find the inverse matrix
## of a matrix and store the inverse matrix in 

## makeCacheMatrix function accept a matrix as its argument. It has 4 function : 1. Set a matrix,2. Get a matrix,
## 3 Set invers of the matrix, and get the invers of the matrix. This function returns a data frame which consist of 
## the set matrix, getmatrix, setinvers and getinvers      

makeCacheMatrix <- function(x = matrix()) {
        
        inv <- matrix()                       ## setting initial invers matrix value
                
        setmatrix <- function(y) {            ## set the original matrix
                x <<- y                       ## x value is assigned in global environment
                inv <<- matrix()
        }
        getmatrix <- function() x                         ## get matrix
        setinvers <- function(invers) inv <<- invers      ## set invers matrix, the value is assigned in local environment when the function is called
        getinvers <- function() inv                       ## get the invers matrix
            
        list(setmatrix = setmatrix, getmatrix = getmatrix,  ## build data frame which consist of the matrix and its inverse
             setinvers = setinvers,
             getinvers = getinvers)
}


## Return a matrix that is the inverse of x. It accept x in form of data frame or matrix as it input
cacheSolve <- function(x, ...) {     
           
        data <- x$getmatrix()      ##assigned the matrix
        inv <- solve(data, ...)    ## evluate the invers value of the matrix
        x$setinvers(inv)           ## store the invers matrix
        inv
}
