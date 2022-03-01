#check linear_regression.png

# Yi = ß0+ß1Xi

# Yi = Dependent Variable
# ß0 = Constant/Intercept
# ß1 = Slope/Coefficient
# Xi = Independent Variable

#example

x <- c (2, 5, 8, 12, 17, 19, 25, 26, 30, 40)
y <- c (3.1,4.2, 6, 7.9, 10.7, 11, 14.6,15.3, 16.5, 21.8)
bag <- lm(y~x)
print(bag)

#FINDING THE ESTIMATED VALUE WITH THE PREDICT FUNCTION
x <- c(2, 5, 8, 12, 17, 19, 25, 26, 30, 40)
y <- c(3.1,4.2, 6, 7.9, 10.7, 11, 14.6,15.3, 16.5, 21.8)
bag <- lm(y~x)
z<-data.frame(x,y)
r <-  predict(bag,data.frame(x=4))
print(r)
# for x=4, y is 3.962408 

#fitting line
x <- c(2, 5, 8, 12, 17, 19, 25, 26, 30, 40)
y <- c(3.1,4.2, 6, 7.9, 10.7, 11, 14.6,15.3, 16.5, 21.8)
bag <- lm(y~x)
plot(x,y,abline(bag))
