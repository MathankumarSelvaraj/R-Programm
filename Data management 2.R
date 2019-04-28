data() # lists all the datasets in all the packages in memory
data(package="datasets") # lists all the datasets in the "datasets" package
data(mtcars) # loads the orange dataset in memory
?Orange # Help for the "Orange" Datasets

View(mtcars)
#Browsing and editing data
edit(emp.data)
#Creates new data through editor
mydat <- edit(data.frame())
#Describes Data Frame
str(iris) #gives a very brief description of the data
names(iris) #gives the name of each variables
summary(iris) #gives some very basic summary statistics for each variable
head(iris) #shows the first few rows
head(iris, n = 20) # n = 20 means  that the first 20 lines are printed in the R console
tail(iris) #shows the last few rows.

