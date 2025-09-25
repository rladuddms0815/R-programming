install.packages("jpeg")

library(jpeg)

image1 <- readJPEG("C:\\Users\\ye100\\OneDrive\\Desktop\\카피바라.jpg")
d <- dim(image1)

par(mfrow=c(1,1))
plot(as.raster(image1))

image2 <- image1[, d[2]:1, ]
plot(as.raster(image2))

image3 <- image1[d[1]:1, , ]
plot(as.raster(image3))

image4 <- image1[d[1]:1, d[2]:1, ]
plot(as.raster(image4))

image5 <- image1
image5[,,2:3] <- 0
plot(as.raster(image5))

image6 <- image1
image6[,,c(1,3)] <- 0
plot(as.raster(image6))

image7 <- image1
image7[,,1:2] <- 0
plot(as.raster(image7))

image8 <- apply(image1, c(1,2), mean)
image9 <- array(image8, dim = c(d[1], d[2], 3))
plot(as.raster(image9))

image10 <- array(dim = c(d[1], d[2]*2, 3))
image10[, 1:d[2], ] <- image1
image10[, (d[2]+1):(2*d[2]), ] <- image2
plot(as.raster(image10))

image11 <- array(dim = c(d[1], d[2]*2, 3))
image11[, 1:d[2], ] <- image3
image11[, (d[2]+1):(2*d[2]), ] <- image4
plot(as.raster(image11))

image12 <- array(dim = c(d[1]*2, d[2]*2, 3))
image12[1:d[1], , ] <- image10
image12[(d[1]+1):(2*d[1]), , ] <- image11
plot(as.raster(image12))

