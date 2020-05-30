#Create a dataframe from vectors
fy <- rep(c(1999,2000,2001),3)
company <- c(rep("png",3),rep("hul",3),rep("marico",3))
revenue <- c(11234,14567,15698,13456,14321,15643,9876,11546,13456)
margin <- c(11,13,12,12,12,13,11,9,14)
data <- data.frame(fy,company,revenue,margin)

data$profit = data$revenue*data$margin/100

library(dplyr)

myresults <-data %>% group_by(company) %>% mutate(highestMargin = max(margin), lowestMargin = min(margin))

highestProfitMargins <-data %>% group_by(company) %>% summarise(bestMargin = max(margin))

#ifelse
data$marginhighlow =  ifelse(data$margin>10, "High", "Low")

#loop
data1 = data[data$company=="png",]
data1$GR=0

for (i in 2:3) {
  data1$GR[i]= (data1$revenue[(i)]-data1$revenue[(i-1)])/data1$revenue[(i-1)]
  
}

#function

normalize=function(x){
  xyz=(x-min(x))/(max(x)-min(x))
  return(xyz)
}

#use the function and save it

normalize(data$profit)
data$normprof=normalize(data$profit)
