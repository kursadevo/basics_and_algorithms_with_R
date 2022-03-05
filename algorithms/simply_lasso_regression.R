# RSS = Σ(yi – ŷi)2
# Σ: A greek symbol that means sum
# yi: The actual response value for the ith observation
# ŷi: The predicted response value based on the multiple linear regression model
# Conversely, lasso regression seeks to minimize the following:
# RSS + λΣ|βj|

#where j ranges from 1 to p predictor variables and λ ≥ 0.
# This second term in the equation is known as a shrinkage penalty. In lasso
# regression, we select a value for λ that produces the lowest possible test MSE (mean squared error).

#example
#step 1
y <- mtcars$hp
x <- data.matrix(mtcars[, c('mpg', 'wt', 'drat', 'qsec')])
#step 2 - fit the lasso regression model

# Next, we’ll use the glmnet() function to fit the lasso regression model and specify alpha=1.
# Note that setting alpha equal to 0 is equivalent to using ridge regression and 
#setting alpha to some value between 0 and 1 is equivalent to using an elastic net. 
#To determine what value to use for lambda, we’ll perform k-fold cross-validation 
#and identify the lambda value that produces the lowest test mean squared error (MSE).
#Note that the function cv.glmnet() automatically performs k-fold cross validation using k = 10 folds.
library(glmnet)
#perform k-fold cross-validation to find optimal lambda value
cv_model <- cv.glmnet(x, y, alpha = 1)

#find optimal lambda value that minimizes test MSE
best_lambda <- cv_model$lambda.min
best_lambda

#produce plot of test MSE by lambda value
plot(cv_model) 

#step 3 Analyze Final Model
#find coefficients of best model
best_model <- glmnet(x, y, alpha = 1, lambda = best_lambda)
coef(best_model)
# No coefficient is shown for the predictor drat because the lasso regression 
#shrunk the coefficient all the way to zero. This means it was completely dropped 
#from the model because it wasn’t influential enough.
#Note that this is a key difference between ridge regression and lasso regression.
#Ridge regression shrinks all coefficients towards zero, but lasso regression has 
#the potential to remove predictors from the model by shrinking the coefficients completely to zero.

#We can also use the final lasso regression model to make predictions on new 
#observations. For example, suppose we have a new car with the following attributes:
# mpg: 24
# wt: 2.5
# drat: 3.5
# qsec: 18.5
#The following code shows how to use the fitted lasso regression model to
# predict the value for hp of this new observation:
#define new observation
new = matrix(c(24, 2.5, 3.5, 18.5), nrow=1, ncol=4) 

#use lasso regression model to predict response value
predict(best_model, s = best_lambda, newx = new)

#Based on the input values, the model predicts this car to have an hp value of 109.0842.
#Lastly, we can calculate the R-squared of the model on the training data:
#use fitted best model to make predictions
y_predicted <- predict(best_model, s = best_lambda, newx = x)

#find SST and SSE
sst <- sum((y - mean(y))^2)
sse <- sum((y_predicted - y)^2)

#find R-Squared
rsq <- 1 - sse/sst
rsq

#The R-squared turns out to be 0.8047064. That is, the best model was able to 
# explain 80.47% of the variation in the response values of the training data.


  
  



  