#####################################
# Class 3 Data sciences
# Author: Olalla Diaz Yanez
# Creation date: 16/03/2018
#####################################


  ## Create a data.frame

   # Create a data frame call "trees" that has 3 columns
     # column 1 is called ID and has  1, 2, 3
     # column 2 is called dbh and contains the values 5, 5.6, 8
     # column 3 is called specie and contains spruce, birch, pine

    threetrees <- data.frame(plot = c(100, 100, 300), 
                        dbh = c(5, 5.6, 8),
                        species = c("spruce", "birch", "pine"))
   
    # save the data frame in to your data folder
    
     write.csv(x = threetrees, file = "data/threetrees.csv", row.names = FALSE)
     
    # load the dataset threetrees an call it trees
     
     trees <- read.csv(file = "data/threetrees.csv")

     # select the columd dbh
     
     trees$dbh
     
     # select the row that has species equal to spruce
     
     trees[trees$species == "spruce", ]
     
     # select trees that have diameter bigger than 5.5 cm
     
     trees[trees$dbh > 5.5, ]
     
     # create a column with the Basal Area estimation 
     
     trees$BA <- pi * trees$dbh^2
     
     # round the BA to two decimal
     
     trees$BA <- round(trees$BA, 2)
     
     # calculate the total BA in plot 100
     
     sum (trees$BA[trees$plot == 100])
     
     # add a new tree  that is in plot 200, dbh = 10 and species is spruce
     
     newtree <- c(plot = 300,  dbh = 10,  species = "spruce", BA = pi * 10^2)
     
     cbind(trees, newtree)
     
     # count the number of rows
     
     nrow(trees)
     
     
    ## subset a vector  data 
     
     # create a vectors 
     
     x <- c(3.4, 4.1, 7.8, 5.6, 7.5)
     
     # select the first, third and fourth element of the vector
     
     x[c(1,3,4)]
     
     # select all the elements except the second 
     
     x[-2]
     
     # select all the elements except the first and fourth element
     
     x[c(-1, -4)]
     
     # select all the values above 5
     
     x[x > 5]
     
     
  ## NEW 
     
  ##  Write conditional statements with if() and else().
     
     # if
     #if (condition is true) {
     #   perform action
     #}
     
     # if ... else
     #if (condition is true) {
     #   perform action
     #} else {  # that is, if the condition is false,
     #   perform alternative action
     #}
    
     #   if (condition is true) {
     #perform action
     #} 
     
     # example:
     
     if (x >= 10) {
       print("x is greater than or equal to 10")
     } else {print("x is lower to 10")}
     
    # create a column called size
     
     trees$size <- NA
     
    # create a if trees diameter is bellow 5.5 cm call tree size small, if else called medium
    
     treesdiam <- 6
     size <- NA
     
     if (treesdiam < 5.5 ){
       size <- "small"
     } else { size <- "medium"}
     
     # change value the tree diam and run the if condition again and see if it work
       
  ## For operator
     
     #for(iterator in set of values){
     #   do a thing
     #}
    
    #
     for(i in 1:10){
       print(i)
     }
     
     for(i in 1:5){
       for(j in c('a', 'b', 'c', 'd', 'e')){
         print(paste(i,j))
       }
     }
    
     
  
  ## Plot 
     
  library(datasets)
  data(iris)
  
  plot(iris$Petal.Length, iris$Petal.Width)
  
  
  ## function 
  
    my_sum <- function(a, b) {
      the_sum <- a + b
      return(the_sum)
    }
    
    CalculateBA <- function(dbh) {
      BA <- dbh^2 * pi
      return(BA)
    }
    
    
  
#Ploting
#histograms
#Basic statistics
#linear model
#summary of the linear model
#Using Libraries
#File path
#Working directory