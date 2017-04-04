setwd("~/Documents/paper/2017/TestAWARE")

age=c(25,24,27,27,26,26,25,25,26,26,26,25)
mean(age)
#median(age)
sqrt(var(age))

exp=c(1,2,2,4,4,3,1,1,2,1,2,1)
mean(exp)
sqrt(var(exp))

#no testing vs black
row1=c(0,7)
row2=c(13,6)
df1=data.frame(row1,row2)
chisq.test(df1)

#black vs white
row1=c(7,13)
row2=c(6,0)
df1=data.frame(row1,row2)
chisq.test(df1)

#Q1
Q1=c(90,90,95,90,100,90,90,80,100,85,80,90)
mean(Q1)
median(Q1)
sqrt(var(Q1))

#Q2
Q2=c(90,90,93,90,40,80,90,85,95,80,70,70)
mean(Q2)
median(Q2)
sqrt(var(Q2))

shapiro.test(Q2)

#Q3
Q3=c(90,100,96,90,100,85,90,85,100,80,100,90)
mean(Q3)
median(Q3)
sqrt(var(Q3))

shapiro.test(Q3)

wilcox.test(Q2,Q3)

#Q4
Q4=c(90,100,98,90,100,85,90,85,100,70,100,80)
mean(Q4)
median(Q4)
sqrt(var(Q4))

#Q5
Q5=c(100,70,95,90,60,80,90,90,90,90,100,30)
mean(Q5)
median(Q5)
sqrt(var(Q5))

#Q6
Q6=c(90,90,96,90,10,90,90,95,70,100,90,80)
mean(Q6)
median(Q6)
sqrt(var(Q6))

#Q7
Q7=c(90,90,97,90,70,90,90,95,70,90,100,80)
mean(Q7)
median(Q7)
sqrt(var(Q7))

#Q8
Q8=c(90,98,100,90,100,100,90,85,90,90,100,100)
mean(Q8)
median(Q8)
sqrt(var(Q8))

#Q9
Q9=c(90,100,100,80,100,100,95,95,100,100,100,100)
mean(Q9)
median(Q9)
sqrt(var(Q9))


  
  
