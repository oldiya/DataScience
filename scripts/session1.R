#####################################
# Class 1 Data sciences
# Author: Olalla Diaz Yanez
# Creation date: 02/03/2018
#####################################

 ## Variable assigment

    a <- 1
    b <- 3
    a + b
    a - b
    a <- 4
    a
    
 ## Data types
    
    # Numerics 
    
    a <- 1.5
    class(a)
    is.numeric(a)
    
    # Integer
    
    c <- 3
    class(c)
    is.integer(c)
    class(a)
    as.integer(c)
    is.integer(c)
    as.integer(a)
    
    # Logical 
    
    m <- TRUE
    p <- T
    o <- FALSE
    
    m == o
    
    c <- 3
    a <- 1

    c == a    
    class (o)
    
    # Character
    
    s <- "R is super cool"
    class(s)
    d <- "TRUE"
    class(d)
    
    # not a character:
    d <- TRUE
    class(d)
    
  ## Vectors
    
    a <- c(1, 2, 3)
    b <- c(5, 5, 5)
    p <- c("e", "m", "p")    

    class(p)    
    class(a)    
    
    c <- c("a", 1)
    d <- c(TRUE, 1)
    
    lv <- c(T, T, F, rep (T, 7))
    length(lv)
    lv2 <- c(T, T, F, rep (T, 7), rep(F, 2), F)
    
    v3 <- 1:5
    v <- c(1, 2, 3, 6, 5)
    v3 == v
    
    x <- c(1:5, rep(1, 3))
    
    # TASK create a vector of length 100
    
    l <- 1:100
    l <- rep(1,100)
    l <- c(1, 1, 3:100)
    rep(3, 100)
    3:100
    length(l)
    
    # select elements in a vector
    
    a <- c(1, 2, 1, 5, 8)
    a[3]
    a[1:3]
    a[-3]
    a[1:3] <- c(1, 2, 3)
    a[5] <- 10
 
    a[a > 2]
    a > 2
    
  ## Data frames
    
   mysimpledata <- data.frame(a = c(1, 2, 3), b = c("a", "a", "a"),
                              c = c(T, T ,F))
    
   mysimpledata[1, ]
   mysimpledata[3, 3]
   mysimpledata[, 1]
   mysimpledata[, "a"]
   mysimpledata[, "b"]
   
   library(datasets)
   data(iris)
   View(iris)
   head(iris)
   summary(iris)
   iris[, 1]
   iris[, "Sepal.Length"]
   iris[1,]  
   iris$Petal.Width
   
   View(iris[iris$Species == "setosa", ])
    
   iris$Petal.Length
   print(a)
    
        