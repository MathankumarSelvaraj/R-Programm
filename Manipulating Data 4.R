#Reading SAS Xport files
library(Hmisc)
mydata <- sasxport.get("mydata.xpt")
# character variables are converted to R factors
str(mydata)

#Testing for Missing Values
is.na(x) # returns TRUE of x is missing
y <- c(1,2,3,NA)
is.na(y) # returns a vector (F F F T)

#VARIABLE LABELS

label(mydata$name) <- "NAME OF THE ANGELS" 
str(mydata)


# recode 13 to missing for variable AGE
is.na(mydata$age)
mydata$age[mydata$age==13] <- NA
is.na(mydata$age)
sum(is.na(mydata$age))

#Replacing a value

A <- c(12,4,4,6,9,3)
B <- c(5,3,2,2,12,9)
A[3] <- 5
A

B[c(2,4)] <- 4
B

#Renaming Variables
a=1
b=2
d=3

install.packages('plyr')
library(plyr)
x <-data.frame(a,b,d)
# Rename column d to "c", updating the variable "x" with the result
x <- rename(x, replace = c("d" = "c"))
x
x <- c(a = 1, b = 2, d = 3)
class(x) 
rename(x, c("d" = "c"))
rename(mtcars, c("disp" = "displ"))

#subsetting data

# select variables 
myvars <- c("name", "sex", "weight")
newdata <- mydata[,myvars]
newdata=mydata[,c('name','sex','weight')]
newdata2=mydata[,c(1,3:5)]
mydata[mydata$age>15 & mydata$sex=='M',]
mydata[mydata$age>15 & mydata$sex=='M',myvars]
mydata[mydata$name %in% c('Barbara','Jane'),] 
mydata[1:5,2:4]
mtcars[mtcars$mpg>30,c(1,4)]
mtcars[,c('mpg','cyl')]
mtcars[mtcars$mpg>20 & mtcars$cyl==6,c(1:2,4)]
#Adding a new column to the data frame
mydata$BMI=mydata$weight/mydata$height^2
#Copying a Data Frame
mydata2=mtcars
mydata4=mtcars$mpg
mydata4=data.frame(mtcars$mpg)
mydata6=data.frame(mtcars$mpg,mtcars$hp,mtcars$cyl,value=mtcars$hp/mtcars$mpg)



a=data.frame(name=c('RAM','PRIYA'),weight=c(100,60))
b=a[a$weight>60,]
d=row(b)
a[-d,]

#Random samples
# take a random sample of size 10 from a dataset mydata 
# sample without replacement
mysample <- sample(1:nrow(mydata),2,replace=FALSE)
mydata2 = mydata[mysample,]
mydata4 = mydata[-mysample,]

a=data.frame(name=c('RAM','RAM','Ram','Ram'),age=c(20,20,20,22))
unique(a)  
unique(a$age)
unique(a$name)
unique(toupper(a$name))

# select 1st and 3rd thru 5th variables
newdata <- mydata[c(1,3:5)]
newdata <- mydata[,c(1,3:5)]
# delete variables weight and height

#Selecting rows and columns randomnly
mydata[sample(1:19,2,replace=FALSE),sample(1:5,2,replace=FALSE)]

a=mydata[-1]
b=mydata[-c(2,3)]

mydata$weight <- mydata$height <- NULL

#removing rows
a=mydata[-1,]
newdata <- mydata[-c(1:5),]

# first 5 observations
newdata <- mydata[1:5,]

# based on variable values
newdata <- mydata[ which(mydata$sex=='F' 
                         & mydata$age > 14), ]

#Subset data (Selecting Observations)

#By 'subsetting' data, it implies filtering rows (observations).

#Create Sample Data
mydata = data.frame(Name = ifelse(sign(rnorm(25))==-1,'ABC','DEF'), age = sample(1:25))

#selecting columns
a=subset(mtcars,select =c(2,5))
#Selecting first 10 observations
newdata <- mydata[1:10,]
#Selecting values wherein age is equal to 3
subset(mydata, age==3)
#Copy data into a new data frame called 'newdata'
newdata<-subset(mydata, age==3)
#Conditional Statement (AND) while selecting observations
subset(mydata, Name=="ABC" & age==3)
#Conditional Statement (OR) while selecting observations
subset(mydata, Name=="ABC" | age==3)
#Greater than or less than expression
subset(mydata, age>=24)
#Keeping only missing records
subset(mydata, is.na(age))
#Keeping only non-missing records
subset(mydata, !is.na(age))
#Finds the sum of total number of missing values in columns
colSums(is.na(mydata))
##Finds the sum of total number of missing values in rows
rowSums(is.na(mydata))

mydata2=data.frame(name=c('R','L'),age=c(22,NA))
#Finds rows without missing values
mydata2[complete.cases(mydata2),]
#Finds rows with missing values
mydata2[!complete.cases(mydata2),]

datafile=data.frame(name=c('RAM','Ram','RAM'),age=c(22,20,NA),stringsAsFactors = FALSE)
#Removes rows missing values
na.omit(datafile)

#Removing duplicate values and rows
datafile2=data.frame(name=c('RAM','Ram','RAM'),age=c(22,20,22),stringsAsFactors = FALSE)
unique(datafile2$name)
unique(datafile2)
#finding frequency
table(mtcars$cyl)
table(mtcars$cyl,mtcars$am)
summary(mtcars$mpg)
IQR(mtcars$mpg)
