# we will use pie() function
# pie(v,labels,radius,main,col,clockwise)
# v -> numeric vector that stores the data that we will use in the circle graph
# labels -> to explain the meanings of the circle segments
# radius -> radius of circle graph(takes value between -1 and 1)
# main -> main of the circle graph
# col -> colors to be used
# clockwise -> this is a logical variable. determines whether to advance clockwise or counterclockwise

#example

#CA 39M
#TX 28M
#FL 21M
#NY 19M
#PA 12M

v<-c(39,28,21,19,12)
label<-c("CA","TX","FL","NY","PA")
pie(v,label)
png(file="state_population") # if you want save the graph
dev.off()

#adding main and color
v<-c(39,28,21,19,12)
label<-c("CA","TX","FL","NY","PA")
png(file="sp_color")
pie(v,label,main="STATE POPULATION of USA",col=rainbow(length(v)))
dev.off()

#adding percent
v<-c(39,28,21,19,12)
label<-c("CA","TX","FL","NY","PA")
png(file="sp_percent")
circle_percent<-round(100*v/sum(v),1)
pie(v,label=circle_percent,main="SP with Percent",col=rainbow(length(v)))
legend("topright",c("CA","TX","FL","NY","PA"),cex=0.9,fill=rainbow(length(v)))
dev.off()

#3D circle graph
#install "plotrix"
v<-c(39,28,21,19,12)
label<-c("CA","TX","FL","NY","PA")
pie3D(v,labels=label, explode=0,2,main="3D")

#bar charts
# we will use barplot() function
# barplot(v,xlab,ylab,main,names.arg,col)
# v -> name of vector with data
# xlab -> x axis
# ylab -> y axis
# main -> main of bar chart
# names.arg -> vector where the names of each column are stored
# col -> color

#example
v<-c(39,28,21,19,12)
label<-c("CA","TX","FL","NY","PA")
barplot(v,names.arg = label,xlab="States",ylab="Population",col="red",
        main="SP of USA",border = "blue")

#group column chart and stacked column chart
#if column chart associated with different groups is to be created,
#group information is loaded with matrices.

#example

color1<-c("red","blue","green")
area1<-c("One","Two","Three")
months1<-c("January","February","March","April")
sales<-matrix(c(2,6,4,5,8,3,4,9,11,4,8,1),nrow=3,byrow=TRUE)
barplot(sales,main="Total Sales",names.arg = months1,xlab="MONTHS",ylab="SALES",
        col=color1)
legend("topright",area1,cex=1.2,fill = color1)

#boxplot
#boxplot(v,data,notch,varwidth,names,main)
# v -> vector or formula
# data -> dataframe
# notch -> logical value. if TRUE, notch will be drawn
# varwidth -> logical value. if TRUE, box size is proportional
# names -> group labels
# main -> main

#example
val1<-c(21.1,21.6,23.1,25.2,24.4,22.7)
val2<-c(2,4,6,8,10,12)
df<-data.frame(val1,val2)
boxplot(val1~val2,data=df,xlab="val2",ylab="val1",main="VAL1-VAL2 Relation")


#notched boxplot
val1<-c(21.1,21.6,23.1,25.2,24.4,22.7)
val2<-c(2,4,6,8,10,12)
df<-data.frame(val1,val2)
boxplot(val1~val2,data=df,notch=TRUE,varwidth=TRUE, xlab="val2",ylab="val1",
        main="VAL1-VAL2 Relation")

#histogram
# hist(v,main,xlab,xlim,ylim,breaks,col,border)
# border -> border lines
# xlim -> value ranges on x axis
# ylim -> value ranges on y axis
# breaks -> used to determine the width 

heightx<-c(185,172,165,165,152,167,192,184,168)
hist(heightx,xlab="SIZE",col="blue",border="black",xlim=c(145,200),ylim=c(0,5),
     breaks=5)

#example
# install RColorBrewer
library(RColorBrewer)
data(VADeaths)
par(mfrow=c(2,3))
hist(VADeaths,breaks=10, col=brewer.pal(4,"Set3"),main="Set3 4 Color")
hist(VADeaths,breaks=3 ,col=brewer.pal(4,"Set2"),main="Set2 4 Color")
hist(VADeaths,breaks=7, col=brewer.pal(4,"Set1"),main="Set1 4 Color")
hist(VADeaths,,breaks= 2, col=brewer.pal(7,"Set3"),main="Set3 7 Color")
hist(VADeaths,col=brewer.pal(7,"Greys"),main="Greys 7 Color")
hist(VADeaths,col=brewer.pal(7,"Greens"),main="Greens 7 Color")

#line chart
# plot(v,type,col,xlab,ylab)
# "type" is takes 3 different value;
# p -> just dots
# l -> line
# o -> dots and lines

#example
v<-c(7,5,9,5,8,5,9)
plot(v,type="o")

#example 2
x<-c(24,26,12,31,29,45,18)
plot(x,type="o",col="green",xlab="MONTHS",ylab="SALES",main="SALES BY MONTHS")

#example - multiple lines
x1<-c(13,19,22,6,4,8,4)
x1<-c(11,17,25,14,7,6,2)
plot(x1,type="o",col="green",xlab="MONTHS",ylab="SALES",main="SALES BY MONTHS")
lines(v,type="o",col="red")

#scatter plot
# plot(x,y,main,xlab,ylab,xlim,ylim,axes)

#example
a<-c(150,180,156,163,190,178,168,198,182,164)
b<-c(56,81,60,70,85,70,80,90,80,74)
p<-data.frame(a,b)
plot(x=p$a,y=p$b,xlab="HEIGHT",ylab="WEIGHT",xlim=c(150,200),
     ylim=c(40,100),main="WEIGHT-HEIGHT")

#scatter plot matrices
# if we have a multiple matrices, we can use this
a<-c(150,180,156,163,190,178,168,198,182,164)
b<-c(56,81,60,70,85,70,80,90,80,74)
c<-c(2,7,13,67,45,65,45,34,22,11)
d<-c(45,90,34,44,22,78,56,25,87,64)
p<-data.frame(a,b,c,d)
pairs(~a+b+c+d, data=p, main="SCATTER PLOT MATRIX")

