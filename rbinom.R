it <- 1000 # 반복 수
# (1) 동전을 100번 던졌을 때 앞면이 나온 횟수 (반복 수=1,000)
y <- rbinom(it,100,0.5)
hist(y)
p <- y/100
hist(p, xlim=c(0.3,0.7))

# (2) 동전을 1,000번 던졌을 때 앞면이 나온 횟수 (반복 수=1,000)
y <- rbinom(it,1000,0.5)
hist(y)
p <- y/1000
hist(p, xlim=c(0.3,0.7))

# (4.1) 동전을 1,000번 던졌을 때 앞면이 나온 비율 변화
nlength <- 1000
x <- 1:nlength
#coin <- sample(c(0,1),nlength,replace=T)
coin <- rbinom(nlength,1,0.5)
csum <- cumsum(coin)
prob <- csum/x
plot(prob, type="l", ylim=c(0,1))
abline(a=0.5, b=0, col="red")

# (4.2) 동전을 1,000번 던졌을 때 앞면이 나온 비율 (반복 수=100)
nlength <- 1000
nseries <- 100
x <- 1:nlength
y <- matrix(0,nrow=nlength,ncol=nseries)
for(i in 1:nseries){
  coin <- sample(c(0,1),nlength,replace=T)
  csum <- cumsum(coin)
  prob <- csum/x
  y[,i] <- prob
}
z <- ts(y)
plot(z,plot.type="single",col=1:100)
abline(a=0.5, b=0, col="red")
hist(y[nlength,])


# (5.1) 동전던지기 게임 - 자본금의 변화
nlength <- 1000
nseries <- 100
x <- 1:nlength
y <- matrix(0,nrow=nlength,ncol=nseries)
for(i in 1:nseries){
  coin <- sample(c(0,1),nlength,replace=T)
  csum <- cumsum(coin)
  money <- csum*2-x
  y[,i] <- money
}
z <- ts(y)
plot(z,plot.type="single",col=1:100)
abline(a=0.5, b=0, col="red")
hist(y[nlength,])


