#Revision 
#Last Day 
#2019 Paper

#Q1
#a
pnorm(11,10,5)
#b
1-pnorm(11,10,5)
#c
pnorm(11,10,5)-pnorm(7,10,5)

#Q2
greet=function(TIME){
  if(TIME<12){
    print("Good Morning")
  }else if(TIME<15){
    print("Good afternoon")
    }else{
      print("Good evening")
    }
}

greet(13)

T=Sys.time()

#Q3

#a
data("cO2")
str(co2)

summary(co2$conc)

summary(co2$uptake)

#b
hist(co2$conc)
hist(co2$uptake)


#Q4
dieRoll =function(n){
  x= sample(c(1:6),n,replace = T)
  return(sum(x %% 2 == 0))
  }

dieRoll(5)



################################
##2018 Paper

#Q2


n=50
M=5000

xSD=numeric(0)
for(i in 1:M){
  x=rnorm(n,100,sqrt(20))
  xSD[i] = sd(x)
}
hist(xSD,main="Distribution fo Sample SD")


























