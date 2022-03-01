# if, else, if else if, nested if statements

# example 1
a = 15
if(a>10.0){print("greater then 10")
}else{print("your number 10 or less than 10")}

# example 2 - square root calc
number = 8
if(number<0){print("negative")
}else{print("square root is =");print(sqrt(number))}

# example 3 - college notes
# <50 = F
# >=50 & <70 = C
# >=70 & <85 = B
# >=85 = A
score=65
if(score<50){print("F")
}else if(score < 70){print("C")
}else if(score<85){print("B")
}else{print("A")}

# example - roots of quadratic equation
a=1
b=-2
c=1
delta=b*b-4*a*c;
if(delta<0){print("no root")
}else if (delta ==0){x1=-b/(2*a);print("x1=x2");print(x1)
}else{x1=(-b+sqrt(delta))/(2*a);x2=(-b-sqrt(delta))/(2*a);print(x1);print(x2)}

# example - switch 
x=4
y<-switch(x,"A","B","C","D","E","F")
print(y)

# example 2 - switch
x=7
y<-switch(x,"A","B","C","D","E","F")
print(y)

# loops(repeat,while,for)
# example for repeat
x<-c("Kursad")
s=0
repeat{
  print(x)
  s<-s+1
if(s>5){break}}

# example for while
counter=5
sum=0;
while(counter>0)
{
  sum<-sum+counter
  counter<-counter-1
}
print(counter)
print(sum)

# example 2 - while
# factorial calc : 7!=720
i=1
f=1
while(f<720)
{
  f<-f*i
  i<-i+1
}
print("factorial")
print(f)

# example for "for"
x<-c(1,2,3,4,5)
for (i in x){print(i)}

# example 2 - for
x<-0
for(i in 1:5)
{
  x<-x+i
}
print(x)

# example - factorial calc with for
x<-1
for(i in 1:5)
{
  x<-x*i
}
print(x)

# example - alternating series sum
x=0;
y=1;
z=1.0;
for(i in 1:4)
{
  x<-x+(z*(z+1))/((z+2)*(z+3))*y;
  z<-z+4;
  y<--y;
}
print(x)

# example for nested loops
# 1/2! + 1/3! + 1/4! +...+ 1/10!
x=0
for(i in 2:10)
{
  fakt=1;
  for(j in 1:i)
    fakt<-fakt*j;
  x<-x+1/fakt;
  print(x)
}
print(x)

# example for break
x<-c(4,-5,6,8,-6,10)
i<-1
p<-0
s<-0
while(TRUE){
  if(i>6){break}
  if(x[i]>0){s<-s+x[i];p<-p+1};
  i<-i+1;
}
mean<-s/p;
print("SUM OF POSITIVE NUMBERS=");print(s)
print("MEAN OF NUMBERS=");print(mean)
print("AMOUNT OF NUMBERS INPUT=");print(p)

# example for next
n<-18
s=0; c=0;
for(i in 1:18)
{
  if(i %% 3!=0)next;
  print("NUMBER=");print(i);
  s<-s+i;
  c<-c+1;
}
print("Numbers of between 3-18 divisible by 3=");print(c)
print("sum=");print(s)

# "scan" provides interactive data entry
# example
# Create example data.frame
data <- data.frame(x1 = c(1, 2, 2, 3),                
                   x2 = c(4, 5, 6, 7),
                   x3 = c(8, 9, 10, 11))
data  
# Write data as txt file to directory
write.table(data,                    
            file = "data.txt",
            row.names = FALSE)
# Get currently used directory
getwd()   
# Apply scan function to txt file
data <- scan("data.txt", what = "character")   
data 