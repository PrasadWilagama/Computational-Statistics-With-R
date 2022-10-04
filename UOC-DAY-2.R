#UOC DAY 02
#Creating Marks Data Frame
marksDf=data.frame(ID = c(1:5),
                   Marks = c(100,95,60,70,82),
                   Gender = c("M","F","M","M","F"))
#Display the output
marksDf

#EXTRACT THE MARKS OF FEMALES 
marksDf$Marks[2]
marksDf$Marks[5]

marksDf$Marks[c(2,5)]
marksDf$Gender =="F" 
marksDf

marksDf$ID[marksDf$Gender =="F"]
marksDf$Marks[marksDf$Gender =="F"]

#find average marks of males 
mean(marksDf$Marks[marksDf$Gender =="M"])

#pop up new window
fix(marksDf)

marksDf$Grade=c("A","A","C","B","A")
marksDf

#get rid of the gender column
marksDf$Gender =NULL
marksDf

names(marksDf)
str(marksDf)

#importing external data 

#working directory

getwd()

setwd("G:/YEAR 2/Semester-3/AUG -NOV (4)/EA 2009/UOC R STUDIO/Data")

dir()



#READING A CSV FILE 
data= read.csv("myCSVData.csv")
data


dataExcel
#find the average marks using the csv file 

#plot
x=1:10
y=20:11
plot(x,y,type="l", col="blue",lwd=3)

y=x**2
x=c(-5,-3,0,3,5)
y=x**2
plot(x,y,type="l")


x=c(-5,-3,0,3,5)
x=seq(from=-5, to=5,by=0.01)
y=x**2
plot(x,y,type="l", main="Y=X squared")
plot(x,y,type="l", main=bquote("Y=X^2"),ylab="Y",xlab="X")



rep(1, times=5)
rep(c(1,2,3),times=5)

A=c(1,1,2,2,3,3)
rep(A, times=4)

#better answer  
rep(c(1,2,3),times=4,each=2)

#data structure 
#arrays


a1=array(1:5,dim=c(1,5))
a1

#2d array 
a2=array(1:6,dim=c(2,3))
a2

a3=array(11:16,dim=c(2,3))
a3

a2+a3


#matrices

m1=matrix(c(1:6),nrow=2, ncol=3)
m1

#creating the matrix

m2=matrix(c(10,12,13,14,15,16),nrow=2, ncol=3)
m2


m1=matrix(c(1:6),nrow=2, ncol=3)
m1

#Ex1
# 11 12 13
# 14 15 16

A = matrix(
  c(11,12,13,14,15,16),
  # No of rows
  nrow = 2,  
  # No of columns
  ncol = 3,        
  byrow = TRUE         
)
A

A+A
A*2



A=matrix(1:6,2,3,byrow=T)
A
B=matrix(1:6,3,2,byrow=F)
B

A%*%B




A=matrix(1,-2,3,-7)
A

#linear equation solve
m1=matrix(c(1,-2,3,-7),nrow=2, ncol=2,byrow = T)
m1

m2=matrix(c(5,-15),nrow=2, ncol=1,byrow = T)
m2

solve(m1,m2)

#inverse 
solve(m1)

m1=matrix(c(10,11,15,17),nrow=2, ncol=2,byrow = T)
m1
solve(m1)

#R datasets

#loading mass package 

library(MASS)
shoes

data(mtcars)
head(mtcars)
tail(mtcars)



#random sampling 
sample(1000,50)
sample(10,3)
set.seed(123)
