#In the random forest approach, a large number of decision trees are created. 
#Every observation is fed into every decision tree. The most common outcome for 
#each observation is used as the final output. A new observation is fed into all 
#the trees and taking a majority vote for each classification model.
#An error estimate is made for the cases which were not used while building 
#the tree. That is called an OOB (Out-of-bag) error estimate which is mentioned as a percentage.
#check random_forest.png

#The R package "randomForest" is used to create random forests.
# basic syntax: randomForest(formula, data)


#example
install.packages("randomForest")
library(party)
library(randomForest)

output.forest <- randomForest(nativeSpeaker ~ age + shoeSize + score,
                              data = readingSkills)

print(output.forest)
print(importance(fit,type = 2))

#From the random forest shown above we can conclude that the shoesize and score 
#are the important factors deciding if someone is a native speaker or not. Also
#the model has only 1% error which means we can predict with 99% accuracy.

