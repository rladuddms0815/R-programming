f1 <- function(){
  for(i in 1:1000){
    x <- sample(1:6,100,replace=T)
    y <- table(x)
    barplot(y)
    Sys.sleep(1)
  }
}
f1()

f2 <- function(){
  for(i in 1:1000){
    x <- runif(300)
    y <- runif(300)
    plot(x,y,type="p",pch=16)
    Sys.sleep(1)
  }
}
f2()

# 로또 번호 모의실험험
f3 <- function(){
  x <- c()
  for(i in 1:1064){
    x1 <- sample(1:45,6,replace=F)
    x <- c(x,x1)
  }
  y <- table(x)
  barplot(y)
}
f3()

f4 <- function(){
  for(i in 1:1000){
    x <- c()
    for(i in 1:1064){
      x1 <- sample(1:45,6,replace=F)
      x <- c(x,x1)
    }
    y <- table(x)
    barplot(y)
    Sys.sleep(1)
  }
}
f4()
