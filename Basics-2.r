a=1:10
b=seq(2,10,length.out = 10)
c=c(rep("Sachin",5), rep("Sourav",5))

#Create matrix
matrix1=cbind(a,b,c)
matrix2=cbind(a,b,c)

#Other matrix
matrix3=matrix(c(1:9),nrow = 3,byrow = TRUE)

#Create a  dataframe
data1=data.frame(a=a,b=b,c=c)

#Create subset of a matrix and dataframe
matrix1[2,3]
matrix1[2,c(2,3)] # one row i.e.row 2 and two columns i.e.2 & 3 using c bind
matrix1[c(2:4),c(2,3)] # from row 2 to 4 and columns 2 & 3

matrix1[,c(2,3)] #all rows and columns 2 & 3

matrix1[c(2:4),] #from rows 2 to 4 and all columns

matrix1[-c(2:4),c(2,3)] #except from rows 2 to 4 show all the data from columns 2 & 3

data1$a

data1$a>6 & data1$a<10

data1[data1$a>6 & data1$a<10,]

#Plot from dataframe
plot(data1$a)

plot(data1$a, type = "l")

plot(data1$a, data1$b)

#Write a dataframe
write.csv(data1, "data1.csv", row.names = FALSE)

#Read a dataframe
read.csv("data1.csv")
