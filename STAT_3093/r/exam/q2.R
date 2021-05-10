x <- c(1.40, 1.30, 1.36, 1.38, 1.40, 1.20, 1.52, 1.70, 1.95)
n <- length(x)

# a) sample mean
x_bar <- mean(x)
print(x_bar)

#b) sample stdev
s <- sqrt(var(x))
print(s)

#c) standard error
std_err <- s / sqrt(n)

#d) 90% ci mean
alpha <- 1 - 0.9
t_val <- qt(alpha/2, n-1)
ci <- c(x_bar + t_val * (s/sqrt(n)), x_bar - t_val * (s/sqrt(n)))

#e) 90% ci stdev
chisq1 <- qchisq(alpha/2, n-1)
chisq2 <- qchisq(1 - alpha/2, n-1)
ci_var <- c((n-1)*s^2/chisq1,  (n-1)*s^2/chisq2)
ci_s <- sqrt(ci_var)

#f) proportion < 1.4m
t_val2 <- (1.40 - x_bar) / (s/sqrt(n))
p <- pt(t_val, n-1)

#g) 
alpha_g <- 1-0.95
z_g <- qnorm(alpha/2)
n_g <- (2 * z_g * s / 0.03)^2

#h)
mu_h <- 1.45
sigma_h <- 0.22
z_1_50 <- (1.50 - mu_h) / sigma_h
z_1_30 <- (1.30 - mu_h) / sigma_h
p_1_50 <- pnorm(z_1_50)
p_1_30 <- pnorm(z_1_30)
p_h <- p_1_50 - p_1_30

#i)
zi_1_50 <- (1.50 - mu_h) / (sigma_h / sqrt(4))
zi_1_30 <- (1.30 - mu_h) / (sigma_h / sqrt(4))
pi_1_50 <- pnorm(zi_1_50)
pi_1_30 <- pnorm(zi_1_30)
p_i <- pi_1_50 - pi_1_30