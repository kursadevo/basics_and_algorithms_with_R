#matrix operations
#The elements of the matrix consisting of 4 rows and 3 columns 
#can be taken from the one-dimensional array and created with the following command;
a<-matrix(c(9,1,2,4,9,7,4,3,11,9,11,4,6,9),ncol=2)
a
#If the same operation is to be done line by line, the following command should be entered
a<-matrix(c(9,1,2,4,9,7,4,3,11,9,11,4,6,9),ncol=2,byrow=T)
a

#naming the rows and columns of the matrix
a2<-matrix(1:9,nrow=3,dimnames=list(c("X","Y","Z"),c("A","B","C")))
a2
#access the rows and columns of the matrix
colnames(a2)
rownames(a2)
#renaming rows and columns
colnames(a2)<-c("C1","C2","C3")
rownames(a2)<-c("R1","R2","R3")

#multiply matrix by scalar
#We get a new matrix by multiplying each element of the matrix by that scalar
3*a
4*a2 #etc.

#transpose of the matrix
aT<-t(a)
aT

#sum of two matrices
SUM1<-matrix(c(2,4,6,8,1,3,5,7,9,6,3,1),ncol=3,byrow=T)
SUM2<-matrix(c(4,7,8,2,-2,5,-4,1,1,6,9,3),ncol=3,byrow=T)
C<-SUM1+SUM2
C

#multiplying matrix by vector
vec<-c(2:3)
vec
matforvec<-matrix(c(2:13),ncol=2)
matforvec
res<-vec*matforvec

#multiplication of two matrices
#3x2 * 2x2 
a1<-matrix(c(4,3,7,1,5,9),nrow=3,byrow=T)
b1<-matrix(c(3,2,4,1),nrow=2,byrow=T)
a1
b1
c1<-a1%*%b1
c1

#column and row sums of the matrix
AA<-matrix(c(2,3,-2,1,2,2),3,2)
AA
cols1<-colSums(AA)
cols1
rowz1<-rowSums(AA)
rowz1

#grand total of matrix
AA<-sum(AA)
AA

#row, column averages and matrix average
cm<-colMeans(a)
cm
rm<-rowMeans(a)
rm
m<-mean(a)
m

#adding matrices horizontally
hrz1<-matrix(c(1:3))
hrz2<-matrix(c(4:6))
hrz3<-cbind(hrz1,hrz2)
hrz3

#adding mattrices vertically
hrz4<-rbind(hrz1,hrz2)

#properties of the matrix
class(a)
dim(a)
attributes(a) #etc.
