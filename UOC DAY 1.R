print('Welcome to R studio')

#Heights of friends
x=150
y=165
z=143


Average = (x+y+z)/3
#Display Average
Average

#vectors
height = c(150,165,143)
height
mean(height)

sum(height)/3
sum(height)/length(height)

#R is Case Sensitive
#print(Height)
#Clear the Console Ctrl+L
#R is a dynamically typed language 
z=100
z
z=10
z
z="Apple"
z
z='x'
z


#data types
#numeric 
x=10 
#character
z="A"
#integer
i=as.integer(10)
i


#data structures 
##vector
c(10,20,30)
myVec=c(10,20,30)
myVec

#indexing 
myVec[1]
myVec[2]
myVec[3]

myVec[-1]
myVec[-2]

#sub-setting
myVec[c(1,2)]
myVec[-3]

#extracting 1st and 3rd elements 
myVec[c(1,3)]

A= c(10,20,30,"R1","R2","R3")
A

data.frame(Current = c(5,10,7),
           Type = c("R1","R2","R3"))
myDf=data.frame(Current = c(5,10,7),
                Type = c("R1","R2","R3"))

myDf


#average current
myDf$Current
mean(myDf$Current)


#first row 
myDf[1,]

myDf[1,c(1,2)]

#first column
myDf[c(1,2,3),1]
myDf[,1]

#sequences 
# 1 2 3 4 5
c(1,2,3,4,5)
1:5
10:1
10:6
-5:5
1:100
2:10

seq(2,10,by=2)
1:5+1:5
1:5*2

B=c(10,25,30,14,16,35,82)
B[c(1,2,3,4)]
B[1:4]
B[c(1:4)]

#extracting 2,4,6
B[1:3*2]

#Creating Marks Data Frame
marksDf=data.frame(ID = c("010","011","012","013"),
           Marks1 = c(75,60,80,50),
           Marks2 = c(80,70,90,75))
#Display the output
marksDf

#create the final marks 
marksDf$final_marks= marksDf$Marks1 + marksDf$Marks2
marksDf

#

x=c(1,2,3,4,5)
y=c(1,5,3,7,5)
x==y
sum(x==y)

z=c(10:20)
z
#even numbers
z[1]
z/2
z %% 2 ==0
z[z %% 2 ==0]

marks=c(70,80,35,40)
M=marks+10
M

append(1:10,99,after = 5)
append(1:10,99,after = 0)

#Creating Matrices in R 
A=1:6
dim(A)
dim(A)=c(2,3)
print(A)

#functions
x=10:15
add10=function(y){
  print(y+10)
}
add10(100)

#miles into km 
miles2km=function(miles){
  print(miles*1.6)
}
miles2km(10)
miles2km(miles = 10)

miles2km=function(miles){
  cat(miles,"miles is",miles*1.6,"Km \n")
}
miles2km(50)

#additional packages
#library(lib name)

#next week
#Lets include a Gender column and extractions

#Delete the Objects 

ls() #listing all the objects 


