#simply decision trees steps:
# 1-start from the root
# 2-do test according to the selected attribute
# 3-follow the edge that matches the test result
# 4-go back to step 2 when you can't reach the leaf
# 5-determine the test result that resulted in leaf

#example
install.packages("party")
library(party)
input.dat<-readingSkills[c(1:105),]
output.tree <- ctree(
  nativeSpeaker ~ age + shoeSize + score,
  data = input.dat
)
plot(output.tree)