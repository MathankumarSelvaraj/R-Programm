#functions for checking kinds of objects

a=99.9
b=is.numeric(a)
print(b)

a='TRUE'
is.character(a)


a=TRUE
b=is.logical(a)
print(b)

a=9+9i
b=is.complex(a)
print(b)

a=2L
b=is.integer(a)
print(b)

a=charToRaw('INDIA')
b=is.raw(a)
print(b)

a=matrix(c(1,2,3,1,2,3),nrow=2,ncol=2)
b=is.matrix(a)
b

a=array(c('A','B','C'),dim=c(10,3,2))
b=is.array(a)
b


a=c('A','B','C','B','A','C')
b=factor(a)
is.factor(b)



a=list(c(33,22,4444,9999),array(c('A','B','C'),dim=c(10,3,2)),matrix(c(1,2),nrow=2,
                                                                     ncol=2))
b=is.list(a)
print(b)


a=c(99,9888,88498489)
b=c(23434,345454,2222)
new=data.frame(a,b)
d=is.data.frame(new)
print(d)
