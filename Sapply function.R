#sapply()  applies a function to margins of an array or matrix.

#sapply(x, func, ..., simplify = TRUE, USE.NAMES = TRUE)

#x: array
#func: the function

#R built-in dataset, Biochemical Oxygen Demand
BOD    
#Sum up for each row
sapply(BOD, sum)
#Multipy all values by 10
sapply(BOD,function(x) 10 * x)
#Used for array, margin set to 1
x <- array(1:9)
sapply(x,function(x) x * 10)
#Two dimension array, margin can be 1 or 2:
x <- array(1:9,c(3,3))
x
sapply(x,function(x) x * 10)



