# a)
m <- 6
s1 <- 11.3
n <- 8
s2 <- 8.3
sp2 <- (m-1)*s1^2/(m + n - 2) + (n -1)*s2^2/(m + n - 2)

# b)

x_bar <- 40.3
y_bar <- 21.4

t <- (x_bar - y_bar) / sqrt(sp2*(1/m + 1/n))

alpha <- 0.05
t_val <- qt(alpha/2, m + n -2)

reject <- t > t_val || t < -1*t_val
