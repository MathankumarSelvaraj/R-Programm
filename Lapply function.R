#lapply function is applied for operations on list objects 
#and returns a list object of same length of original set
#create a list with 2 elements 
l = list(a=1:10,b=11:20)  # the mean of the value in each element
lapply(l, mean)
class(lapply(l, mean))
# the sum of the values in each element 
lapply(l, sum)

a=sapply(l,sum)
class(a)

tapply(mtcars$mpg,mtcars$cyl,max)
