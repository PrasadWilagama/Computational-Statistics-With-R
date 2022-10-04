#UOC Day 3 out of 6 
#Prasad D Wilagama's R Script
#Creating Marks Data Frame
marksDf=data.frame(ID = c(10,15,20),
                   X = c(100,200,250),
                   Y = c(500,700,600))
#Display the output
marksDf

##
sample(1:10,5)

sample(1:10,5)

#same set of random no use set.seed
set.seed(100)
sample(1:38,5)

#default one is fault 
sample(1:38,5,replace = T)
#pseudo random numbers 

#sample(c("H","T"),10,replace = T)
set.seed(123)
sample(c("H","T"),10,replace = T,prob = c(0.9 ,0.1))

# Run 50 times and get the Heads
set.seed(123)
x=sample(c("H","T"),50,replace = T,prob = c(0.9 ,0.1))
x
sum(x=="H")


#roll a die 50 times and get 2 unbaised 
set.seed(2)
x=sample(c(1:6),50,replace = T)
x
sum(x==2)



vec1=c(5,3,2,7,9)
vec
sort(vec1)
vec1_sorted=sort(vec1)




#writing functions using R 
#defining the function 

Add10=function(x){
  return(x+10)
}

#calling the function 
y=c(210,212,208)
Add10(y)

z=Add10(y)
z

#Ex
#write a function to convert F to C 

#Defining the function 
F2c=function(x){
  c=(5/9)*(F-32)
  return(x)
}
#calling the function 
F2c(212)

F2c(-40)


print("Tempreture is",100)
cat("Tempreture is",100)

F2c=function(F){
    temp=(5/9)*(F-32)
    cat("Fahrenheit",F,"is",temp,"Ceilcius.")
}
F2c(0)



### ? 

f1=function(x,b)
  {
  Y=2*x+b
  print(y)
}

f1(2,3)

f1(200,600)


#flow controls 

for(i in(1:5)){
  print(i)
}



for(i in(3:9)){
  if (i %% 2 ==1)
  print(i)
}






# if conditions 
x=10 
if(x>0){
  print("Positive")
}


x=-10 
if(x>0){
  print("Positive")
} else{
  print("negative")
}

#nested if
x=2 
if(x>0){
  print("Positive")
} else if(x<0){
  print("negative")
 }else{
    print("Zero")
  }


#while loops 
j=10
while (j<5) {
  print(j)
  j=j+1
}



j=10
while (j>0) {
  print(j)
  j=j-2
}



#repeat loop 
w=1 
repeat{
  print(w)
  w=w+1
  if(w==11)
    break
}

#HW 1 week time

#Defining the function 
Pattern=function(x){
  return(x+10)
}

#calling the function 
y=c(210,212,208)
Add10(y)

z=Add10(y)
z





##summary function
data(mtcars)
summary(mtcars$mpg)
median(mtcars$mpg)
min(mtcars$mpg)

head(mtcars)
tail(mtcars)
dim(mtcars)
nrow(mtcars)
ncol(mtcars)


plot(mtcars$mpg)


#gear type variable
## am
table(mtcars$am)
#0=auto , 1=manual

pie(table(mtcars$am))
barplot(table(mtcars$am))

#boxplot

boxplot(mtcars$mpg)
hist(mtcars$mpg)

data("Orange")
attach(Orange)
hist(age,main = "Age on trees")
hist(age,main = "Age on trees",col="blue")

hist(age,main = "Age on trees",
     col="blue",
     probability=TRUE)
hist(age[circumference>150])

detach(Orange)



boxplot(mtcars$mpg,col = "yellow")
boxplot(mtcars$mpg~mtcars$am, col="yellow")


plot(Orange$age, Orange$circumference)



plot(Orange$age, Orange$circumference, type="l")
head(Nile)
plot(Nile)


x=1:100

y=x+rnorm(100,sd=10)
plot(y,type="l")

plot(y ,pch="+")

plot(y ,pch="-")




pot(Orange$age,Orange$circumference)
identify(Orange$age,Orange$circumference)


par(mfrow=c(2,2))
boxplot(Orange$age,main="Age")
hist(Orange$age,main = "Hist Age")
boxplot(Orange$circumference,main="Circumference")
hist(Orange$circumference,main = "C")
par(mfrow=c(1,1))
  

#distributions 
pnorm(-1.5)



1-pnorm(0.75)















