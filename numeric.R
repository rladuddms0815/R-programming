a <- 1
b <- 10
m <- 100
x <- runif(m,a,b)

n <- 5
d <- (b-a)/n

#(1)
cn1 <-table(cut(x,breaks=seq(a,b,length=(n+1))))
#(2)
for(i in 1:n){
  cn2[i] <- sum((i-1)*d+a<x & x<=i*d+a)
}
#(3)
cn3 <- numeric(n)
for(y in x){
  k <- floor((y-a)/d)+1
  cn3[k] <- cn3[k]+1
}
