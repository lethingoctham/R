setwd("C:\\Users\\acer\\Downloads\\")
# C�u 1
data <- read.csv("C:\\Users\\acer\\Downloads\\Temperature .csv")
tapply(data$Temperature,list(data$Month,data$Year), mean,na.rm = TRUE) #gia tri trung binh
tapply(data$Temperature,list(data$Month,data$Year), sd,na.rm = TRUE) #standard deviation
tapply(data$Temperature,list(data$Month,data$Year), length) #so quan sat
#C�u 2
table(data$Year) #so quan sat tren 1 nam
table(list(data$Year,data$Station)) #so quan sat tren 1 nam/tram