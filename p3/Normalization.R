x <- c(200, 300, 400, 600, 1000)

# (a) min-max, range [0,1]
minmax <- (x - min(x)) / (max(x) - min(x))
minmax     # 0.000 0.125 0.250 0.500 1.000

# (b) z-score
z <- (x - mean(x)) / sd(x)    # sd() is the sample standard deviation
z
# For population sd, use:
# z <- (x - mean(x)) / sqrt(mean((x - mean(x))^2))