#creating factors

# Create a vector as input.
data <-
  c("A","B","A","D","D","A",
    "B","B","B",
    "A","D")
print(class(data)) 
# Apply the factor function.
factor_data <- factor(data)

class(factor_data)
print(factor_data)
#Shows the number of levels in a factor
print(nlevels(factor_data))
