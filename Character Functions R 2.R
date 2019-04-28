#as.character function converts argument to character type. 
Z=25
class(Z)
Y = as.character(Z)
class(Y)
#is.character function checks whether a vector is a character or not, 
x = "I love R Programming"
is.character(x)
#The paste function is used to join two strings.
#paste (objects, sep = " ", collapse = NULL)
#The sep= keyword denotes a separator or delimiter. 
#The default separator is a single space. 
#The collapse= keyword is used to separate the results.
x = "Guru"
y ="Ram"
paste(x, y)
paste(x, y, sep = ",") 
#To create column names from x1 through x10
paste("x", seq(1,10))
#Use of 'Collapse' keyword
paste("x", seq(1,10), sep="", collapse=",")

#substr Syntax - substr(x, starting position, end position)
x = "abcdef"
a=substr(x, 1, 3)
print(a)
#Replace Substring - substr(x, starting position, end position) = Value
substr(x, 1, 2) = "11"
print(x)

#nchar function is used to compute the length of a character value.
x = "I love R Programming"
nchar(x)
#Replace the first match of the string
#sub(sub-string, replacement, x, ignore.case = FALSE)
sub("OKAY", "fine", "She is okay.")
sub("OKAY", "fine", "She is okay.",ignore.case = TRUE)
#Replace all values of a vector
cols = c("x1", "x2", "x3")
sub("x", "Year", cols)

#Extract Word from a String
#word(string, position of word to extract, separator) 

x = "I love R Programming"
install.packages('stringr')
library(stringr)
word(x, 1,sep = " ")
word(x, 4,sep = " ")
word(x, -1,sep = " ")


x = "I love R Programming"
tolower(x)
toupper(x)
library(stringr)
str_to_lower(x)
str_to_upper(x)
str_to_title(x)

#Remove Leading and Trailing Spaces
#trimws(x, which = c("both", "left", "right"))

a = " I am hungry "
trimws(a,which=c('left'))
trimws(a,which=c('right'))
trimws(a)

#str_trim() eliminates leading and trailing spaces.
x= " Hot Cakes "
library(stringr)
str_trim(x)

#Converting Multiple Spaces to a Single Space
x= "Best    Words"
library(qdap)
Trim(clean(x))

#Repeat the character N times
strrep(c('A','B','C'),3)

#Find String in a Character Variable
x = c("Aon Hewitt", "Aon Risk", "Hewitt", "Google")
library(stringr)
A=str_detect(x,"Aon")
A
x[A]
x[str_detect(x,'Aon')]


#Splitting a Character Vector
x = c("I love R Programming")
strsplit(x," ")
strsplit(x, "R ")

#Selecting Multiple Values
x = sample(LETTERS,100, replace = TRUE)
x[x %in% c("A","B","C")]

#Pattern Matching
x <- "My Paya"
gsub("Pa","Aa",x)


