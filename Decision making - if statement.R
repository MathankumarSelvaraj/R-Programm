#If statement

x <- 30L
if(is.integer(x)){
  print("X is an Integer")
}
x <- 5
if(x > 0){
  print("Positive number")
}
#if else
x <- c("Who","is","there")
if("There" %in% x){
  print("there is found")
} else {
  print("there is not found")
}
x <- -55
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

#If then else if

x <- c("what","is","truth")
if("Truth" %in% x) {
  print("Truth is found the first time")
} else if ("truth" %in% x) {
  print("truth is found the second time")
} else {
  print("No truth found")
}


x <- 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else {
  print("Zero")
}

k = 99
if(k > 100) 1 else 0


#Switch

x <- switch(
  2,
  "first",
  "second",
  "third",
  "fourth"
)
print(x)