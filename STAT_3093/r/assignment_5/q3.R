sigma <- 10;
n <- 36;
mu <- 120;
x <- 115.20;
z <- (115.20 - 120) / (sigma/sqrt(n))
alpha <-pnorm(z)
z2 <- qnorm(0.001)
x2 <- z2 * sigma / sqrt(n) + mu