s1 <- 54
s2 <- 32

m <- 23
n <- 20

f <- s1^2/s2^2

alpha <- 0.05

F_val <- qf(alpha, m-1, n-1)
reject <- f >= F_val