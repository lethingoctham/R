setwd("C:\\Users\\acer\\Downloads")
BFDeaths <- read.table(file = "BirdFluDeaths.txt", header = TRUE)
names(BFDeaths)
str(BFDeaths)
#Thao t�c th???ng k� s??? Death the nam
Deaths <- rowSums(BFDeaths[,2:16])
names(Deaths)<-BFDeaths[,1]
Deaths


##Thao t�c th???ng k� s??? Death theo t???ng nu???c
Deaths_col <- colSums(BFDeaths[,2:16])
names(Deaths_col) <- names(BFDeaths[,2:16])
Deaths_col

#V??? bi???u d??? pie chart
#. Bi???u d??? chu???n - standard pie chart
#D�ng d??? chia m�n h�nh
par(mfrow= c(2,2), mar= c(3,3,2,1))
#mfrow = c(2,2)=> Chia m�n h�nh ra l�m 4 g�c
#c=(1,4); c=(4,1)
#mar=c(3,3,2,1): kho???ng tr???ng gi???a c�c bi???u d???
#margin: bottom, left, top, right
#C�i g�i libary plotrix
install.packages("plotrix")
#G???i thu vi???n plotrix
library(plotrix)

pie3D(Deaths, main = "3D Pie Chart",
      explode=0.1,
      labels = names(Deaths),
      labelcex=0.6,
)

pie(Deaths, main = "Total Deaths Per Year",
    col = rainbow(6),
    clockwise = TRUE
)
pie(Deaths_col, main = "Total Deaths Per Country",
    col = rainbow(6),
    names = names(Deaths_col),
    clockwise = TRUE
)
barplot(Deaths_col,
        main = "...",
        xlim= c(0,20),
        ylim = c(0, 120),
        col = "cyan")
Veg <- read.table(file = "Vegetation2.txt", header = TRUE)
names(Veg)
str(Veg)

V.M <-tapply(Veg$R, 
             INDEX=Veg$Transect, 
             FUN=mean)
V.sd <-tapply(Veg$R, 
              INDEX=Veg$Transect, 
              FUN=sd)
MSD <- cbind(V.M, V.sd)
barplot(V.M)
barplot(V.M, xlab = "Transect",
        ylim = c(0,15),
        ylab = "R",
        col = rainbow(8)
)

Vth.le <- tapply(Veg$R,
                 INDEX=Veg$Transect,
                 FUN=length)
V.se <- V.sd/sqrt(Vth.le)

#Strip chart
stripchart(Veg$R~Veg$Transect,
           vert=TRUE,
           pch=1,
           method="jitter",
           jit=0.05,
           xlab="Transect",
           ylab="R")

points(1:8, V.M, pch= 16,
       cex=1.5)
arrows(1:9, V.M,
       1:9, V.M+V.se,
       lwd=1.5,
       angle=90,
       length = 0.1)
arrows(1:9, V.M,
       1:9, V.M-V.se,
       lwd=1.5,
       angle=90,
       length = 0.1)
BFDeaths <- read.table(file = "BirdFluDeaths.txt", header = TRUE)
names(BFDeaths)
str(BFDeaths)
#Thao t�c th???ng k� s??? Death the nam
Deaths <- rowSums(BFDeaths[,2:16])
names(Deaths)<-BFDeaths[,1]
Deaths


##Thao t�c th???ng k� s??? Death theo t???ng nu???c
Deaths_col <- colSums(BFDeaths[,2:16])
names(Deaths_col) <- names(BFDeaths[,2:16])
Deaths_col

#V??? bi???u d??? pie chart
#. Bi???u d??? chu???n - standard pie chart
#D�ng d??? chia m�n h�nh
par(mfrow= c(2,2), mar= c(3,3,2,1))
#mfrow = c(2,2)=> Chia m�n h�nh ra l�m 4 g�c
#c=(1,4); c=(4,1)
#mar=c(3,3,2,1): kho???ng tr???ng gi???a c�c bi???u d???
#margin: bottom, left, top, right
#C�i g�i libary plotrix
install.packages("plotrix")
#G???i thu vi???n plotrix
library(plotrix)

pie3D(Deaths, main = "3D Pie Chart",
      explode=0.1,
      labels = names(Deaths),
      labelcex=0.6,
)

pie(Deaths, main = "Total Deaths Per Year",
    col = rainbow(6),
    clockwise = TRUE
)
pie(Deaths_col, main = "Total Deaths Per Country",
    col = rainbow(6),
    names = names(Deaths_col),
    clockwise = TRUE
)
barplot(Deaths_col,
        main = "...",
        xlim= c(0,20),
        ylim = c(0, 120),
        col = "cyan")
Veg <- read.table(file = "Vegetation2.txt", header = TRUE)
names(Veg)
str(Veg)

V.M <-tapply(Veg$R, 
             INDEX=Veg$Transect, 
             FUN=mean)
V.sd <-tapply(Veg$R, 
              INDEX=Veg$Transect, 
              FUN=sd)
MSD <- cbind(V.M, V.sd)
barplot(V.M)
barplot(V.M, xlab = "Transect",
        ylim = c(0,15),
        ylab = "R",
        col = rainbow(8)
)

Vth.le <- tapply(Veg$R,
                 INDEX=Veg$Transect,
                 FUN=length)
V.se <- V.sd/sqrt(Vth.le)

#Strip chart
stripchart(Veg$R~Veg$Transect,
           vert=TRUE,
           pch=1,
           method="jitter",
           jit=0.05,
           xlab="Transect",
           ylab="R")

points(1:8, V.M, pch= 16,
       cex=1.5)
arrows(1:9, V.M,
       1:9, V.M+V.se,
       lwd=1.5,
       angle=90,
       length = 0.1)
arrows(1:9, V.M,
       1:9, V.M-V.se,
       lwd=1.5,
       angle=90,
       length = 0.1)

