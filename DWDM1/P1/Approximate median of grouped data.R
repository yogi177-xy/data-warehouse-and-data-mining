lower <- c(1, 5, 15, 20, 50, 80)
upper <- c(5, 15, 20, 50, 80, 110)
freq  <- c(200, 450, 300, 1500, 700, 44)

N    <- sum(freq)
cf   <- cumsum(freq)
idx  <- which(cf >= N/2)[1]            # median class
L    <- lower[idx]
CFb  <- ifelse(idx == 1, 0, cf[idx-1]) # cumulative freq before median class
f    <- freq[idx]
w    <- upper[idx] - lower[idx]

median_val <- L + ((N/2 - CFb) / f) * w
cat("Approximate median =", median_val, "\n")   