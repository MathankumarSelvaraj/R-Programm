#applies a function to the rows or columns of a matrix or data frame
#It cannot be applied on lists or vectors
data("beaver1")
head(beaver1)
apply(t(beaver1),1,max) 
apply(airquality,2,mean) 
#divide each column element with modulus of 10.
head(apply(beaver1,2,function(x) x%%10))

data = read.table(text="
X Y Z
6 5 0
6 3 NA
6 1 5
8 5 3
1 NA 1
8 7 2
2 0 2", header=TRUE)

#Calculate maximum value across row
apply(data, 1, max)
apply(data, 1, max, na.rm = TRUE)

#Calculate number of 0s in each row
apply(data == 0, 1, sum, na.rm= TRUE)
#Calculate number of values greater than 5 in each row
apply(data > 5, 1,  sum, na.rm= TRUE)
#Select all rows having mean value greater than or equal to 4
df = data[apply(data, 1, mean, na.rm = TRUE)>=4,]
#Remove rows having NAs
helper = apply(data, 1, function(x){any(is.na(x))})
df2 = data[!helper,]
#It can be easily done with 
df2 = na.omit(data)
#Count unique values across row
df3 = apply(data,1, function(x) length(unique(na.omit(x))))

# create a matrix of 10 rows x 2 columns
m <- matrix(c(1:10, 11:20), nrow = 10, ncol = 2)
# mean of the rows
apply(m, 1, mean)

# mean of the columns
apply(m, 2, mean)

# divide all values by 2
apply(m, 1:2, function(x) x/2)
