wing1 <-59
wing2 <-55
wing3 <-53.5
wing4 <-55
wing5 <-52.5
wing6 <-57.5
wing7 <-53
wing8 <-55

sqrt(wing1)
2*wing1
wing1+wing2+wing5
wing1*3- wing6/4+wing8*2
SQ.wing1 <-sqrt(wing1)
SQ.wing1

wingcrd<- c(59,55, 53.5, 55, 52.5, 57.5, 53, 55)
wingcrd

#Hàm c là hàm t???o 1 vector
Wingcrd[1] #Truy c???p ph???n t??? trong vector theo s??? th??? 
#t??? t??? 1 tr??? di. C/C++/VBA/Java/PHP/C# -0
Wingcrd[5]
#Li???t kê các ph???n t??? t??? 1 d???n 5 c???a vector
wingcrd[1:5]
wingcrd[2:8]
wingcrd[-2]
#Th???c hi???n các phép toán trên vector
#sum, mean, max, min, median, var, sd
sum(wingcrd)
59+55+ 53.5 + 55 + 52.5+ 57.5+ 53+ 55
mean(wingcrd)
max(wingcrd)
min(wingcrd)
median(wingcrd)#median là s??? trung v???
 
Bien <- sum(Wingcrd)
wingcrd
Tarsus <- c(22.3, 19.7, 20.8, 20.3, 20.8, 21.5, 20.6, 21.5 )
Head <- c(31.2, 30.4, 30.6, 30.3, 30.3, 30.8, 32.5, NA)
Wt <- c(9.5, 13.8, 14.8, 15.2 15.5, 15.6, 15.6, 15.7)
sum(Head)
#Mu???n tính t???ng c???a Head mà lo???i ra các bi???n NA
sum(Head, na.rm=TRUE)
#na: not available;
sum(Head, na.rm=FALSE)

#T???o ra 1 vector có chi???u dài là 32 (4x8)
Birdata <-c(Wingcrd, Tarsus, Head, Wt)
Birdata
Id <-c(1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4)
Id <- rep(c(1,2,3,4), each=8)
Id <- rep(1:4, each=8)
a<-seq(from=1, to=4, by=1)
a
rep(a, each=8)
VarNames <- c("Wingcrd?, "Tarsus", "Head", "Wt")

