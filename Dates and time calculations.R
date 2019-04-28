#calculations with dates:
  
  #find the difference between dates:
  dt1=as.Date('2002-02-02')
  dt2=as.Date('2004-02-02')
  dt2 - dt1

difftime(dt2, dt1, units = "weeks")
difftime(dt2, dt1, units = "days")
difftime(dt2, dt1, units = "hours")
difftime(dt2, dt1, units = "mins")
difftime(dt2, dt1, units = "secs")
difftime(dt2, dt1, units = "auto")

data=data.frame(dob=as.Date(c('1998-04-22','2002-08-24')),
                dob2=as.Date(c('2014-04-22','2018-02-11'))) 
difftime(data$dob2,data$dob)

#Add or subtract days:
  dt2-10
  dt2+10
  



