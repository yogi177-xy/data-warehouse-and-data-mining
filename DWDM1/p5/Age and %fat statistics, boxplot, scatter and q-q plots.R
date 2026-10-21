age <- c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)
fat <- c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,34.6,42.5,28.8,33.4,30.2,34.1,32.9,41.2,35.7)

# (a) mean, median, standard deviation
cat("Age: mean =", mean(age), " median =", median(age), " sd =", sd(age), "\n")
cat("%fat: mean =", mean(fat), " median =", median(fat), " sd =", sd(fat), "\n")

# (b) boxplots
par(mfrow = c(1, 2))
boxplot(age, main = "Boxplot of Age", ylab = "Age", col = "lightblue")
boxplot(fat, main = "Boxplot of %Fat", ylab = "%Fat", col = "lightgreen")

# (c) scatter plot and q-q plot
par(mfrow = c(1, 2))
plot(age, fat, main = "Scatter Plot: Age vs %Fat",
     xlab = "Age", ylab = "%Fat", pch = 19, col = "blue")
qqplot(age, fat, main = "Q-Q Plot: Age vs %Fat",
       xlab = "Age quantiles", ylab = "%Fat quantiles", pch = 19)
par(mfrow = c(1, 1))   # reset layout