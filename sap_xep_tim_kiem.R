# S???p x???p ch???n
selection_sort <- function(x) {
  n <- length(x)
  for (i in 1:(n-1)) {
    for(j in (i+1)) {
      if(x[j]<x[i]){
        temp <- x[i]
        x[i] <- x[j]
        x[j] <- temp
      }
    }
  }
  return(x)}
# Ki???u d??? quy
selfsort <- function(x){
  if(length(x)>1){
    min <- which.min(x)
    c(x[min], selfsort(
      x[-min]))
  }else x
}

# S???p x???p chèn
insertion_sort <- function(x){
  n <- length(x)
  for(i in 2:n){
    temp <- x[i]
    j = i - 1
    while((x[j]>temp)&&(j> 0)){
      x[j+1]= x[j]
      j= j-1
    }
    x[(j+1)]= temp
  }
  return(x)
} 

# S???p x???p n???i b???t(Bubble_Sort) 
Bubble_sort <- function(x){
  n<-length(x)
  for(j in 1:(n-1)){
    for(i in 1:(n-j)){
      if(x[i]>x[i+1]){
        temp<-x[i]
        x[i]<-x[i+1]
        x[i+1]<-temp
      }
    }
  }
  return(x)
}
x <- c(6, 45, 27, 37, 25, 58, 22, 86, 15, 97)
Bubble_sort(x)

# Quick Sort
quick_sort<-function(x)
{
  if(length(x)<=1) return(x)
  i<-x[1]
  j<-x[-1]
  i_less<-quick_sort(j[j<i])
  i_greater<-quick_sort(j[j>=i])
  return(c(i_less,i,i_greater))
}


quick_sort(c(5,4,12,13,45, 3,8,85))



