n <- 73;
x_bar <- 18.6;
S <- 8.6;
mu_0 <- 20;
alpha <- 0.1;
z_alpha <- qnorm(0.1)
z <- (x_bar - mu_0)/(S/sqrt(n))
reject_h0 <- z < z_alpha # TRUE