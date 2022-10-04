#UOC Day 4 out of 6 
#Prasad D Wilagama's R Script

#u=20 and Sigma^2 4.2^2 M=18 
pnorm(18,20,4.2)

pnorm(24,20,4.2)

#p(x>18)=p(x>=18)=1-P(x<=18)
1-pnorm(18,20,4.2)


#p(x>24)=p(x>=24)
1-pnorm(24,20,4.2)

#quantile for 25%
qnorm(.25,20,4.2)

#right hand side quantile 
qnorm(.75,20,4.2)

qnorm(.25,20,4.2,lower.tail = FALSE)

dbinom(10,10,0,5)
(0.5)**10

#when x -Binomial(n=10,p=0.3)
#find the p[X<=2]
dbinom(0,10,0.3)+dbinom(1,10,0.3)+dbinom(2,10,0.3)

pbinom(2,10,0.3)

#Find the P[X<2]
pbinom(1,10,0.3)
dbinom(0,10,0.3)+dbinom(1,10,0.3)



#when x -Binomial(n=10,p=0.3)
#find the p[X>7]=?
dbinom(8,10,0.3)+dbinom(9,10,0.3)+dbinom(10,10,0.3) #ans pattern1
1-pbinom(7,10,0.3) #both are true

set.seed(123)
x=rnorm(100,100,15)
x
hist(x)



rnorm(10,0,1) #same
rnorm(10) #same

y=rnorm(1000)
y
hist(y)

#CLT
#genarating a samplel of size 50 from uniform distribution

x=runif(50)
mean(x)

#repat this for 5000 times 

xBar =numeric(0)
for(i in 1:5000){
  x=runif(50)
  xBar[i]=mean(x)
}

hist(xBar)


#change the sample size
n=100
xBar =numeric(0)
for(i in 1:5000){
  x=runif(n)
  xBar[i]=mean(x)
}

hist(xBar)

#using an exponential function 
n=5
xBar =numeric(0)
for(i in 1:5000){
  x=rexp(n,5)
  xBar[i]=mean(x)
}

hist(xBar)


# Try CLT using the median

# split the plot area
par(mfrow=c(2,2))

n = 5
xMedian = numeric(0)
for(i in 1:5000){
  x = runif(n)
  xMedian[i] = median(x)
}
hist(xMedian, main=paste("n=",n))

n = 10
xMedian = numeric(0)
for(i in 1:5000){
  x = runif(n)
  xMedian[i] = median(x)
}
hist(xMedian, main=paste("n=",n))

n = 30
xMedian = numeric(0)
for(i in 1:5000){
  x = runif(n)
  xMedian[i] = median(x)
}
hist(xMedian, main=paste("n=",n))

n = 100
xMedian = numeric(0)
for(i in 1:5000){
  x = runif(n)
  xMedian[i] = median(x)
}
hist(xMedian, main=paste("n=",n))

#========
n = c(5,10,30,100)
xMedian = numeric(0)
for(i in n){
  for(j in 1:5000){
    x = runif(i)
    xMedian[j] = median(x)
  }
  hist(xMedian, main=paste("n=",i))
}
#========
n = c(5,10,30,100)
xMedian = numeric(0)
for(i in n){
  for(j in 1:5000){
    x = rexp(i,5)
    xMedian[j] = median(x)
  }
  hist(xMedian, main=paste("n=",i))
}

par(mfrow=c(1,1))



B=5000
n=25

#sample from 3 distributions , each with mean and variance 3 

exp.mat=matrix(rexp(B*n,1/3),n,B)
unif.mat=matrix((runif(B*n,0,6),n,B))






#Homework #45
myStair= function(n){
  for(i in 2:n){
    for(j in 1:i){
      cat(j,"")
    }
    cat("\n")
  }
}
  
myStair(5)

#Quiz #37

dieRoll = function(n){
  x= sample(c(1:6),n,replace = T)
  numOdds= sum(x%%2==1)#odd
  cat("There were ",numOdds,"odd Num")
  
}
dieRoll




























