
#CREATE THE VECTOR
student_grades<-c('A','A','B','A','A','C','B','C','A')
print(student_grades)
class(student_grades)
#CREATE THE FACTOR OBJECT
student_grades2<-factor(student_grades)
print(student_grades2)
class(student_grades2)
print(nlevels(student_grades2))
