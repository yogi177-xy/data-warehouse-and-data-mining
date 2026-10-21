x <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)       # phones sold
y <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110) # money

plot(x, y,
     main = "Mobile Phones Sold vs Money",
     xlab = "Number of Mobile Phones Sold",
     ylab = "Money",
     pch = 19, col = "red")
abline(lm(y ~ x), col = "blue")   # optional trend line