#lists
#Create a list containing a vector, a matrix and a list.
x<-list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)
print(x)

#naming lists
x2<- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),list("green",12.3))

# Give names to the elements in the list.
names(x2)<-c("1st Quarter", "A_Matrix", "A Inner list")
print(x2)

# Accessing list elements
# Create a list containing a vector, a matrix and a list.
x3<-list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),list("green",12.3))

# Give names to the elements in the list.
names(x3)<-c("1st Quarter", "A_Matrix", "A Inner list")

# Access the first element of the list.
print(x3[1])

# Access the thrid element. As it is also a list, all its elements will be printed.
print(x3[3])

# Access the list element using the name of the element.
print(x3$A_Matrix)

# Manipulating list elements
# Create a list containing a vector, a matrix and a list.

x4<-list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2),list("green",12.3))
# Give names to the elements in the list.

names(x4)<-c("1st Quarter", "A_Matrix", "A Inner list")
# Add element at the end of the list.
x4[4]<-"New element"
print(x4[4])

# Remove the last element.
x4[4] <- NULL

# Print the 4th Element.
print(x4[4])

# Update the 3rd Element.
x4[3] <- "updated element"
print(x4[3])

# Merging lists
# Create two lists.
list1 <- list(1,2,3)
list2 <- list("Sun","Mon","Tue")

# Merge the two lists.
merged.list <- c(list1,list2)

# Print the merged list.
print(merged.list)

# Converting list to vector
# Create lists.
list3 <- list(1:5)
print(list3)
list4 <-list(10:14)
print(list4)

# Convert the lists to vectors.
v1 <- unlist(list3)
v2 <- unlist(list4)

print(v1)
print(v2)

# Now add the vectors
result <- v1+v2
print(result)
