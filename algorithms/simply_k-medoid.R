# k-medoid algorithm:

# very similar to the k-means algorithm. The most important difference is that 
# the center points of the initial clusters are selected from the real data points.
# After selecting a central point associated with k clusters, all points are
# marked according to their distance from the centers. in other words, each
# point is labeled to the cluster to which the nearest center belongs.
# After these operations, the averages of each cluster are calculated.
# The real data point closest to the calculated mean is determined as the new 
# center and the distances of the new centers of all the points are calculated.
# Each point is labeled again to the cluster belonging to the closest center
# then, this process keeps repeating and if no dots change places, the process is finished.

#check k_medoid.pbm

#example

x<-c(2,5,7,12,16,21,25,36,41,34,13,23,53)
y<-c(5,2,9,3,23,45,11,23,54,22,40,17,24)
z<-data.frame(x,y)
#install.packages("fpc")
library(fpc)
pamk.result<-pamk(z,3)
pamk.result$nc
table(pamk.result$pamobject$clustering,z$x)
layout(matrix(c(1,2),1,2))
plot(pamk.result$pamobject)
layout(matrix(1))
