# a)
x <- c(0.18, 0.20, 0.21, 0.21, 0.21, 0.22, 0.23, 
       0.23, 0.24, 0.24, 0.25, 0.28, 0.30, 0.37)
y <- c(0.46, 0.70, 0.41, 0.45, 0.55, 0.44, 0.24, 
       0.47, 0.22, 0.80, 0.88, 0.70, 0.72, 0.74)
n <- length(x)

S_xy <- sum(x)*sum(y)/n

x_bar <- mean(x)
y_bar <- mean(y)

r <-  sum((x - x_bar)*(y - y_bar)) /
      (sqrt(sum((x - x_bar)^2)) * sqrt(sum((y - y_bar)^2)))

t <- r * sqrt(n - 2) / sqrt(1 - r^2)

alpha <- 0.10

t_val <- qt(alpha/2, n-2,lower.tail=FALSE)
reject = t >= t_val || t <= -1 * t_val

# b)
# I don't know