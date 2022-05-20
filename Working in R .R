# Creating Vectors

seq(from= 4.5, to= 2.5, by= -0.5)  # This creates a list of numbers from 4.5 to 2.5 in increaments of -0.5

seq(from= -2.7, to= 1.3, length.out= 9) # This creates a list of numbers from -2.7 to 1.3 by the length 

# Combining vectors
baskets.of.Granny <- c(12, 4, 4, 6, 9, 3)
baskets.of.Geraldine <- c(5, 3, 2, 2, 12, 9)

## Combining both vectors
all.baskets <- c(baskets.of.Granny, baskets.of.Geraldine)
all.baskets

# Repeating Vectors
rep(c(0, 0, 7), times= 3) # This repeats the values 3 times over 

rep(c(2, 4, 2), each= 3) # This repeats each value by 3

rep(c(0, 7), times= c(4,2)) # This repets the value 0, 4times and the value 7, 2times.

## getting values in and out of vectors

# Understanding indexing in R
numbers <- 30:1
numbers

# Extracting values from a vector
numbers[5] # Breackerts [] allow me to gert the value at the index

## Selecting multiple values 
numbers[c(5, 11, 3)]

# Dropping values from a vector
numbers[-3] # This removed the 3rd values which was 28

# removing the first 20 values 
numbers[-(1:20)]



# Changing values in a vector
baskets.of.Granny[3] <- 5 # This is changing the 3rd index to 5
baskets.of.Granny

baskets.of.Geraldine[c(2, 4)] <- 4 # This is replacing index 2 and 4 with just 4
baskets.of.Geraldine



# Making a copy to fix mistakes if any have been made
Granny.copy <- baskets.of.Granny 

#accidental errors
baskets.of.Granny[4] <- 11
baskets.of.Granny

#fixing the mistake
baskets.of.Granny <- Granny.copy
baskets.of.Granny


# Working with logical vectors

# Comparing Values
baskets.of.Granny > 5 # This dispalces a true or false value for each index.

# Find out which indexs is grater than 5
which(baskets.of.Granny > 5)


# Find out who scored view baskets
the.best <- baskets.of.Geraldine < baskets.of.Granny
which(the.best)

# Combining logical statements 

#Find out which games granny scored the fewest baskets and the most baskets 
min.baskets <- baskets.of.Granny == min(baskets.of.Granny)
max.baskets <- baskets.of.Granny == max(baskets.of.Granny)

min.baskets | max.baskets


#Droping NA

x <- c(3, 6, 1, 2)
x[x > 2]

x[!is.na(x)] # The NOT operator (!) reverse the stance  

# Cumulating operations
cumsum(baskets.of.Granny)

cummax(baskets.of.Geraldine)

# Calculating differences
diff(baskets.of.Granny)

# Recycling arguments

Granny.pointers <- c(10, 2, 4, 0, 4, 1, 4, 2, 7, 2, 1, 2) # first number is 2 points, 2nd numher is 3 points
points <- Granny.pointers * c(2, 3)
points
sum(points)


round(diff(baskets.of.Granny) / baskets.of.Granny[1:5] * 100)
















