#logistic regression

#The general mathematical equation for logistic regression is −
# y = 1/(1+e^-(a+b1x1+b2x2+b3x3+...))

# y is the response variable.
# x is the predictor variable.
# a and b are the coefficients which are numeric constants.

#we will use glm() function for logistic regression
# glm(formula,data,family)
# formula is the symbol presenting the relationship between the variables.
# data is the data set giving the values of these variables.
# family is R object to specify the details of the model. It's value is binomial for logistic regression.

#example

input <- mtcars[,c("am","cyl","hp","wt")]
#print(head(input))
am.data = glm(formula = am ~ cyl + hp + wt, data = input, family = binomial)
print(summary(am.data))

#In the summary as the p-value in the last column is more than 0.05 for the
#variables "cyl" and "hp", we consider them to be insignificant in contributing 
#to the value of the variable "am". Only weight (wt) impacts the "am" value in this regression model.