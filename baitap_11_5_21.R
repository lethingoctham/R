setwd("C:\\Users\\acer\\Downloads\\")
O = read.table(file ="Owls.txt", header = TRUE, dec=".")
names(O)
str(O)

#C�u 1
AllNest <- unique(O$�..Nest)
N <- length(AllNest)

for (i in 1:N){
  Nest.i <- as.character(AllNest[i])
  Oi <- O[O$�..Nest == Nest.i,]
  name <- Nest.i
  name <- paste(Nest.i,".jpg", sep = "")
  #jpeg(file = AllNest[i])
  plot(x=Oi$ArrivalTime, y = Oi$SiblingNegotiation,
       xlab="Arrival Time", 
       ylab="Sibling Negotiation",
       main = Nest.i)
  dev.off()
}



#C�u 2: D�m 1: FoodTreatment = Satiated; D�m 2: FoodTreatment = Deprived
O$NestNight <- paste(O$�..Nest, O$FoodTreatment,sep = "_") 
FTM <- split(O, O$FoodTreatment)
FoodTreatment_1 <- FTM[['Satiated']]
head(FoodTreatment_1)
n <- length(FoodTreatment_1)
NestNight_1 <- FoodTreatment_1$NestNight
AllNestsNights_1 <- unique(NestNight_1)
for (i in 1:n){
  NestNight.i <- as.character(AllNestsNights_1[i])
  Oi <- FoodTreatment_1[FoodTreatment_1$NestNight == NestNight.i,]
  name <- NestNight.i
  name <- paste(NestNight.i, ".jpg", sep="")
  #jpeg(file = name)
  plot(x=O$ArrivalTime, y=O$NegPerChick,
       xlab ="Arrivale Time",
       ylab = "Sibling Negotiation",
       main = NestNight.i)
}