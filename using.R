# B�i 1
# C�u a. 
answer1 <- 0
for (j in 3:5){ answer1 <- j+answer1 }
answer1 
# C�u b.
answer2<- 10
for (j in 3:5){ answer2 <- j+answer2 }
answer2
# C�u c.
answer3 <- 10
for (j in 3:5){ answer3 <- j*answer3 }
answer3

# B�i 2
a = prod(3:5, start = 10)
a

# B�i 3
#C???ng t???t c??? c�c s??? t??? 1 d???n 100 b???ng hai c�ch kh�c nhau:d�ng cho v� d�ng t???ng. B�y gi??? �p d???ng 
sum(1:100)
a <- 0

for (i in 1:100){
  a <- a + i
}
a
# H�m t�nh t???ng t??? 1:100
sum_sequences <- function(x){
  x<-0
  for (i in 1:100){
    x <- x + i}
  return(x)
}
sum_sequences(x)

# B�i 4: Nh�n t???t c??? c�c s??? t??? 1 d???n 50 theo hai c�ch kh�c nhau: 
#D�ng for
answer4 <- 1
for (j in 1:50){ answer4 <- j*answer4 }
answer4
# D�ng pord
prod(1:50, start = 1)

# B�i 5 The volume of a sphere of radius r is given by 4r3/3. For spheres having radii 3, 4, 5, ..., 20 find thecorresponding volumes and print the results out in a table. 
#Use the technique of section 2.1.5 to construct a dataframe with columns radius and volume.

R <- 3:20
V <- (4*(R**3))/3
df <- data.frame(Radius=R, volume=V)
df

# B�i 6  Use sapply() to apply the function is.factor to each column of the supplied data frame tinting
#Foreach of the columns that are identified as factors, determine the levels. Which columns are ordered factors?[Use is.ordered()].
tinting <- df
sapply(tinting, factor)
sapply(tinting, levels)
sapply(tinting, ordered)



