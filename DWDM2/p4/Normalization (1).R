# Feature F example: min = 50000, max = 100000, v = 80000
v <- 80000
(v - 50000) / (100000 - 50000)    # 0.6

# Group of data
x <- c(200, 300, 400, 600, 1000)

# (a) min-max in [0,1]
(x - min(x)) / (max(x) - min(x))  # 0.000 0.125 0.250 0.500 1.000

# (b) z-score
(x - mean(x)) / sd(x)