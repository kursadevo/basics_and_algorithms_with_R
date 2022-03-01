#dataframes
x<-data.frame(
      id = c(12,45,56,2),
      name = c("Frank","John","Bob","Isabel"),
      lastname = c("Smith","Johnson","Garcia","Davis"),
      gender = c("Male","Male","Male","Female"),
      pay = c(5000,5500,6200,7300)
      
)
print(x)

#table
x[c("id","name")]
x[c("id","gender","pay")]
x[c("id","name","lastname")]