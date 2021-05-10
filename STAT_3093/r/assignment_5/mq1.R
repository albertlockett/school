# midterm Q1

x <- c(4.7, 0.1, 3.1, 3.0, 0.8, 1.8, 3.0, 2.4, 0.8, 3.7)
x <- sort(x)

# a)
x_min <- min(x)
x_max <- max(x)
x_med <- median(x)

x_l4 <- median(x[1:5])
x_u4 <- median(x[6:10 ])

# b)
x_bar <- mean(x)

# c)
s <- sqrt(var(x))


#2
n <- length(x)
alpha <- 0.1

#a)
ci_l1 <- x_bar - qt(alpha/2, n-1, lower.tail=FALSE) * s / sqrt(n)
ci_u1 <- x_bar + qt(alpha/2, n-1, lower.tail=FALSE) * s / sqrt(n)

#b)
pi_l1 <- x_bar - qt(alpha/2, n-1, lower.tail=FALSE) * s * sqrt(1 + 1/n)
pi_u1 <- x_bar + qt(alpha/2, n-1, lower.tail=FALSE) * s * sqrt(1 + 1/n)


# d)
t <- (x_bar - 2)/(s * sqrt(n))
tr <- qt(alpha/2, n-1, lower.tail=FALSE)