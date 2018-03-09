#####################################
# Session 2 Data sciences
# Author: Olalla Diaz Yanez
# Creation date: 09/03/2018
#####################################


  # Set Rsudio 80 line and 4 for tab (preferences!)

  # Check dataset from the package datasets 

  library(datasets)
  data(iris)
  View(iris)
  head(iris)
  summary(iris)
  iris[, 1]
  iris[, "Sepal.Length"]
  iris[1,]  
  iris$Petal.Width
  
  iris$Petal.Width
  
  View(iris[iris$Species == "setosa", ])
  
  iris$Petal.Length
  
  # Load a dataset from a csv dataset
  
  library(readxl)
  dataset <- read_excel("Data/sampletrees.xlsx")
  View(dataset)
  
  library(readr)
  dataset <- read_csv(file = "Data/sampletrees.csv")
  View(dataset)

  
  # modify the data
  
  
  
  # output the data
  
  write.csv(mynedata, file= "mydata.csv")
  saveRDS()
  save(RData)
  
  #default behaviour! 
  
  dat <- read.csv(file = 'data/sample.csv', stringsAsFactors = TRUE)
  
  
  ## Maths with R 
  
  #Maximun value
  #Minimun value
  #Mean value
  #Median
  median()
  #Variance
  var()
  #Standart deviation
  sd()
  #Correlation
  cor()
  #Round values
  round()

  
  ## Matrix 
  
   B <-  matrix( c(2, 4, 3, 1, 5, 7), nrow=3, ncol=2) 
  
   # B has 3 rows and 2 columns 

   #transpose matrix 
   
   t(B)
   
   # Combining Matrices
   
   C = matrix(  c(7, 4, 2), nrow=3, ncol=1)  # C has 3 rows 
 
   #Then we can combine the columns of B and C with cbind.
   cbind(B, C) 
  
   # we can also combine rows
   D = matrix( c(6, 2), nrow=1, ncol=2)  # D has 2 columns  
   rbind(B, D) 
   
   
  ## Factors 
   
   # The factor() command is used to create and modify factors in R
   
   sex <- factor(c("male", "female", "female", "male"))
   
   # R will assign 1 to the level "female" and 2 to the level "male" 
   #(because f comes before m, even though the first element in this 
   #vector is "male"). You can check this by using the function levels(), 
   #and check the number of levels using nlevels():
   
   levels(sex)
   
   nlevels(sex)
   
   
   # Order in factor
   
   #Sometimes, the order of the factors does not matter, 
   #other times you might want to specify the order because it is meaningful 
   #(e.g., “low”, “medium”, “high”) or it is required by particular type of 
   #analysis. Additionally, specifying the order of the levels allows us to compare levels:

   food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
   levels(food)
   min(food) ## doesn't work
   
   food <- factor(food, levels = c("low", "medium", "high"), ordered=TRUE)
   levels(food)
   min(food) ## works!
   
   
   #TASK
  # You have a vector representing levels of exercise undertaken by 5 subjects
   
  # “l”,”n”,”n”,”i”,”l” ; n=none, l=light, i=intense
   
   #What is the best way to represent this in R?
   
  exercise <- c("l", "n", "n", "i", "l")
  exercise <- factor(c("l", "n", "n", "i", "l"), ordered = TRUE)
  exercise < -factor(c("l", "n", "n", "i", "l"), levels = c("n", "l", "i"), ordered = FALSE)
  exercise <- factor(c("l", "n", "n", "i", "l"), levels = c("n", "l", "i"), ordered = TRUE)
  
  
  exercise <- factor(c("l", "n", "n", "i", "l"), levels = c("n", "l", "i"), ordered = TRUE)
  
  # Converting from a factor to a number can cause problems:
  
  f <- factor(c(3.4, 1.2, 5))
  as.numeric(f)#This does not behave as expected (and there is no warning).
  
  #The recommended way is to use the integer vector to index the factor levels:
  
  levels(f)[f]
  as.numeric(f)
  
  
  ## Lists 
  
  n = c(2, 3, 5) 
  s = c("aa", "bb", "cc", "dd", "ee") 
  b = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
  
  x = list(n, s, b, 3)   # x contains copies of n, s, b
  
  
  # List Slicing
  x[2] 
  
  # Member Reference
  
  x[[2]] 
  
  x[[2]][1] = "ta"
  s
  # s is unaffected
  
  #TASK change the first TRUE to FALSE
  
  
  #Basic visualizations of the data
  #Ploting
  #histograms
  #Basic statistics
  #linear model
  #summary of the linear model
  #Using Libraries
  #File path
  #Working directory
  
  
  