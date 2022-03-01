#check linear_regression_2.png

# y=b0+b1*x1+b2*x2+...+bn*xn

# y=dependent variable
# b0=constant
# b1,b2,bn = coefficients
# x1,x2,xn = independent variables

#example
# we will use lm() function
# this function creates a relationship model between dependent and independent variables
# form -> lm(y~x1+x2+x4,...,DATA)

x1<-c(1,1,2,3,4,2,1)
x2<-c(1,3,1,2,1,1,2)
x3<-c(1,4,2,1,1,3,2)
y<-c(4,0,5,11,11,9,3)
s<-data.frame(y,x1,x2,x3)
z<-s
model <- lm(s$y~s$x1+s$x2+s$x3,data = z)
print(model)

a<-coef(model)[1]
print(a)
b1<-coef(model)[2]
b2<-coef(model)[3]
b3<-coef(model)[4]
print(b1)
print(b2)
print(b3)

#when we look at the results:
# a=2,b1=3,b2=1 and b3=-2
# accordingly model will be in the form of 
# Y=2+3,x1+x2-2,x3
# Y value for x1=5,x2=3,x3=-2 dataset:
# y=2+3.5+3-2.(-2) 
# the result is y=24 ...
