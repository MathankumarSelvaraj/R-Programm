#Creating Arrays
ary<-array(c('MOM','MUMMY','MOTHER'),dim=c(10,3,200))
class(ary)
print(ary)
# Create two vectors of different lengths.
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
# Take these vectors as input to the array.
result <- array(c(vector1,vector2),dim=c(3,2,2))
print(result)