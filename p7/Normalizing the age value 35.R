age <- c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)
v <- 35

# (i) min-max to [0,1]
minmax <- (v - min(age)) / (max(age) - min(age))
minmax            # 0.3158

# (ii) z-score with the given sd = 12.94
z <- (v - mean(age)) / 12.94
z                 # -0.88

# (iii) decimal scaling
j <- ceiling(log10(max(abs(age))))   # smallest j so that max/10^j < 1
dec <- v / 10^j
dec               # 0.35