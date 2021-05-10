# a)
Beta_1 <- 0.4103377
Beta_0 <- 72.958547
n <- 20

sum_y <- 1574.8
y_bar <- sum_y/n

x_star <- 125

sum_x <- 2817.9
x_bar <- sum_x / n

S_xx <- 18921.8295
s <- 0.665
s_yhat <- s * sqrt(1/n + (x_star - x_bar)^2/S_xx)

y_hat <- Beta_0 + Beta_1 * x_star

alpha <- 0.10

t_val <- qt(alpha/2, n-1, lower.tail=FALSE)
ci <- c(y_hat + t_val*s_yhat, y_hat - t_val* s_yhat)


# b)
pi <- c(
  y_hat - t_val * sqrt(s^2 + s_yhat^2),
  y_hat + t_val * sqrt(s^2 + s_yhat^2)
)

# need to give reason why this is larger than ci