marks <- sort(c(55,60,71,63,55,65,50,55,58,59,61,63,65,67,71,72,75))
n <- length(marks)

# (a) equal-frequency (equi-depth): 3 bins with roughly equal counts
bin_id <- ceiling(seq_along(marks) / (n / 3))
eq_freq <- split(marks, bin_id)
print(eq_freq)

# (b) equal-width: 3 bins of equal range
width <- (max(marks) - min(marks)) / 3
breaks <- seq(min(marks), max(marks), by = width)
eq_width <- split(marks, cut(marks, breaks = breaks, include.lowest = TRUE))
print(eq_width)

# Histograms
par(mfrow = c(1, 2))
hist(marks, breaks = breaks, col = "skyblue",
     main = "Equal-width bins", xlab = "Marks")
hist(marks, breaks = quantile(marks, probs = seq(0, 1, length.out = 4)),
     col = "orange", main = "Equal-frequency bins", xlab = "Marks")
par(mfrow = c(1, 1))