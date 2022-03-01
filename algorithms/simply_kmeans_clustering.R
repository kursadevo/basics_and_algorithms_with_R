#k-means clustering
# this algorithm performs the process of separating the data we have into
# k clusters or groups according to its attributes.
# k is an integer. The essence of the algorithm is to minimize the distances
# between the data corresponding to each cluster and the center(centroid)
# of that cluster.
# Thus, the k-means algorithm will divide the data into k clusters.

#basic steps:
#it's pretty simple. first, the number of clusters and the center of each 
#cluster must be determined.The k-means algorithm will repeat the 3 steps given
# below until convergence (steady state) is achieved.
# 1-identify cluster centers
# 2-calculate the distances of each data point to the cluster centers
# 3-assign the data to the cluster belonging to the closest center
# The algorithm ends when there is no data assigned to the different cluster in any iteration step.
# check k-means.png

#example
# Let's say we want to divide the x and y data into 3 clusters.

x<-c(2,5,7,12,16,21,25,36,41,34,13,23,53)
y<-c(5,2,9,3,23,45,11,23,54,22,40,17,24)
z<-data.frame(x,y)

kmeans.result<-kmeans(z,3)
table(z$x, kmeans.result$cluster)
plot(z$x, z$y, col = kmeans.result$cluster)
points(kmeans.result$centers[,c("x","y")],col = 1:3, pch = 8, cex = 2)