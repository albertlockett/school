vals <- c(
  19.75, 21.25, 21.5, 22.50, 23.25, 23.5, 24.00, 24, 24.25, 
  24.5,  25.00, 26.0, 26.25, 26.25, 27.0, 27.75, 28, 28.00, 
  28.25, 30
)
n <- length(vals)
s2 <- var(vals)
alpha <- 0.01
chi_high <- qchisq(alpha/2, df=n-1)
chi_low <- qchisq(1 - alpha/2, df=n-1)
lower <- (n-1)*s2/chi_low
upper <- (n-1)*s2/chi_high

upper_s <- sqrt(upper)
lower_s <- sqrt(lower)