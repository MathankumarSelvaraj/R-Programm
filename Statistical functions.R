x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
# Find Mean.
result.mean <- mean(x)
print(result.mean)

mean(mtcars$mpg)

#Applying NA function
# Create a vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
# Find mean.
result.mean <- mean(x)
print(result.mean)
# Find mean dropping NA values.
mean(x,na.rm=TRUE)


x=c(11,12,13,14,15,16,17,18,19)
# Find the median.
median.result <- median(x)
print(median.result)


#Find the mode

#create the function first
# Create the function.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
# Create the vector with numbers.
v <- c(2,2,4,4,948,999,11111,9988999)
# Calculate the mode using the user function.
result <- getmode(v)
print(result)
# Create the vector with characters.
charv <- c("o","it","the","it","it")
# Calculate the mode using the user function.
result <- getmode(charv)
print(result)

#absolute value
x=-1
abs(x)
x=FALSE
a=abs(x)
a

y=TRUE
a=abs(y)
a

#square root
b=sqrt(9999)
b
c=ceiling(3.1)
c
d=floor(3.975)
d
e=trunc(5.99)
e
f=round(3.475, digits=2) 
f
g=signif(3.475, digits=2)
g
#natural logarithm
x=9999
h=log(x)
h
#common logarithm
i=log10(x)
i
j=exp(x)
j
k=cos(x)
k
l=sin(x)
l
m=tan(x)
m
x2=c(22,55,77,99,356,9995,98998999)
n <- quantile(x2, c(.5,.84))
n
n2 <- quantile(x2, seq(0.01:1,
                      by=0.01) )
n2
val=c(29992992,98499494989)
diff(val)
x=c(885,588992,299,2992,3898)
o=range(x)
o
o2=diff(range(x))
o2
p=sum(x)
p
q=min(x)
q
r=max(x2)
r


s=sd(x2)
s
t=rep(1:3, 200)
t
u=seq(1:25)
u
v=seq(1,100,by=2)
v
w=summary(x)
w
w2=summary(mtcars$mpg)
w2
x=table(v)
x
z=table(mtcars$cyl)
z
z=table(mtcars$cyl,mtcars$am)
z
