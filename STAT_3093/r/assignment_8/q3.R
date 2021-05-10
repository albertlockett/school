SST <- 310500.76
MSE <- 14713.69

I <- 4
J <- 5

SSE <- MSE * I * (J-1)

SSTr <- SST - SSE

MSTr <- SSTr / (I-1)

f <- MSTr / MSE

Fval <- pf(f, I-1, I*(J-1))

qf