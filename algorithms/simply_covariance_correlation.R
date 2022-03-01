#COVARIANCE:
#Indicates whether there is a relationship between two variables such as x and y
#if the covariance is positive, there is a positive relationship between x and y
#that is, as one increases, the other also increases.
#If the covariance is negative, there is a negative relationship between x and y.
#In this case, as one increases, the other decreases.
#If the covariance is zero, it means that there is no relationship between the two variables.

#check covariance.png

# cov(x,y) -> is the covariance value between the x and y variables
# Xi -> x variable value
# Yi -> y variable value
# x̄ -> mean of Xi data values
# ȳ ->  mean of Yi data values
# n -> total data

# we can use cov() function for covariance calculation
#example

x<-c(2,5,7,12,16,21,25,36,41)
y<-c(5,2,9,3,23,45,11,23,54)
print(cov(x,y))

#a positive value here, indicates a positive relationship between x and y
#and as one value increases, the other also increases

#CORRELATION:
#correlation is like covariance but,The difference is that in correlation,
#the strength or degree of the relationship is also determined.
#check correlation.png

# r(x,y) -> is the correlation coefficient between the x and y variables
# cov(x,y) -> is the correlation value between the x and y variables
# Sx -> is the standard deviation of the variable x
# Sy -> is the standard deviation of the variable y
#! correlation coefficient is a limited value between -1 and +1
# (-) -> indicates negative correlation
# (+) -> indicates positive correlation
# 0 -> no relation

#example:
#we can use cor() function 
x<-c(2,5,7,12,16,21,25,36,41)
y<-c(5,2,9,3,23,45,11,23,54)
print(cor(x,y))
#a result close to 1 indicates a strong positive correlation.
