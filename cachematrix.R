# Here are 2 functions that do the following:

# 1) caches the entered matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  matrix_cache<<-solve(x)
  matrix_entered<<-x
}

# 2) Gets the inverse of a matrix entered, but will simply return the cached
# matrix from function in #1 if the result is the same as that of the cache 

cacheSolve <- function(x, ...) {
  solved_matrix<-solve(x)
    if(identical(solved_matrix,matrix_cache)){solved_matrix<-matrix_cache}
    print(solved_matrix)
}
