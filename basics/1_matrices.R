#matrices
#2x3 matrice example:
items<-c(7,5,2,9,3,6)
row<-c("row1","row2")
column<-c("col1","col2","col3")
x<-matrix(items, nrow=2, ncol=3,byrow=TRUE,dimnames=list(row,column))
x

#matrice_indices
#4x5 matrice example:
x<-matrix(1:20,nrow=4)
x

#m[2,4] => show 2nd row and 4th column items
#m[3,c(3,4)] => show 3 and 4 in line 3 items

