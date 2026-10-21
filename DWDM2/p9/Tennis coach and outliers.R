points <- c(12, 15, 14, 16, 18, 20, 17, 15, 13, 19, 16, 45)   # example data
players <- paste("Player", 1:12)

boxplot(points, main = "Points Scored by Tennis Players",
        ylab = "Points", col = "lightyellow")

# Identify the outlier players
Q1 <- quantile(points, 0.25); Q3 <- quantile(points, 0.75); iqr <- IQR(points)
lower <- Q1 - 1.5 * iqr; upper <- Q3 + 1.5 * iqr
players[points < lower | points > upper]   # Player 12 (45 points)
boxplot.stats(points)$out                  # same idea in one line