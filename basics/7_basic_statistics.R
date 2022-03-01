# introduction to elementary statistics
x<-sample(x=1:100,size = 100,replace = TRUE)
x
mean(x)
y<-x
y[sample(x=1:100, size=15, replace = FALSE)] <-NA
y
mean(y)
mean(y,na.rm=TRUE)

# weighted mean

note<-c(45,67,13,44,93)
ag<-c(4,5,2,2,3)
mean(note)
wemean<-weighted.mean(x=note,w=ag)
wemean

# variance

var(note)
sum(((note-mean(note))^2)/length(note)-1)

# standard deviation
sqrt(var(note))
sd(note)

# min-max value
note
min(note)
max(note)

# median 
median(note)

# summary function
# we can find distribution(quantile) values with the summary functions
summary(note)
quantile(note,probs=c(0,25,0,75))

# correlation and covariance

#example
#install ggplot2

require(ggplot2)
head(economics)
cor(economics$pce,economics$psavert)
# if correlation=1, fully associated
# if correlation=0, not associated
# if correlation=-1, opposite associated
# btw, correlation between multiple variables -> cor(economics[,c(2,4:6)])

#note:we download the gally package to display the numerical data graphically
# install.packages("GGally")

# qualitative datta(in an other saying: categorical data)
# install MASS, after this part we will need 
library(MASS)
painters

#PROBABILITY DISTRIBUTIONS
#normal distributions(Also called the gaussian distribution)
#check GAUS_R.png

#the rnorm function is used to generate random numbers that fit a normal distribution
#for the standart 0-1 number

rnorm(n=10)
#to generate 20 normally distributed data with mean of 100, standard deviation of 30
rnorm(n=20,mean=100,sd=30)

#density for the distribution is calculated with the dnorm function

rasNormal_10<-rnorm(10)
rasNormal_10
dnorm(rasNormal_10)
dnorm(c(-1,0,1))
rasNorm<-rnorm(10000)
rasYog<-dnorm(rasNorm)
require(ggplot2)
ggplot(data.frame(x=rasNorm,y=rasYog))+aes(x=x,y=y)+geom_point()+labs(
  x="random normal variable",y="density")

# cumulative probability distribution

# calculates the probability of getting values smaller than the value
# with pnorm func. check CMLTV_PD_R.png

rasNormal_10<-rnorm(10)
rasNormal_10
pnorm(rasNormal_10)
p<-ggplot(data.frame(x=rasNorm,y=rasYog))+aes(x=x,y=y)+geom_line()+labs(
  x="x",y="density")
p
negS<-seq(from=min(rasNorm),to=-1,by=.1)
small1<-data.frame(x=negS,y=dnorm(negS))
head(small1)
small1<-rbind(c(min(rasNorm),0),small1,c(max(small1$x),0))
p+geom_polygon(data=small1,aes(x=x,y=y))

# for the range of -1,1
nnseq<-seq(from=-1,to=1,by=0.1)
head(nnseq)
nn1<-data.frame(x=nnseq,y=dnorm(nnseq))
nn1<-rbind(c(min(nn1$x),0),nn1,c(max(nn1$x),0))
p+geom_polygon(data=nn1,aes(x=x,y=y))

# find the frequency distribution of qualitative data
# example: how many painters are there in each school?

library(MASS)
painters$School
class=painters$School
class.freq=table(class)
class.freq

# relative frequency distribution of qualitative data
# RelativeFreqDistr=Frequency/SampleSize
# example

library(MASS)
class=painters$School
class.freq=table(class)
class.freq
class.relfreq=class.freq/nrow(painters)
class.relfreq
#old=options(digits=1)
#class.relfreq
#cbind(class.relfreq)

# categorical statistics
# average essay grade with MASS

library(MASS)
class=painters$School
c_class=class=="C"
c_painters=painters[c_class,]
aeg=options(digits=5)
mean(c_painters$Composition)

#alternative code:
#tapply(painters$Composition,painters$School,mean)

# quantitive data(continious data)
# consists of numeric values used in arithmetic operations. this is opposite of 
# qualitative data. we will use the "faithful" data pack
# there are two observation variables in this data:
# 1-eruption: spray time of hot water supply
# 2-waiting: Waiting time to next spray

head(faithful)

# frequency distribution of quantitative data
# example: for the faithful data, solution is consists of several steps
# 1: we find the range of spray times with range function:
time1=faithful$eruptions
range(time1)
# 2: we have to divide all ranges into subranges. 
# there shouldn't be no overlap for subranges
# the limits are 1.6 - 5.1, sub-ranges can be formed by rounding
# up 1.5-5.5 and 0.5 steps.
subranges=seq(1.5,5.5, by=0.5)
subranges

# 3: To define the range as closed from left and open from right,
# we use the this function
time1.cut=cut(time1,subranges,right=FALSE)
# 4: we find the frequency distribution with the table function
time1.freq=table(time1.cut)
time1.freq

# generate the frequency distribution in column format
cbind(time1.freq)

# histogram
hist(time1,right = FALSE)
# colorized
colors = c("red", "yellow", "green", "violet", "orange",   "blue", "pink", "cyan")
hist(time1, right=FALSE, col=colors, main="Old Faithful SPRAYS",
     xlab="TIME-MINUTE")

