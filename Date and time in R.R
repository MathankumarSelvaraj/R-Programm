#Dates are represented as the number of days since 1970-01-01, 
#with negative values for earlier dates.

#Sys.Date( ) returns today's date. 
#Sys.time() returs current time.
#date() returns the current date and time.


# print today's date
today <- Sys.Date()
today
format(today, format="%B %d %Y")
Sys.time()
format(Sys.time(),"%H %M")  
# returns the current date and time
date()                       

#Date Conversion

#Character to Date
#as.Date( ) function convertS character data to dates. 
#The format is as.Date(x, "format"), 
#where x is the character data and 
#format gives the appropriate format.

#example 2

a=as.Date('2002-12-12')
print(class(a))
as.numeric(a)

#example 1
dates <- c("May 27 1984", "July 7 2005")
as.Date(dates)
betterDates <- as.Date(dates,
                       format = "%B %d %Y")
print(betterDates)


#example 2
# convert date info in format 'mm/dd/yyyy'
strDates <- c("01/05/1965", "08/16/1975")
dates <- as.Date(strDates, "%m/%d/%Y")
print(dates)

#Date to Character
#Use as.Character( ) function.
# convert dates to character data
strDates2 <- as.character(dates)
class(strDates2)

#Date and time
a=c('1970-01-01 00:00:01')
b=as.POSIXlt(a)
print(b)


