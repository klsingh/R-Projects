#Start with a vector
a=0
b=5

#A longer vector
a=1:10
b=c(2,5,6,8,9)

length(a)
c=length(b) #finding length of b and saving it in c

class(a)
class(b)
class(c)

#sequence vector
a=seq(1,30,by=2)
help("seq")

#repeat vector
b=rep(2,20)
?rep

#subset of a vector
a[5]

c=c(5,7,8,9)
a[c]

#Conditional Subsetting
a>7
a[a>7]
a[a<9]

a[a>15|a<8]

a[a>6&a<10]

#change vector
a[5]=23

a[c(5,9,10)]=23

a[c(5,9,10)]=c(27,36,111)

#Character Vector
m=c(rep("png",5),rep("hul",10),rep("marico",5))
as.numeric(m) #Character vector cannot be changed to numeric

#Through below method we can change "m" as numeric
mm=as.factor(m)
as.numeric(mm)

levels(mm)

levels(mm)[2]="nestle"
levels(mm)=c("ABC","HAL","XYZ")

#Mean of a vector
mean(a)

#Add missing value
a=c(a,NA)
mean(a) #Here mean calculation gives output as "NA"

#Stripping/removing "NA" from "a" to get mean value of "a"
mean(a,na.rm = TRUE)

#Calculating Standard Deviation
sd(a) #again we are getting output a "NA" hence we will use below method to calculate SD 
sd(a,na.rm = TRUE)

#Calculating Median
median(a,na.rm = TRUE)

#Calculating Mode by creating function
getmode <- function(a){
  uniqa <- unique(a)
  uniqa[which.max(tabulate(match(a, uniqa)))]
}

result <- getmode(a)
print(result)
