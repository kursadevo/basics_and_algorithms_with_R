#It is one of the most used classification methods. you can check naive_bayes.jpeg

#P(A|B)=P(B|A)P(A)/P(B)

#naive bayes formula description
# 1- P(A|B) = probability of "A" being true given that "B" is true
# 2- P(B|A) = probability of "B" being true given that "A" is true
# 3- P(A) = probability of "A" being true
# 4-P(B) = probability of "B" being true

# example with iris data
# install naivebayes package

data(iris)
y <- iris[[5]]
M <- as.matrix(iris[-5])
### Train the Gaussian Naive Bayes with custom prior
gnb <- gaussian_naive_bayes(x = M, y = y, prior = c(0.1,0.3,0.6))
# Visualize class marginal Gaussian distributions corresponding
# to the first feature
plot(gnb, which = 1)
# Visualize class conditional Gaussian distributions corresponding
# to the first feature
plot(gnb, which = 1, prob = "conditional")
