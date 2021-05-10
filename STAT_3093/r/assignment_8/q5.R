m1 <- c(13, 17,  7, 14);     h1 <- rep("1", length(m1));
m2 <- c(21, 13, 20, 17);     h2 <- rep("2", length(m2));
m3 <- c(18, 15, 20, 17);     h3 <- rep("3", length(m3));
m4 <- c( 7, 11, 18, 10);     h4 <- rep("4", length(m4));
m5 <- c( 6, 11, 15,  8);     h5 <- rep("5", length(m5));

measure <- c(d1, d2, d3, d4, d5)
hormone <- c(h1, h2, h3, h4, h5)

vals <- data.frame(measure, hormone)

anova_result <- anova(lm(measure~ hormone, data=vals))
print(anova_result)

x1 <- mean(m1)
x2 <- mean(m2)
x3 <- mean(m3)
x4 <- mean(m4)
x5 <- mean(m5)

w <- qtukey(0.05,5,15,lower.tail = F) * sqrt(14.367 /4)
