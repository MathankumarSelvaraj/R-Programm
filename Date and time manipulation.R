
my.date2 <- as.Date("12/20/30", format="%m/%d/%y") # input date in a different format
print(my.date2)
my.time <- strptime("12/20/30 14.34.35", format="%m/%d/%y %H.%M.%S") # input time and date
print(my.time)
my.date <- as.Date("2010-12-20")
weekdays(my.date2) # Get a string representing the weekday of the specified date
months(my.date2)
quarters(my.date2)



my.date <- as.Date("2010-12-30")
a=julian(my.date) # Get the integer number of days since the beginning 
#of epoch
a
as.numeric(a)

#creates the 10 first days of January 2012
seq(from = as.Date("01/01/12", "%d/%m/%y"), to = as.Date("10/01/12","%d/%m/%y"), by = "day")
#creates the 20th of each month in 2012
seq(from = as.Date("20/01/12", "%d/%m/%y"), to = as.Date("20/12/12","%d/%m/%y"), by = "month")
#create a sequence of every other day in january 2012
seq(from = as.Date("01/01/12", "%d/%m/%y"), to = as.Date("31/01/12","%d/%m/%y"), length.out = 6 )
