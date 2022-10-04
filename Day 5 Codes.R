#Day 5/6
#EA 2009 Computational Statistics
#Prasad Dananjaya Wilagama

#Bootstrap

##Original Sample
x=c(3.12,0,1.57,19.67,0.22,2.2)
x

##re sample
y=sample(x,length(x),replace = T)

##mean of the re sample
mean(y)

##Bootstrap Repeat this for 500 times in R

xBar=numeric(0)
for (i in 1:500)        
{
  xBar[i]=mean(sample(x,length(x),replace = T)) 
}

hist(xBar, main = "Bootstrap Distribution of Sample Means")

##Calculate the bootstrap standard error.
sd(xBar)
B=500
sqrt(sum((xBar-mean(xBar))**2)/(B-1))

###

##original Sample 
x=c(3.12,0,1.57,19.67,0.22,2.2)

#obtain the bootstrap distribution of sample of sample median and estimate the 
#SE
B=500
xMedian = numeric(0)
for(i in 1:B){
  xMedian[i]=median(sample(x,length(x),replace = T))
}
hist(xMedian)
sd(xMedian)

##############
#EX
set.seed(100)
x=c(92 ,123 ,88, 598 ,100 ,114 ,89 ,522 ,58 ,191,137 ,100 ,403 ,144 ,184 ,102 ,83 ,126 ,53, 79)
x

n=length(x)

##re sample
y=sample(x,length(x),replace = T)

##mean of the re sample
mean(y)

xBar=numeric(0)
for (i in 1:20)        
{
  xBar[i]=mean(sample(x,length(x),replace = T)) 
}

hist(xBar, main = "Bootstrap Distribution of Sample Means")

sd(xBar)

#t-confidence Interval

mean(xBar) + qt(0.975,n-1)*sd(xBar)


mean(xBar) - qt(0.975,n-1)*sd(xBar)

###
#2
##Bootstrap Percentile Confidence Intervals
#95%
quantile(xBar,c(0.025,0.975))


quantile(1.21,c(0.025,0.975))




####
##pg5 
##Aspirin(11037)
#H=199 (1)
#N.H=11037-119 (0)

##
asprin=c(rep(1,times=119),rep(0,times=(11037-119)))



placebo=c(rep(1,times=98),rep(0,times=(11034-98)))

B=500
RR =numeric(0)
for (i  in 1:B) {
  

 numerator=sum(sample(asprin,length(asprin),replace = T))/11037
 denominator = sum(sample(placebo,length(placebo),replace = T))/11034
 RR[i]=numerator/denominator
}
hist(RR)
quantile(RR,c(0.025,0.975))



##Multivariate Data
##Import Data 

wine=read.table("wine.data.txt",sep = ",")
head(wine)

wine[2:6] #selected only v2 to v6

plot(wine[2:6])

plot(wine$V4, wine$V5)

text(wine$V4, wine$V5,wine$V1,col="red")


#Summary Statistics
sapply(wine[2:14],mean)


mean(wine$V2)
mean(wine$V3)

sapply(wine[2:14],mean)

sapply(wine[2:14],sd)

##########################
########################
#####################

#Standardizing Variables
wine.std = scale(wine[2:14])
head(wine.std)


plot(wine$V4, wine$V5)
cor.test(wine$V4, wine$V5)



plot(wine$V2, wine$V3)
cor.test(wine$V2, wine$V3)

# H0 : There is no correlation
# H1 : There is a significant correlation 

#r=0.09
#p-value = 0.2101 
#since the pval >0.05, we fail to reject H0
#therefore the correlation between v2 and v3 is not significance at 5% level



###Cluster Analysis 

winesample = wine[2:6]
winesampleStd = scale(winesample) 

dist = dist(winesampleStd, method= "euclidean")
clust = hclust(d, method="single")
plot(clust)
rect.hclust(clust, k=2, border="red")


kmeans(winesampleStd,2)





