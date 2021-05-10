

















xv <- c(161, 203, 235, 176, 201, 188)
m <- length(xv)

xa <- c(157, 207, 198, 161, 234, 197)
n <- length(xa)

xv_bar <- mean(xv)
xa_bar <- mean(xa)

sv <- sqrt(var(xv))
sa <- sqrt(var(xa))

t <- (xv_bar - xa_bar) / sqrt(sv^2/m + sa^2/n)

sev <- sv/sqrt(m)
sea <- sa/sqrt(n)
v <- (sev^2 - sea^2)^2/(sev^2/(m-1) + sea^2/(n-1))

p <- pt(t, v, lower.tail=FALSE)