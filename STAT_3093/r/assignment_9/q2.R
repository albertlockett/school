library(purrr)

# a)

x <- c( 50,   71, 55, 50, 33, 58, 79, 26,  69, 44,  37, 70, 20,  45, 49)
y <- c(152, 1992, 48, 22,  2,  5, 35,  7, 269, 38, 171, 13, 43, 185, 25)
n <- length(x)

x_bar <- mean(x)
y_bar <- mean(y)

S_xy <- sum(x*y) - (sum(x)*sum(y)) / n
S_xx <- sum(x^2) - (sum(x))^2 / n

Beta_1 <- S_xy/S_xx
Beta_0 <- y_bar - Beta_1 * x_bar

SSE <- sum(y^2) - Beta_0*sum(y) - Beta_1*sum(x*y)
SST <- sum((y - y_bar)^2)

r_2 <- 1 - SSE / SST


# b)

s <- SSE / (n - 2)
s_Beta1 <- s / sqrt(S_xx)

Beta_1_0 <- 0
t <- (Beta_1 - Beta_1_0) / s

alpba <- 0.05
t_val = qt(alpba/2, n-2, lower.tail = FALSE)
reject <- t >= t_val || t <= -1 * t_val


#d)
# ? 


#e)

var_1 <- qt(0.10/2, n-2, lower.tail = FALSE)
ci <- c(Beta_1 - var_1, Beta_1 + var_1)
