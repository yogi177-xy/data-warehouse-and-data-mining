x <- c(18,18,18,20,20,20,20,20,20,20,21,21,21,21,25,25,25,25,25,28,28,30,30,30)
n <- length(x)                       # 24 values -> 3 bins of 8
bins <- split(x, rep(1:3, each = n/3))
print(bins)

# smoothing by bin means
by_mean <- lapply(bins, function(b) rep(mean(b), length(b)))
print(by_mean)

# smoothing by bin boundaries
by_boundary <- lapply(bins, function(b) {
  lo <- min(b); hi <- max(b)
  ifelse(abs(b - lo) <= abs(b - hi), lo, hi)
})
print(by_boundary)

# histogram using the equal-frequency bin edges
edges <- c(min(x), 20, 25, max(x))   # approximate bin edges from the bins above
hist(x, breaks = edges, col = "skyblue", main = "Equal-frequency bins", xlab = "Value")