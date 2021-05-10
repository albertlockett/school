















#Active smokers: 
xa <- c(490, 418, 405, 328, 700, 292, 295, 272, 240, 232)
#Passive smokers:
xp <- c(254, 219, 287, 257, 271, 282, 148, 273, 350, 293)
# Nonsmokers:
xn <- c(158, 163, 153, 207, 211, 159, 199, 187, 200, 213)

I <- 3
J <- length(xa)

A <- I-1
B <- I*(J-1)


MSTR <- 83530
F <- 10.45

D <- MSE <- MSTR/F

C <- MSE * I * (J-1)