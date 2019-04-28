v <- LETTERS[1:6]
for ( i in v){
  if (i == "D"){
    break
  }
  print(i)
} 

v <- LETTERS[1:6]
for ( i in v){
  if (i == "D"){
    next
  }
  print(i)
} 

v <- LETTERS[1:6]
for ( i in v){
  if (i %in% c('D','B')){
    next
  }
  print(i)
} 