data <- c(
  105.6,  90.9, 91.2,  96.9,  96.5, 91.3,
  101.1, 105.0, 99.6, 107.7, 103.3, 92.4
);

# calcuate test statistic value
n <- length(data);
x_bar <- mean(data);
s <- sqrt(var(data));
mu_0 <- 100;
t <- (x_bar - mu_0)/(s/sqrt(n))

# calculate rejection region
alpha <- 0.05;
t_alpha <- qt(alpha/2, n-1, lower.tail=FALSE)

# check whether should reject
reject_h0 <- t > t_alpha || t < -1*t_alpha
