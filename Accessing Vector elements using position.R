#Accessing vector elements using position
t<-c("Sun","Mon","TUE","WED","THU",'FRI','SAT')
u<-t[c(2,3,6)]
print(u)

#Accessing Vector elements using logical indexing
t<-c("Sun","Mon","TUE","WED","THU",'FRI','SAT')
v<-t[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE,FALSE)]
print(v)

#Accessing vector elements using negative indexing
t<-c("Sun","Mon","TUE","WED","THU",'FRI','SAT')
x<-t[c(-2,-5)]
print(x)

