# kNN algorithm (k-nearest neighbor)

# briefly algorithm steps:
# 1- k, which is the number of nearest neighbors parameter, is determined.
# 2- the distances between the new sample and all affected data are calculated
# 3- distances are sorted and the k-minimum distance based on nearest neighbor 
#is determined
# 4- Y labels of nearest neighbors are evaluated
# 5- To determine which class the incoming sample belongs to, Simple majority
#method is applied to k quantity kNN set. So, Sample k is considered "good" if 
# the majority of neighbors are "good". Otherwise the sample is set as "bad"

#example
# function available for kNN in R language

#a class "bads"
a1=c(6,6)
a2=c(6,4)
#b class "goods"
b1=c(2,3)
b2=c(1,4)
#train matrice
train=rbind(a1,a2,b1,b2)
#class labels vector is assigned for each data
c1=factor(c(rep("a",2),rep("b",2)))
#new incoming data to be classified:
test=c(3,6)
# for the knn function, this library must be run
library(class)
#knn() function and view result
summary(knn(train,test,c1,k=1)) #here k=1 is taken
#sample data estimated to belong to class B

