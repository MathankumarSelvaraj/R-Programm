#Creating Matrices
m=matrix(c('a','a','b','c','b','a'),nrow=2,ncol=3, byrow=TRUE)
print(m)
print(class(m))

# Elements are arranged sequentially by row.
M <- matrix(c(1:100), nrow=10,ncol=10, byrow=TRUE)
print(M)
# Elements are arranged sequentially by column.
N <- matrix(c(3:14), nrow=4, ncol=3, byrow=FALSE)
print(N)
# Define the column and row names.
rownames = c('row1','row2','row3','row4')
colnames = c("col1", "col2", "col3")

P <- matrix(c(3:14), nrow=4, byrow=TRUE,
            dimnames=list(rownames, colnames))
print(P)
P[1,2]
P['row1','col2']
#Transposing Matrix
 
