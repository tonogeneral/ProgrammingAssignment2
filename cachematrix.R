##Sept-12-2020
##Gabriel General Soto
##email: tonogeneral@gmail.com
##usuario: tonogeneral
##branch: Assg_001


## Esta tarea lo que hace es cachear una matriz, guardarla en cache e invertirla

##inicializa un vector de dimensión 20 con números aleatorios


###########   MATRICES DE PRUEBA  ###################################
vecB <- sample(1:16, 16, replace = TRUE)
vecB

#Se inicializa una matriz cuadrada de 4x4
B<-matrix(vecB, nrow=4, ncol = 4, byrow=FALSE)
B

#Se inicializa una matriz de 2x2
C <- matrix(c(1,2,3,4),2,2)
C

#FUNCIÓN QUE AGREGA EN CACHE#

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #print(x)
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  seteo_inversa <- function(inversa) m <<- inversa
  traer_inversa <- function() m
  list(set = set, get = get,
       seteo_inversa = seteo_inversa,
       traer_inversa = traer_inversa)
  
}


#makeCacheMatrix(B)



## Write a short comment describing this function
## Esta función realiza la inversión de la matriz

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ##print(x)
  m <- x$traer_inversa()
  if(!is.null(m)) {
    print(message("getting cached data"))
    return(m)
  }
  #datos <- x$get()
  #determinante <- det(datos)
  #determinante
  #diagonal <- diag(...,nrow(datos),ncol(datos))
  #diagonal
  #FUNCION SOLVE ENTREGA LA INVERSA DE UNA MATRIZ
  m <- solve(datos)
  x$seteo_inversa(m)
  m
}

#cacheSolve(makeCacheMatrix(C))
