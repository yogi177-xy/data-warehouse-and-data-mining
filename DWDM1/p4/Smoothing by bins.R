data <- c(11,13,13,15,15,16,19,20,20,20,21,21,22,23,24,30,40,45,45,45,71,72,73,75)
data <- sort(data)
bin_size <- 4
bins <- split(data, ceiling(seq_along(data) / bin_size))
print(bins)

# a) smoothing by bin mean
by_mean <- lapply(bins, function(b) rep(round(mean(b), 2), length(b)))

# b) smoothing by bin median
by_median <- lapply(bins, function(b) rep(median(b), length(b)))

# c) smoothing by bin boundaries
by_boundary <- lapply(bins, function(b) {
  lo <- min(b); hi <- max(b)
  ifelse(abs(b - lo) <= abs(b - hi), lo, hi)
})

cat("\nBin mean:\n");       print(by_mean)
cat("\nBin median:\n");     print(by_median)
cat("\nBin boundaries:\n"); print(by_boundary)