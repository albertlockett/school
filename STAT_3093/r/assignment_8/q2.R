epoxy <- c(1.75, 2.12, 2.05, 1.97)
mma_p <- c(1.77, 1.59, 1.70, 1.69)

m <- length(epoxy)
n <- length(mma_p)

var_1 <- var(epoxy)
var_2 <- var(mma_p)

s1 <- sqrt(var_1)
s2 <- sqrt(var_2)

alpha <- 0.10
ci_1 <- (s1/s2) * 1/(qf(alpha/2, m-1, n-1))
ci_2 <- (s1/s2) * (qf(alpha/2, m-1, n-1))