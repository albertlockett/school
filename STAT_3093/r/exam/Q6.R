x <- c(90, 230, 240, 260, 330, 400, 410, 550, 590, 610, 700, 790)
y <- c(0.11, 0.20, 0.13, 0.15, 0.18, 0.16, 0.23, 0.18, 0.23, 0.26, 0.32, 0.37)

n <- length(x)

#a)

Sxy <- sum(x * y) - sum(x) * sum(y)/n

Sxx <- sum(x^2) - sum(x)^2/n

b1 <- Sxy/Sxx

y_bar <- mean(y)
x_bar <- mean(x)

b0 <- y_bar - b1 * x_bar


#b)
SSE <- sum(y^2) - b0 * sum(y) - b1*sum(x*y)
s <- sqrt(SSE/(n-2))

alpha <- 1 - 0.90
t_val <- qt(alpha/2, n/2)

ci <- c(b1 + t_val*s/sqrt(Sxx), b1 - t_val*s/sqrt(Sxx))

# c)
t <- b1 / (s / sqrt(Sxx))

p <- pt(t, n-2, lower.tail=FALSE)


#d)
x_bar <- mean(x)
yd <- b1 * 720 + b0
s_yd <- sqrt(1/n + (720 - x_bar)^2/Sxx)
t_vald <- qt(0.05/2, n-2)
cid <- c(yd + t_vald*s_yd, yd - t_vald*s_yd)


#e)
y_bar <- mean(y)
SST <- sum((y - y_bar)^2)
r <- 1 - SSE/SST
