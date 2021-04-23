# 1000 datasets, m???i datasets c???n làm 1 bi???u d???, và luu nó du???i:
# d???ng file jpeg
# For i is from 1 to 1000:
# Extract dataset i
# Choose lable, color,... for dataset i
# T???o graph cho dataset i
# save the graph for dataset i
# End of loop

setwd("C:\\Users\\DELL\\Documents\\NNR")
Owls <- read.table(file = 'Owls.txt', header = TRUE)
names(Owls)
str(Owls)
O_Nests <- Owls$ï..Nest 
unique(O_Nests)

#Ve bieu do cho tung loai Nest
Owls.ATV <- Owls[O_Nests == "AutavauxTV",]
plot(x=Owls.ATV$ArrivalTime,
     y=Owls.ATV$NegPerChick,
     xlab="Arrival Time",
     main ="AutavauxTV",
     ylab="Negotation behavior")
Owls.ATV <- Owls[O_Nests == "Bochet",]
plot(x=Owls.ATV$ArrivalTime,
     y=Owls.ATV$NegPerChick,
     xlab="Arrival Time",
     main ="Bochet",
     ylab="Negotation behavior")


AllNests <- unique(Nest)
for (i in 1:27) {
  Nest.i <- AllNests[i]
  Owls.i <- Owls[O_Nests==Nest.i,]
  YourFileName <- paste(Nest.i, ".jpg", sep="")
  jpeg(file= YourFileName)
  plot(x=Owls.i$ArrivalTime,
       y=Owls.i$NegPerChick,
       xlab="Arrival Time",
       main=Nest.i,
       ylab="Negotiation behavior"
       )
  dev.off()
}

paste(Owls.ATV, ".jpg", sep="")