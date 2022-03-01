#series will be created with arrays
#they have more dimensions than matrices

#space(2x3x5) example:
dim1<-c("x1","x2")
dim2<-c("y1","y2","y3")
dim3<-c("z1","z2","<3","z4","<5")

space<-array(1:30,c(2,3,5),dimnames=list(dim1,dim2,dim3))
space